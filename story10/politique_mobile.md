# US10 — Politique de sécurité mobile

> **EN TANT QUE** responsable sécurité
> **JE VEUX** proposer une politique mobile
> **AFIN DE** encadrer le développement et l'usage des apps mobiles

---

## 1. Objet et portée

La présente politique définit les exigences de sécurité applicables :
- aux **terminaux mobiles** (smartphones, tablettes) utilisés dans un cadre professionnel (COPE et BYOD encadré) ;
- aux **applications mobiles internes** développées ou commanditées par l'organisation ;
- aux **applications tierces** installées sur les terminaux d'entreprise.

Elle s'applique à l'ensemble des collaborateurs, prestataires et sous-traitants.

## 2. Référentiels

- **OWASP MASVS** (Mobile Application Security Verification Standard) v2.x
- **OWASP MSTG** (Mobile Security Testing Guide)
- **ANSSI — Recommandations de sécurité relatives aux ordiphones**
- **ISO/IEC 27001:2022** Annexe A.8 (sécurité des actifs)
- **RGPD** pour les traitements de données personnelles

## 3. Classification des usages

| Profil | Données traitées | Exemples |
|---|---|---|
| **Public** | Aucune donnée d'entreprise | App marketing publique |
| **Interne** | Données non sensibles | App de communication interne |
| **Confidentiel** | Données métier, RH, finance | App banking client (cas Nickel) |
| **Critique** | Authentification forte, données financières/santé | Validation de virements |

Les mesures techniques croissent avec la criticité.

## 4. Exigences pour les développeurs (apps internes)

### 4.1 Cycle de développement
- Sécurité intégrée dès la conception (**Security-by-Design**) ; revue de threat modeling pour toute nouvelle app **Confidentiel**/**Critique**.
- Revue de code obligatoire avant merge en `main`.
- Analyse SAST automatique sur chaque PR (**MobSF**, SonarQube, Semgrep).
- Test DAST/pentest avant chaque release majeure.

### 4.2 Stockage et secrets
- ❌ **Aucun secret en clair** dans `strings.xml`, `BuildConfig`, `assets/`, `.properties` versionnés.
- ✅ Secrets gérés via **Android Keystore** (clés cryptographiques) ou récupérés via API authentifiée.
- ✅ Restriction de la clé Google API par **package name + SHA-1 de signature** dans la console GCP.

### 4.3 Communications réseau
- ❌ Trafic en clair interdit : `android:usesCleartextTraffic="false"` (par défaut depuis API 28).
- ✅ TLS 1.2 minimum, idéalement 1.3.
- ✅ **Certificate pinning** obligatoire pour les apps **Confidentiel**/**Critique**.
- ✅ `Network Security Config` versionné et restrictif.

### 4.4 Cryptographie
- ❌ MD5, SHA-1, DES, RC4 interdits.
- ❌ AES en mode ECB ; CBC sans HMAC interdit (Padding Oracle).
- ✅ AES-GCM ou ChaCha20-Poly1305 pour le chiffrement authentifié.
- ✅ `SecureRandom` au lieu de `java.util.Random`.

### 4.5 Manifest
- `android:exported` explicite pour chaque composant ; valeur `true` justifiée par un usage légitime.
- `android:debuggable="false"` en release.
- `android:allowBackup="false"` pour les apps **Confidentiel**+.
- minSdk ≥ 24 (Android 7.0) — fin de support des versions exposées à des CVE non patchées.

### 4.6 Permissions
- Principe de **moindre privilège** : ne demander que les permissions strictement nécessaires.
- Justifier toute permission classée `dangerous` (CAMERA, LOCATION, CONTACTS, EXTERNAL_STORAGE…) dans la fiche fonctionnelle.

### 4.7 Distribution
- Signature avec un **keystore de production** stocké en HSM ou coffre-fort numérique (jamais dans le dépôt Git).
- Schémas de signature **v2 + v3** activés.
- Diffusion via Google Play (Play Integrity API) ou MDM (apps internes) ; pas de sideload public.

## 5. Exigences pour les utilisateurs

### 5.1 Authentification du terminal
- Code PIN ≥ 6 chiffres ou biométrie + code de secours.
- Verrouillage automatique ≤ 5 minutes.
- Wipe automatique après 10 tentatives échouées.

### 5.2 Système d'exploitation
- Mises à jour OS et patches de sécurité installés sous **30 jours** maximum.
- **Root / jailbreak interdit** sur tout terminal d'entreprise.
- Détection de root coté apps **Confidentiel**/**Critique**.

### 5.3 Applications
- Installation depuis le Play Store ou le store d'entreprise (MDM) uniquement.
- Sources inconnues désactivées.
- Inventaire des apps installées remonté au MDM.

### 5.4 Réseau
- Wi-Fi : interdiction des réseaux publics ouverts pour les apps **Confidentiel**+.
- VPN d'entreprise obligatoire pour l'accès aux ressources internes.
- Bluetooth/NFC désactivés par défaut hors usage métier.

## 6. Gestion des incidents

- Tout terminal **perdu/volé** → déclaration sous **24 h** au RSSI ; wipe distant via MDM immédiat.
- Toute fuite de données suspectée → notification CNIL sous **72 h** (RGPD art. 33) si données personnelles.
- Toute compromission d'app → retrait du store, révocation des clés, communication aux utilisateurs.

## 7. Conformité et audit

- Revue annuelle de la politique par le RSSI.
- Audit technique des apps **Confidentiel**/**Critique** au minimum annuel.
- Indicateurs (KPI) :
  - % de terminaux conformes (chiffrement, OS patché, root absent)
  - Temps moyen entre une CVE critique et le déploiement du patch
  - Nombre de vulnérabilités HIGH non corrigées > 30 jours

## 8. Sanctions

Le non-respect de cette politique peut entraîner des sanctions disciplinaires et, en cas de mise en danger des données, des poursuites au titre du RGPD ou du Code pénal.

---

**Validation** : RSSI · DPO · DSI
**Version** : 1.0 — 2026-04-29
**Prochaine revue** : 2027-04-29

## DoD ✅
`politique_mobile.md` livré.
