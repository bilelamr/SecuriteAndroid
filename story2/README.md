# US2 — Analyse automatisée avec MobSF

> **EN TANT QUE** analyste
> **JE VEUX** scanner l'APK avec MobSF
> **AFIN DE** identifier rapidement métadonnées et vulnérabilités

## Stack
- MobSF v4.5.0 (image Docker `opensecurity/mobile-security-framework-mobsf:latest`)
- Lancement :
```bash
docker run -d --name mobsf -p 8000:8000 opensecurity/mobile-security-framework-mobsf:latest
```
- API exposée sur `http://127.0.0.1:8000` — clé REST récupérée dans les logs du conteneur.

## Workflow API
```bash
# 1. Upload
curl -F "file=@Application WeTransfer.apk" -H "Authorization: <APIKEY>" \
  http://127.0.0.1:8000/api/v1/upload
# → {"hash": "262caf29e05340477207d87c181b4a4d", ...}

# 2. Scan
curl -X POST -H "Authorization: <APIKEY>" -d "hash=<HASH>" \
  http://127.0.0.1:8000/api/v1/scan -o scan_resp.json

# 3. PDF
curl -X POST -H "Authorization: <APIKEY>" -d "hash=<HASH>" \
  http://127.0.0.1:8000/api/v1/download_pdf -o mobSF_report.pdf

# 4. JSON brut
curl -X POST -H "Authorization: <APIKEY>" -d "hash=<HASH>" \
  http://127.0.0.1:8000/api/v1/report_json -o mobsf_report.json
```

## Métadonnées de l'APK (selon MobSF)

| Champ | Valeur |
|---|---|
| Application | **Nickel** (`com.fpe.comptenickel`) |
| Version | 2.12.0 |
| MD5 | `262caf29e05340477207d87c181b4a4d` |
| SHA-1 | `d51b3e64593ba653428a12499baa700170650c04` |
| SHA-256 | `f01f08c8b6e2fe4612e81bc7e3a3ba9440dad0d7a962f4e67640390dd721d528` |
| Main Activity | `com.fpe.comptenickel.MainActivity` |
| minSdk | 19 (Android 4.4) |

## Résumé des vulnérabilités

### Manifest — sévérité **HAUTE**
| Règle | Description |
|---|---|
| `vulnerable_os_version` | minSdk=19 → installable sur Android 4.4 (KitKat) non patché |
| `clear_text_traffic` | `android:usesCleartextTraffic="true"` → trafic HTTP non chiffré autorisé |

### Manifest — sévérité **WARNING**
- `RNDeviceReceiver` exporté sans protection (`android:exported=true`)
- `PushwooshSharedDataProvider` Content Provider exporté
- Plusieurs services Pushwoosh / Firebase exposés via `intent-filter`
- Plusieurs permissions custom déclarées avec un `protectionLevel` non défini

### Code — sévérité **HAUTE**
- `cbc_padding_oracle` : utilisation d'AES en mode CBC sans authentification → vulnérable à un Padding Oracle Attack

### Code — sévérité **WARNING**
- `android_md5` : usage de MD5 (algorithme cassé)
- `android_read_write_external` : lecture/écriture sur le stockage externe (vie privée)
- `android_sql_raw_query` : requêtes SQL brutes (risque d'injection)
- `android_hardcoded` : valeurs hardcodées sensibles
- `android_insecure_random` : usage de `java.util.Random` au lieu de `SecureRandom`
- `android_temp_file` : création de fichiers temporaires sans sécurisation

### Code — sévérité **GOOD**
- `android_detect_root` : détection de root présente
- `android_ssl_pinning` : SSL pinning détecté

### Permissions dangereuses demandées
- `READ_CONTACTS`
- `WRITE_EXTERNAL_STORAGE`

### Secrets détectés (extraits — voir aussi US5)
- `firebase_database_url` : `https://application-client-nickel.firebaseio.com`
- `google_api_key` : `AIzaSyBTgztvImsUfMWDa41PCrDWAj7dmyIDhUg`
- `google_crash_reporting_api_key` : (idem)
- Endpoints prod Nickel (`api.nickel.eu/...`)

### Trackers (3 détectés / 432 connus)
- Google Crashlytics (crash reporting)
- Google Firebase Analytics (analytics)
- Pushwoosh (notifications push)

## Livrables

| Fichier | Description |
|---|---|
| `mobSF_report.pdf` | Rapport PDF officiel MobSF (856 KB) |
| `mobsf_report.json` | Sortie API JSON brute |
| `scan_resp.json` | Réponse de l'endpoint `/scan` |
| `upload_resp.json` | Réponse de l'endpoint `/upload` |

## DoD ✅
- `mobSF_report.pdf` livré
- Résumé des vulnérabilités ci-dessus
