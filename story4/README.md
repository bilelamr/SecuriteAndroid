# US4 — Décompilation avec Apktool

> **EN TANT QUE** auditeur
> **JE VEUX** décompiler l'APK avec Apktool
> **AFIN DE** accéder aux ressources et au manifest

## Outil
`apktool 3.0.2` (installé via Homebrew). JDK 17 (`/opt/homebrew/opt/openjdk@17`).

## Commande
```bash
apktool d -f -o app_src "Application WeTransfer.apk"
```

Log complet dans `apktool_decode.log`.

## Arborescence livrée (`app_src/`)

| Dossier / fichier | Contenu |
|---|---|
| `AndroidManifest.xml` | Manifest **décodé** lisible (170 lignes) |
| `apktool.yml` | Métadonnées de build (versionCode, sdk, etc.) |
| `res/` | Toutes les ressources : layouts, drawables, `values/strings.xml`… |
| `smali/` | Bytecode Dalvik désassemblé en Smali (équivalent du `classes.dex`) |
| `assets/` | Assets bruts embarqués |
| `lib/` | Bibliothèques natives (`.so`) par ABI |
| `original/` | `META-INF/`, manifest binaire d'origine, signature… |
| `unknown/` | Fichiers non standards (le cas échéant) |

## Livrable
- Dossier `app_src/` (décodé)
- Archive zippée : `app_src.zip` — SHA-256 : `a46957c98487a8141b5fb721158fa6a55f98b68219be174a68e720350f9d75ec`
- Log : `apktool_decode.log`

## DoD ✅
Dossier `app_src/` livré (zippé).
