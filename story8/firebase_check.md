# US8 — Vérification Firebase

> **EN TANT QUE** pentesteur
> **JE VEUX** tester l'accès public à une éventuelle base Firebase
> **AFIN DE** évaluer le risque de fuite de données

## Identification des ressources Firebase
Sources : `story4/app_src/res/values/strings.xml` (US5).

| Ressource | Valeur |
|---|---|
| Realtime Database URL | `https://application-client-nickel.firebaseio.com` |
| Storage bucket | `application-client-nickel.appspot.com` |
| API Key | `AIzaSyBTgztvImsUfMWDa41PCrDWAj7dmyIDhUg` |
| Project ID | `application-client-nickel` |

## Test 1 — Accès anonyme à la racine RTDB
```bash
curl -i "https://application-client-nickel.firebaseio.com/.json"
```

### Réponse
```
HTTP/1.1 401 Unauthorized
Content-Type: application/json; charset=utf-8

{
  "error" : "Permission denied"
}
```
Capture brute : [`firebase_root.txt`](firebase_root.txt)

## Test 2 — Énumération `?shallow=true`
```bash
curl -i "https://application-client-nickel.firebaseio.com/.json?shallow=true"
```

### Réponse
```
HTTP/1.1 401 Unauthorized
{
  "error" : "Permission denied"
}
```
Capture brute : [`firebase_shallow.txt`](firebase_shallow.txt)

## Test 3 — Listing du Storage bucket
```bash
curl -i "https://firebasestorage.googleapis.com/v0/b/application-client-nickel.appspot.com/o/"
```

### Réponse
```
HTTP/1.1 412 Precondition Failed
{
  "error": {
    "code": 412,
    "message": "A required service account is missing necessary permissions ..."
  }
}
```
Capture brute : [`storage_bucket.txt`](storage_bucket.txt)

## Conclusion

| Cible | Résultat | Risque |
|---|---|---|
| RTDB racine `/.json` | **401 Permission denied** | ✅ Pas d'accès anonyme — règles `.read: false` correctement configurées |
| RTDB shallow listing | **401 Permission denied** | ✅ Idem |
| Storage bucket listing | **412** (service account) | ⚠ Listing non public, mais erreur sur la conf service-account côté Firebase. Pas exploitable directement. |

**Verdict** : la base Firebase Realtime Database de Nickel **n'est pas exposée publiquement**. C'est conforme aux bonnes pratiques. La clé API exposée dans `strings.xml` (US5) n'est exploitable que pour des opérations explicitement autorisées par les règles serveur — qui sont ici verrouillées.

## Recommandations malgré tout
1. Restreindre la clé `google_api_key` (Application restrictions par package + SHA-1) dans GCP.
2. Auditer périodiquement les `firebase.rules` (`.read`, `.write`) pour éviter une régression future.
3. Auditer les règles Storage (`storage.rules`) — l'erreur 412 mérite une investigation côté admin Firebase.

## DoD ✅
- `firebase_check.md` livré
- 3 captures HTTP brutes (`firebase_root.txt`, `firebase_shallow.txt`, `storage_bucket.txt`)
