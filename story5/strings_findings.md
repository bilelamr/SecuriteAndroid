# US5 — Analyse de `strings.xml` — Findings

> **EN TANT QUE** analyste sécurité
> **JE VEUX** analyser `strings.xml`
> **AFIN DE** repérer secrets ou informations critiques en clair

## Source
`story4/app_src/res/values/strings.xml` (172 lignes), issue de la décompilation Apktool.

## Identification de l'application
Malgré le nom du fichier `Application WeTransfer.apk`, l'analyse révèle :
- `app_name` = **Nickel** (banque française, filiale BNP Paribas)
- `build_config_package` = `com.fpe.comptenickel`
- `project_id` = `application-client-nickel`

L'APK n'est **pas** WeTransfer mais bien le client mobile Nickel.

## Findings critiques

| # | Clé | Extrait (≤25 mots) | Risque | Sévérité |
|---|---|---|---|---|
| F1 | `google_api_key` | `AIzaSyBTgztvImsUfMWDa41PCrDWAj7dmyIDhUg` | Clé API Google Firebase exposée. Permet l'appel aux services Firebase si pas de restrictions IP/package. | **HAUTE** |
| F2 | `google_crash_reporting_api_key` | `AIzaSyBTgztvImsUfMWDa41PCrDWAj7dmyIDhUg` | Même clé que F1, dupliquée pour Crashlytics. Idem. | **HAUTE** |
| F3 | `firebase_database_url` | `https://application-client-nickel.firebaseio.com` | URL Realtime Database. À tester pour accès public anonyme (cf. US8). | **HAUTE** |
| F4 | `google_storage_bucket` | `application-client-nickel.appspot.com` | Bucket Cloud Storage. Risque de listing/téléchargement public si règles laxistes. | **MOYENNE** |
| F5 | `google_app_id` | `1:717748501407:android:e0cdeb712e27275d` | Identifiant Firebase de l'app. Non secret en soi mais utile à un attaquant. | **FAIBLE** |
| F6 | `gcm_defaultSenderId` / `GCM_PROJECT_NUMBER` | `717748501407` / `246766419677` | Sender IDs FCM. Non secret mais exposent l'infra de notifications. | **FAIBLE** |
| F7 | `default_web_client_id` | `717748501407-v621tmfvqd7etdouc3df5vuv31scle0g.apps.googleusercontent.com` | OAuth client web. Non secret mais utilisable pour usurper le contexte d'auth. | **FAIBLE** |
| F8 | `ACCOUNT_ENDPOINT` | `https://api.nickel.eu/customer-banking-api` | Endpoint banking de production. Cible directe pour pentest API. | **INFO** |
| F9 | `CUSTOMER_AUTHENTICATION_ENDPOINT` | `https://api.nickel.eu/customer-authentication-api` | Endpoint d'auth de production. Idem. | **INFO** |
| F10 | `PERSONAL_SPACE_API_ENDPOINT` | `https://api.nickel.eu/personal-space-api` | Endpoint API de production. Idem. | **INFO** |
| F11 | `ENVIRONMENT` | `production` | Confirme que ce build cible la prod (pas un pré-prod). | **INFO** |
| F12 | `PUSHWOOSH_APPID` | `DDF11-D1BF9` | App ID Pushwoosh. À vérifier si combiné avec une API key permet d'envoyer des notifs. | **MOYENNE** |
| F13 | `com.crashlytics.android.build_id` | `9ad6d741-4e10-4abd-9f12-163a0e3fb0b2` | Build UUID Crashlytics. Non secret. | **INFO** |
| F14 | `project_id` | `application-client-nickel` | Confirme l'identité du projet GCP/Firebase. | **INFO** |

## Symptômes React Native
Les chaînes `catalyst_*` (ex. `catalyst_debugjs`, `catalyst_live_reload`) et `rn_tab_description` indiquent que **l'app est développée en React Native**. Cela élargit la surface d'attaque (bundle JS chargeable, hot-reload si activé en debug).

## Recommandations
1. **Restreindre la clé API Google** par package name + SHA-1 de signature dans la console Google Cloud (`API & Services → Credentials → Application restrictions`).
2. **Auditer les règles Firebase Realtime Database** (`.read` / `.write`) — voir US8.
3. **Auditer les règles du bucket** `application-client-nickel.appspot.com`.
4. Ne **jamais** stocker de vrais secrets (clés serveur, JWT signing key) dans `strings.xml` : tout y est trivialement extractible avec `apktool` ou `unzip`.
5. Pour les secrets nécessaires côté client, utiliser le **Android Keystore** ou les récupérer via une API authentifiée.

## DoD ✅
`strings_findings.md` livré, extraits ≤25 mots, risques associés.
