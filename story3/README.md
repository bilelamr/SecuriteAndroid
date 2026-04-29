# US3 — Extraction de fichiers (classes.dex / AndroidManifest.xml)

> **EN TANT QUE** reverse-engineer
> **JE VEUX** extraire `classes.dex` / `AndroidManifest.xml` de l'APK
> **AFIN DE** préparer une décompilation

## Méthode
Un APK est une archive ZIP. Extraction directe avec `unzip` :

```bash
unzip -o app.apk "*.dex" "AndroidManifest.xml" -d extracted/
```

## Fichiers livrés

| Fichier | Taille | SHA-256 |
|---|---|---|
| `extracted/classes.dex` | 7 685 916 octets | `57898c5978715da96560ed2692b4a8fa1a8e914b37988dcf369cc59951f6c429` |
| `extracted/AndroidManifest.xml` | 27 516 octets | `80b9b101e3bf02f03eec4f2c9c9ccf4d61403612e1435949b51cec8b85d7a276` |

> Note : `AndroidManifest.xml` est ici sous forme **binaire AXML** (format Android compilé). Sa version lisible (XML texte) est obtenue après `apktool d` dans la US4.

> Note : l'APK contient un seul `classes.dex`. Aucun multidex (`classes2.dex`, etc.) n'est présent.

Hashes sauvegardés dans `hashes.sha256`.

## DoD ✅
Fichiers livrés avec hash SHA-256.
