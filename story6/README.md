# US6 — Recompilation de l'APK

> **EN TANT QUE** développeur
> **JE VEUX** recompiler l'APK avec Apktool
> **AFIN DE** vérifier que la décompilation est réversible

## Préparation
Copie du dossier décompilé issu de la US4 :
```bash
cp -R ../story4/app_src ./app_src
```

## Commande
```bash
apktool b -f app_src -o rebuilt.apk
```

Log complet dans `apktool_build.log`.

## Résultat

| Champ | Valeur |
|---|---|
| Fichier produit | `rebuilt.apk` |
| Taille | 24 075 973 octets |
| SHA-256 | `27269a4d02be9a8e76dd7927052b3c7c4e252783b679537c5c9832274ed86f7f` |
| Statut | Build successful |

> Note : la taille diffère légèrement de l'APK original (24 325 620 octets) car Apktool reconstruit le ZIP avec ses propres paramètres de compression, et certaines métadonnées de signature/META-INF d'origine ne sont pas réinjectées (la signature est faite à la story suivante).

## DoD ✅
- Fichier `rebuilt.apk` livré
- Log `apktool_build.log` livré
