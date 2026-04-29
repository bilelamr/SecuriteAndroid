# US7 — Signature de l'APK

> **EN TANT QUE** testeur
> **JE VEUX** signer l'APK recompilé
> **AFIN DE** pouvoir l'installer sur un émulateur ou terminal

## Étape 1 — Génération du keystore de debug
```bash
keytool -genkeypair -v \
  -keystore debug.keystore \
  -alias tpkey -keyalg RSA -keysize 2048 -validity 10000 \
  -storepass tppass1 -keypass tppass1 \
  -dname "CN=TP Securite Android, OU=ESIEE-IT, O=ESIEE-IT, L=Paris, S=IDF, C=FR"
```
- Algorithme : RSA 2048 bits
- Validité : 10 000 jours
- Alias : `tpkey`

> ⚠ Keystore de **debug uniquement** pour le TP. À **ne jamais** réutiliser en production.

## Étape 2 — Alignement (zipalign)
```bash
zipalign -p -f 4 rebuilt.apk rebuilt_aligned.apk
```
Requis avant signature v2/v3.

## Étape 3 — Signature avec apksigner
```bash
apksigner sign \
  --ks debug.keystore --ks-key-alias tpkey \
  --ks-pass pass:tppass1 --key-pass pass:tppass1 \
  --out rebuilt_signed.apk \
  rebuilt_aligned.apk
```

## Étape 4 — Vérification
```bash
apksigner verify -v rebuilt_signed.apk
```

### Résultat
```
Verifies
Verified using v1 scheme (JAR signing): true
Verified using v2 scheme (APK Signature Scheme v2): true
Verified using v3 scheme (APK Signature Scheme v3): true
Number of signers: 1
```

> Les warnings `META-INF/*.version not protected by signature` concernent des marqueurs de version androidx purement informatifs ; ils n'ont aucun impact sur la validité de la signature ou sur l'installabilité.

## Livrables

| Fichier | Taille | SHA-256 |
|---|---|---|
| `debug.keystore` | – | (keystore généré localement, mot de passe `tppass1`) |
| `rebuilt_signed.apk` | 24 379 471 octets | `59bd825cda08edeee0f19f8e0406df2e6e95ea35a4ab34aa4526fe0158a60df9` |
| `apksigner_verify.log` | – | sortie complète de la vérification |

## DoD ✅
- `rebuilt_signed.apk` livré
- Preuve `apksigner verify` (`Verifies`) dans `apksigner_verify.log`
