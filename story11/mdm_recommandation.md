# US11 — Choix d'une solution MDM

> **EN TANT QUE** architecte sécurité
> **JE VEUX** comparer 2 solutions MDM
> **AFIN DE** recommander la plus adaptée

## 1. Contexte

Suite à la définition de la politique mobile (US10), il faut un outil **MDM/UEM** pour la déployer et la contrôler. On retient deux candidats représentatifs du marché :

- **Microsoft Intune** (Microsoft Entra / Endpoint Manager) — leader cloud, fortement intégré à l'écosystème Microsoft 365.
- **Jamf for Mobile** (anciennement Jamf Pro / Jamf Now) — référence pour Apple, propose Android Enterprise via partenariat / Jamf Trust.

> Variante envisagée pour Android pur : **Google Workspace + Android Enterprise** managé directement (gratuit avec Workspace), mais on retient un acteur dédié ici pour bénéficier de fonctionnalités UEM avancées.

## 2. Critères d'évaluation

| # | Critère | Pondération |
|---|---|---|
| C1 | Support Android Enterprise (Work Profile, Fully Managed, Dedicated) | ★★★ |
| C2 | Support iOS / iPadOS | ★★★ |
| C3 | Conformité du device (root/jailbreak, OS, chiffrement) | ★★★ |
| C4 | Déploiement d'apps (store privé, apps internes signées) | ★★★ |
| C5 | Conditional Access / Zero Trust | ★★ |
| C6 | Reporting et alertes | ★★ |
| C7 | Coût par utilisateur | ★★ |
| C8 | Intégration avec l'IAM existant (SSO, SCIM) | ★★ |
| C9 | Protection contre les menaces mobiles (MTD) | ★ |

## 3. Tableau comparatif

| Critère | Microsoft Intune | Jamf for Mobile |
|---|---|---|
| **C1 — Android Enterprise** | ✅ Tous modes (Work Profile, Fully Managed, Dedicated, Corporate-Owned with Work Profile) | ✅ Work Profile + Fully Managed + COPE via Jamf Trust |
| **C2 — iOS / iPadOS** | ✅ Très complet, Automated Device Enrollment (ADE) | ✅✅ **Référence du marché Apple**, ADE, App Installer, déclaratif |
| **C3 — Conformité device** | ✅ Politiques riches, intégration Defender for Endpoint | ✅ Politiques natives, intégration partenaires MTD |
| **C4 — Déploiement d'apps** | ✅ Managed Google Play + apps internes (LOB) signées | ✅ Managed Google Play + apps internes Apple/Android |
| **C5 — Conditional Access** | ✅✅ **Natif** (intégration Entra ID, app protection policies sans enrôlement) | ⚠ Via partenaires (Microsoft, Okta, Google) |
| **C6 — Reporting** | ✅ Console Endpoint Manager, intégration Sentinel/Log Analytics | ✅ Tableaux de bord Jamf, exports CSV/API |
| **C7 — Coût indicatif** | ~ 8 €/user/mois (inclus dans Microsoft 365 E3/E5 ou Intune Plan 1) | ~ 4 €/device/mois (Jamf Now) à ~ 7 € (Jamf Pro) |
| **C8 — Intégration IAM** | ✅✅ Natif Entra ID, SCIM, SSO SAML/OIDC | ✅ SSO SAML, SCIM, intégration Okta/Entra |
| **C9 — MTD intégré** | ✅ Defender for Endpoint Mobile | ⚠ Via partenariats (Lookout, Wandera, Zimperium) |
| **Maturité Android** | ✅✅ Très complète | ✅ Bonne mais centre de gravité Apple |
| **Maturité iOS** | ✅ Complète | ✅✅ La plus avancée |
| **Hébergement** | Cloud Microsoft (Azure) | Cloud Jamf (AWS) ou on-prem (Jamf Pro) |

## 4. Analyse

### Points forts Microsoft Intune
- Intégration **native** avec Entra ID, Conditional Access, Defender, Purview → écosystème zero-trust complet.
- Gestion **homogène mobile + Windows/macOS** dans une seule console.
- Souvent **déjà inclus** dans une licence Microsoft 365 E3/E5 ⇒ coût marginal nul.
- Maturité Android Enterprise excellente.

### Points forts Jamf
- **Best-in-class sur l'écosystème Apple** (déploiement zero-touch, App Installer, Declarative Device Management).
- Console plus simple, courbe d'apprentissage rapide.
- Très bon outil pour les flottes 100% Apple (BFG / créa / direction).

### Points faibles Microsoft Intune
- Console riche mais courbe d'apprentissage abrupte ; coût ajouté hors Microsoft 365.
- Moins fin sur certaines spécificités Apple (DDM partiel).

### Points faibles Jamf
- Moins fort sur Android pour des cas avancés (kiosque OEM-spécifique, COBO).
- Pas de Conditional Access natif → dépendance à Entra/Okta.
- Coût additionnel à un parc Microsoft 365 existant.

## 5. Recommandation

### Pour le contexte de cette étude (app **Nickel** = parc majoritairement Android, organisation déjà sous Microsoft 365)

> **🎯 Choix recommandé : Microsoft Intune**

**Justifications :**
1. **Coût** : Intune est généralement déjà inclus dans la licence Microsoft 365 (E3 / E5) ; pas de surcoût.
2. **Conditional Access natif** : indispensable pour une app **Confidentiel/Critique** comme un client banking — accès aux ressources d'entreprise conditionné à la conformité du device.
3. **Maturité Android Enterprise** : tous les modes (Work Profile / Fully Managed / Dedicated / COPE) sont supportés.
4. **Defender Mobile intégré** : MTD (Mobile Threat Defense) sans contrat tiers.
5. **Console unique** : mobile + Windows/macOS dans Endpoint Manager → moins d'outils, moins de silos.

### Quand préférer Jamf
- Parc majoritairement Apple (création, communication, direction).
- Pas d'écosystème Microsoft 365 ou tolérance à un SSO tiers (Okta…).
- Besoin de fonctionnalités Apple avancées de pointe (DDM, App Installer).

### Solution alternative si budget contraint
- **Google Workspace + Android Enterprise** managé : gratuit avec Workspace, suffisant pour un parc 100% Android sans besoin de Conditional Access cross-platform.

## DoD ✅
- `mdm_recommandation.md` livré
- Tableau comparatif présent
- Recommandation argumentée
