# 📋 BRIEF DEV — Pages E-commerce SureCart

> **Pour** : Dev WordPress FSE + Dev PHP
> **De** : Laura
> **Date** : Février 2026
> **Objectif** : Créer les pages e-commerce (checkout, thank you, mon compte) intégrant SureCart
> **Prérequis** : Brief 01 (patterns) + Brief 02 (templates) + Brief 03 (pages) + Plugin SureCart installé et configuré

---

## TABLE DES MATIÈRES

1. [Préambule technique SureCart](#1-préambule-technique-surecart)
2. [Inventaire produits](#2-inventaire-produits)
3. [Architecture des tunnels de vente](#3-architecture-des-tunnels-de-vente)
4. [Pages à créer](#4-pages-à-créer)
5. [Mapping CSS — Jurible DS → SureCart](#5-mapping-css--jurible-ds--surecart)
6. [Conformité juridique française](#6-conformité-juridique-française)
7. [Configuration SureCart back-office](#7-configuration-surecart-back-office)
8. [Checklist de validation](#8-checklist-de-validation)

---

## 1. PRÉAMBULE TECHNIQUE SURECART

### Comment SureCart fonctionne avec WordPress FSE

SureCart utilise un système de **Forms** (formulaires de commande) qui sont des entités SureCart configurées dans le back-office, puis insérées dans des pages WordPress via le bloc `<!-- wp:surecart/form -->` ou un shortcode.

**Le flow est le suivant :**

1. On crée un **Form** dans SureCart → back-office (SureCart > Forms)
2. On crée une **page WordPress** avec le bon template FSE
3. On insère le **bloc SureCart Form** dans cette page, entouré de nos patterns Jurible (réassurance, sidebar, etc.)
4. On configure la **Thank You page** dans SureCart → Forms → [form] → Settings → Thank You Page
5. SureCart gère le paiement, les emails, et redirige vers notre page Thank You

### Shadow DOM et styles

Les formulaires SureCart utilisent le **Shadow DOM** pour encapsuler leurs styles. Cela signifie :

- ❌ Les styles CSS du thème n'affectent PAS les composants SureCart
- ❌ On ne peut PAS cibler les éléments internes avec des sélecteurs CSS classiques
- ✅ On personnalise via **CSS Variables** (changements globaux) et **CSS Parts** via `::part()` (changements ciblés)

Les CSS Variables se déclarent dans le CSS global du thème (Additional CSS ou fichier theme) avec le sélecteur `:root:root` (double spécificité nécessaire).

### 3 types de checkout SureCart

| Type | Usage | Notre choix |
|---|---|---|
| **Custom Form** | Form builder drag-drop dans l'éditeur blocs, le plus flexible | ✅ **Notre choix pour les 3 tunnels** |
| Instant Checkout | Checkout minimal via lien, pas personnalisable | ❌ Trop limité |
| Product Page Template | Template FSE automatique, dépend du thème | ❌ Pas assez contrôlable |

**Verdict** : On utilise uniquement des **Custom Forms** insérés dans des pages WordPress FSE. Chaque tunnel = 1 Form SureCart + 1 page WordPress.

### Slide-out Cart

SureCart fournit un **panier slide-out natif** (tiroir latéral). Il se déclenche automatiquement quand on clique "Ajouter au panier" sur les pages produit. On ne crée PAS de page panier dédiée — le slide-out cart suffit. On le stylise uniquement via CSS variables (voir section 5).

Le slide-out cart est utilisé **uniquement pour les produits one-time** (Fiches, Suite IA, Manuel). Les tunnels Académie et Prépa n'utilisent PAS le panier — ils ont des CTA directs vers leur page commande dédiée.

### Bloc Customer Dashboard

Le bloc `surecart/customer-dashboard` est masqué par défaut dans l'éditeur Gutenberg depuis SureCart v3. Pour le réactiver, ajouter ce snippet dans `functions.php` :

```php
add_filter( 'block_type_metadata', function( $metadata ) {
    if ( 'surecart/customer-dashboard' == $metadata['name'] ) {
        $metadata['supports']['inserter'] = true;
    }
    return $metadata;
} );
```

### Documentation de référence

- Styling (CSS Variables + Parts) : https://surecart.com/docs/styling/
- Custom Forms : https://surecart.com/docs/edit-checkout-form/
- Thank You Page : https://surecart.com/docs/custom-thank-you-page/
- Order Bumps : https://surecart.com/docs/order-bumps/
- Customer Dashboard : https://surecart.com/docs/overview-customer-dashboard/
- Tabbed Dashboard (custom tabs) : https://techarticles.co.uk/surecart-tabbed-customer-dashboard/
- Developer Docs : https://developer.surecart.com/
- Hook `surecart/checkout_confirmed` : récupérer les données post-achat

---

## 2. INVENTAIRE PRODUITS

### Produits à configurer dans SureCart

**Académie (1 produit, 4 prix/durées) :**

| Durée | Prix total | Prix/mois | Réduction | Type SureCart | Panier |
|---|---|---|---|---|---|
| 1 mois | 29€ | 29€/mois | — | Subscription mensuelle | Tunnel dédié |
| 3 mois | 78€ | 26€/mois | -10% | Subscription trimestrielle | Tunnel dédié |
| 6 mois | 140€ | 23€/mois | -20% ⭐ POPULAIRE | Subscription semestrielle | Tunnel dédié |
| 12 mois | 240€ | 20€/mois | -31% | Subscription annuelle | Tunnel dédié |

**Offre Réussite (produit événementiel, été 2026) :**

| Produit | Prix | Valeur | Type SureCart | Panier |
|---|---|---|---|---|
| Formule Réussite | 397€ | 580€ | One-time (accès 12 mois) | Tunnel dédié |

Inclut : Académie 12 mois + Pack Fiches PDF + Suite IA + 1 devoir corrigé vidéo + 5 questions à un juriste. Ouverture été 2026 avec liste d'attente + countdown.

**Suite IA (crédits) :**

| Formule | Crédits | Prix | Type SureCart | Panier |
|---|---|---|---|---|
| Essai gratuit | 3 crédits | 0€ (à l'inscription) | Hors SureCart (géré côté plateforme) | — |
| Bonus Abonnés | 10 crédits/mois | 0€ (renouvelés, cumulables) | Hors SureCart (géré côté plateforme) | — |
| Standard ⭐ POPULAIRE | 30 crédits | 5€ | One-time | Slide-out cart |
| Pro 💎 MEILLEURE VALEUR | 100 crédits | 17€ (-30%) | One-time | Slide-out cart |

**Autres produits one-time :**

| Produit | Prix | Type SureCart | Panier |
|---|---|---|---|
| Fiches matière (×22) | 19€ | One-time | Slide-out cart |
| Packs Fiches (×4) | 135€ | One-time | Slide-out cart |
| Manuel Méthodologie | X€ | One-time | Slide-out cart |

**Prépa PASS DROIT :**

| Produit | Prix | Type SureCart | Panier |
|---|---|---|---|
| PASS DROIT | 1 650€ (1× ou 3× 550€) | One-time + Installments 3× | Tunnel dédié |

Note : le contenu du bonus/cadeau Prépa est à confirmer ultérieurement.

### Combinaisons autorisées dans le même panier

Le slide-out cart permet de mélanger uniquement des produits **one-time** entre eux :

- ✅ Fiche + Fiche (plusieurs matières)
- ✅ Fiche + Pack Fiches
- ✅ Fiche + Suite IA (30 ou 100 crédits)
- ✅ Fiche + Manuel Méthodologie
- ✅ Suite IA + Manuel
- ❌ Académie → tunnel dédié (pas dans le slide-out cart)
- ❌ Prépa → tunnel dédié
- ❌ Réussite → tunnel dédié

C'est le standard de l'industrie — aucune plateforme e-commerce ne permet de mélanger abonnements et one-time dans le même panier.

---

## 3. ARCHITECTURE DES TUNNELS DE VENTE

### Vue d'ensemble — 4 flux distincts

```
            ┌───────────────────────────────────────────────────────────┐
            │                   jurible.com (site)                      │
            │                                                           │
            │  Pages produit  │  Page      │ Page    │ Page             │
            │  (Fiches, IA,   │  Académie  │ Prépa   │ Réussite (été)  │
            │   Manuel)       │            │         │                  │
            └───┬─────────────┴────┬───────┴──┬──────┴──┬──────────────┘
                │                  │          │         │
           "Ajouter au        "Commencer"  "S'inscrire" "S'inscrire
            panier"            CTA direct  CTA direct   liste d'attente"
                │                  │          │         │
                ▼                  ▼          ▼         ▼
           ┌─────────┐     ┌──────────┐ ┌────────┐ ┌──────────┐
           │Slide-out│     │ Checkout │ │Checkout│ │ Checkout │
           │ Cart    │     │ Académie │ │ Prépa  │ │ Réussite │
           └────┬────┘     └────┬─────┘ └───┬────┘ └────┬─────┘
                │               │           │           │
           "Commander"          │           │           │
                │               │           │           │
                ▼               ▼           ▼           ▼
           ┌─────────┐         │           │           │
           │Checkout │         │           │           │
           │One-time │         │           │           │
           └────┬────┘         │           │           │
                │              │           │           │
                ▼              ▼           ▼           ▼
           ┌────────────────────────────────────────────────┐
           │          PAGE THANK YOU (unique)                │
           │        Contenu conditionnel par produit         │
           └────────────────────────────────────────────────┘
```

---

### FLUX 1 — Tunnel One-Time (Fiches, Suite IA, Manuel)

**Parcours utilisateur :**

1. L'étudiant navigue sur une page produit (Fiches, Suite IA, Manuel)
2. Il clique "Ajouter au panier" → le **slide-out cart** s'ouvre
3. Il peut continuer à naviguer et ajouter d'autres produits one-time
4. Il clique "Commander" dans le slide-out cart → **Page Checkout One-Time**
5. Sur la page checkout : récap panier + order bump Académie + paiement
6. Après paiement → **Page Thank You** (blocs conditionnels)

**Schéma de la page checkout :**

```
┌──────────────────────────────────────────────────────────────┐
│  HEADER MINIMAL (parts/header-minimal)                       │
├──────────────────────────────────────────────────────────────┤
│                                                              │
│  BANDEAU RÉASSURANCE                                         │
│  🔒 Paiement sécurisé  ·  ✅ 25 000+ étudiants  ·  📧 Accès│
│  immédiat par email                                          │
│                                                              │
├────────────────────────────┬─────────────────────────────────┤
│                            │                                 │
│  FORMULAIRE SURECART       │  SIDEBAR RÉASSURANCE            │
│  (Form "Panier One-Time")  │                                 │
│                            │  ┌───────────────────────────┐  │
│  ┌──────────────────────┐  │  │  ⭐ Témoignage étudiant   │  │
│  │ Récap panier         │  │  │  "Les fiches m'ont fait   │  │
│  │ (éditable: quantité, │  │  │   gagner 4 points..."     │  │
│  │  suppression)        │  │  │  — Marie L., L2 Droit     │  │
│  └──────────────────────┘  │  └───────────────────────────┘  │
│                            │                                 │
│  ┌──── ORDER BUMP ──────┐  │  ┌───────────────────────────┐  │
│  │ ☐ Testez l'Académie  │  │  │  🔒 Paiement sécurisé    │  │
│  │   1er mois à X€      │  │  │  Stripe · CB · Apple Pay  │  │
│  │   Résiliable en 1    │  │  │                           │  │
│  │   clic               │  │  │  📧 Accès immédiat        │  │
│  │   [DÉCOCHÉ]          │  │  │  Vos achats dans votre    │  │
│  └──────────────────────┘  │  │  boîte mail en 2 min      │  │
│                            │  │                           │  │
│  Email                     │  │  ↩️ Satisfait ou remboursé │  │
│  Paiement (CB / Apple Pay) │  │  14 jours pour changer    │  │
│  ☑ J'accepte les CGV*      │  │  d'avis                   │  │
│  [PAYER →]                 │  └───────────────────────────┘  │
│                            │                                 │
├────────────────────────────┴─────────────────────────────────┤
│  FOOTER MINIMAL (parts/footer-minimal)                       │
└──────────────────────────────────────────────────────────────┘

* Lien cliquable vers la page CGV — case NON pré-cochée
```

**Order bump — règles :**
- Toujours **décoché** par défaut (obligation légale française)
- Prix affiché clairement
- Texte court : "Testez l'Académie Jurible — 1er mois à X€/mois, résiliable en 1 clic"
- Configuré dans SureCart > Revenue Boosters > Order Bumps

---

### FLUX 2 — Tunnel Académie (Abonnement)

**Parcours utilisateur :**

1. L'étudiant est sur la page Académie ou clique un CTA "Commencer"
2. Le CTA mène directement à la **Page Checkout Académie** (pas de slide-out cart)
3. Il sélectionne sa durée d'abonnement (1 / 3 / 6 / 12 mois)
4. Order bump : Suite IA 30 crédits (one-time, 5€)
5. Après paiement → **Page Thank You** (blocs conditionnels Académie)

**Schéma de la page checkout :**

```
┌──────────────────────────────────────────────────────────────┐
│  HEADER MINIMAL (parts/header-minimal)                       │
├──────────────────────────────────────────────────────────────┤
│                                                              │
│  BANDEAU RÉASSURANCE                                         │
│  🔒 Paiement sécurisé  ·  ✅ Sans engagement  ·  🚀 Accès   │
│  immédiat à tous les cours                                   │
│                                                              │
├────────────────────────────┬─────────────────────────────────┤
│                            │                                 │
│  FORMULAIRE SURECART       │  SIDEBAR RÉASSURANCE            │
│  (Form "Académie")         │                                 │
│                            │  ┌───────────────────────────┐  │
│  Choisissez votre durée :  │  │  ✅ Ce qui est inclus :    │  │
│                            │  │  · Tous les cours en vidéo │  │
│  ┌────┬────┬────┬────┐     │  │  · Fiches de révision      │  │
│  │ 1  │ 3  │ 6  │ 12 │     │  │  · QCM d'entraînement     │  │
│  │mois│mois│mois│mois│     │  │  · Méthodologie complète   │  │
│  │29€ │78€ │140€│240€│     │  │  · 10 crédits IA/mois     │  │
│  │    │-10%│-20%│-31%│     │  └───────────────────────────┘  │
│  └────┴────┴────┴────┘     │                                 │
│  (6 mois pré-sélectionné)  │  ┌───────────────────────────┐  │
│                            │  │  ⭐ Témoignage             │  │
│  ┌──── ORDER BUMP ──────┐  │  │  "L'Académie a changé     │  │
│  │ ☐ Ajoutez 30 crédits │  │  │   ma façon de réviser..." │  │
│  │   Suite IA — 5€       │  │  │  — Thomas R., L3 Droit    │  │
│  │   (paiement unique)  │  │  └───────────────────────────┘  │
│  │   [DÉCOCHÉ]          │  │                                 │
│  └──────────────────────┘  │  ┌───────────────────────────┐  │
│                            │  │  🔒 Paiement sécurisé     │  │
│  Email                     │  │  ↩️ Résiliable en 1 clic   │  │
│  Paiement (CB / Apple Pay) │  │  📧 Accès immédiat        │  │
│  ☑ J'accepte les CGV*      │  └───────────────────────────┘  │
│  [S'ABONNER →]             │                                 │
│                            │                                 │
├────────────────────────────┴─────────────────────────────────┤
│  FOOTER MINIMAL (parts/footer-minimal)                       │
└──────────────────────────────────────────────────────────────┘
```

**Note technique — sélection de durée :**
Dans SureCart, le produit "Académie" a **4 prix** (Price Selector) correspondant aux 4 durées. Le formulaire affiche les options en cards horizontales et le total se met à jour en temps réel. Le prix "6 mois" (POPULAIRE) est pré-sélectionné par défaut.

→ **Le dev doit configurer 4 "Prices" sur le produit Académie dans SureCart : mensuel (29€), trimestriel (78€), semestriel (140€), annuel (240€).**

---

### FLUX 3 — Tunnel Prépa (Premium)

**Parcours utilisateur :**

1. L'étudiant est sur la page Prépa ou clique "S'inscrire à la Prépa"
2. Le CTA mène directement à la **Page Checkout Prépa** (pas de slide-out cart)
3. Il voit le prix total (1 650€) et choisit le mode de paiement (1× ou 3×)
4. Après paiement → **Page Thank You** (blocs conditionnels Prépa)

**Schéma de la page checkout :**

```
┌──────────────────────────────────────────────────────────────┐
│  HEADER MINIMAL (parts/header-minimal)                       │
├──────────────────────────────────────────────────────────────┤
│                                                              │
│  BANDEAU RÉASSURANCE                                         │
│  🎓 Prépa PASS DROIT  ·  ✅ Encadrement personnalisé  ·     │
│  📞 Référent dédié                                           │
│                                                              │
├────────────────────────────┬─────────────────────────────────┤
│                            │                                 │
│  FORMULAIRE SURECART       │  SIDEBAR RÉASSURANCE            │
│  (Form "Prépa")            │                                 │
│                            │  ┌───────────────────────────┐  │
│  PASS DROIT — 1 650€       │  │  ✅ CE QUI EST INCLUS :    │  │
│                            │  │                           │  │
│  Mode de paiement :        │  │  · Encadrement par un     │  │
│  ○ 1× 1 650€              │  │    référent dédié         │  │
│  ○ 3× 550€                │  │  · Accès prioritaire      │  │
│    (paiement échelonné)    │  │    aux permanences        │  │
│                            │  │  · Programme personnalisé │  │
│  Email                     │  │  · [+ bonus à confirmer]  │  │
│  Paiement (CB / Apple Pay) │  │                           │  │
│  ☑ J'accepte les CGV*      │  └───────────────────────────┘  │
│  [S'INSCRIRE → 1 650€]    │                                 │
│                            │  ┌───────────────────────────┐  │
│                            │  │  ⭐ Témoignage Prépa       │  │
│                            │  │  "La Prépa m'a permis     │  │
│                            │  │   de valider mon année    │  │
│                            │  │   avec mention..."        │  │
│                            │  │  — Sarah K., L1 Droit     │  │
│                            │  └───────────────────────────┘  │
│                            │                                 │
│                            │  🔒 Paiement sécurisé          │
│                            │  📞 Questions ? Contactez-nous  │
│                            │                                 │
├────────────────────────────┴─────────────────────────────────┤
│  FOOTER MINIMAL (parts/footer-minimal)                       │
└──────────────────────────────────────────────────────────────┘
```

**Note** : Le contenu exact du bonus/cadeau Prépa est à confirmer. Le design de la page sera adapté une fois la décision prise (ajout d'un encart "Cadeau inclus" dans la sidebar si pertinent).

**Pas d'order bump sur la Prépa** — le produit est déjà premium à 1 650€, ajouter un bump serait contre-productif.

---

### FLUX 4 — Tunnel Réussite (Événementiel, été 2026)

**Parcours utilisateur :**

1. L'étudiant est sur la page Réussite (disponible juillet-septembre 2026)
2. Avant ouverture : CTA "S'inscrire sur la liste d'attente" (formulaire email + countdown)
3. Après ouverture : CTA "S'inscrire" → **Page Checkout Réussite**
4. Il voit le bundle complet (397€, valeur 580€) et paye en une fois
5. Après paiement → **Page Thank You** (blocs conditionnels Réussite)

**Schéma de la page checkout :**

```
┌──────────────────────────────────────────────────────────────┐
│  HEADER MINIMAL (parts/header-minimal)                       │
├──────────────────────────────────────────────────────────────┤
│                                                              │
│  BANDEAU RÉASSURANCE                                         │
│  ⭐ Formule Réussite  ·  🎁 Économisez 183€  ·  ⏰ Édition  │
│  limitée été 2026                                            │
│                                                              │
├────────────────────────────┬─────────────────────────────────┤
│                            │                                 │
│  FORMULAIRE SURECART       │  SIDEBAR RÉASSURANCE            │
│  (Form "Réussite")         │                                 │
│                            │  ┌───────────────────────────┐  │
│  FORMULE RÉUSSITE          │  │  🎁 TOUT EST INCLUS :      │  │
│                            │  │                           │  │
│  Valeur 580€               │  │  ✅ Académie 12 mois       │  │
│  397€ / accès 12 mois      │  │  ✅ Pack Fiches PDF        │  │
│  Économisez 183€           │  │  ✅ Crédits Suite IA       │  │
│                            │  │  ✅ 1 devoir corrigé       │  │
│  Email                     │  │     en vidéo               │  │
│  Paiement (CB / Apple Pay) │  │  ✅ 5 questions à un       │  │
│  ☑ J'accepte les CGV*      │  │     juriste (48h)         │  │
│  [S'INSCRIRE → 397€]      │  └───────────────────────────┘  │
│                            │                                 │
│                            │  ┌───────────────────────────┐  │
│                            │  │  ⭐ Témoignage             │  │
│                            │  │  "La Formule Réussite m'a │  │
│                            │  │   donné tout ce qu'il     │  │
│                            │  │   fallait pour réussir."  │  │
│                            │  │  — Léa M., L2 Droit       │  │
│                            │  └───────────────────────────┘  │
│                            │                                 │
│                            │  🔒 Paiement sécurisé          │
│                            │  ⏰ Places limitées             │
│                            │                                 │
├────────────────────────────┴─────────────────────────────────┤
│  FOOTER MINIMAL (parts/footer-minimal)                       │
└──────────────────────────────────────────────────────────────┘
```

**Note technique :**
- Produit SureCart de type "One-time" à 397€
- L'accès Académie 12 mois inclus dans le bundle doit créer une souscription côté plateforme (via hook `surecart/checkout_confirmed` ou en ajoutant l'Académie 12 mois comme produit lié à 0€)
- Les crédits Suite IA sont probablement gérés côté plateforme ecole.jurible.com, pas dans SureCart
- Le devoir corrigé et les questions juriste sont des services — tracking manuel ou via email

**Pas d'order bump** — le bundle est déjà complet.

**Disponibilité** : Cette page et ce form SureCart ne seront créés qu'à l'approche de l'été 2026. Le design est préparé en avance pour anticiper.

---

## 4. PAGES À CRÉER

### Vue d'ensemble

| # | Page | URL | Template FSE | Form SureCart | Dev PHP |
|---|---|---|---|---|---|
| 1 | Checkout One-Time | `/commande/` | `page-checkout.html` | Form "Panier" | Non |
| 2 | Checkout Académie | `/commande/academie/` | `page-checkout.html` | Form "Académie" | Non |
| 3 | Checkout Prépa | `/commande/prepa/` | `page-checkout.html` | Form "Prépa" | Non |
| 4 | Checkout Réussite | `/commande/reussite/` | `page-checkout.html` | Form "Réussite" | Non |
| 5 | Thank You | `/merci/` | `page-thank-you.html` | — | ✅ Oui |
| 6 | Mon Compte | `/mon-compte/` | `page-compte.html` | — | Snippet |

### Nouveau template nécessaire : `page-checkout.html`

Ce template n'existe pas dans le Brief 02. Il faut le créer.

**Différences avec `page.html` :**
- Header minimal (pas de navigation complète — réduire les distractions)
- Footer minimal (pas de méga-footer — juste logo + liens légaux)
- Pas de sidebar thème — la sidebar réassurance est DANS le contenu de la page
- Largeur : `wideSize` (1140-1200px) pour le layout 2 colonnes

```html
<!-- wp:template-part {"slug":"header-minimal","area":"header"} /-->

<!-- wp:group {"layout":{"type":"constrained","contentSize":"1140px"}} -->
<div class="wp-block-group">
    <!-- wp:post-content /-->
</div>
<!-- /wp:group -->

<!-- wp:template-part {"slug":"footer-minimal","area":"footer"} /-->
```

**Template parts requises :** `parts/header-minimal.html` et `parts/footer-minimal.html` — définis dans le Brief 01 (patterns O01 et O02).

### Nouveau template nécessaire : `page-thank-you.html`

Identique à `page-checkout.html` (header minimal + footer minimal) mais pourrait avoir une largeur différente si besoin. Pour l'instant, même structure.

### Nouveau template nécessaire : `page-compte.html`

Utilise le header et footer standards (pas minimaux — le client est déjà connecté, pas de friction à réduire).

```html
<!-- wp:template-part {"slug":"header","area":"header"} /-->

<!-- wp:group {"layout":{"type":"constrained","contentSize":"1140px"}} -->
<div class="wp-block-group">
    <!-- wp:post-content /-->
</div>
<!-- /wp:group -->

<!-- wp:template-part {"slug":"footer","area":"footer"} /-->
```

---

### PAGE 1 — Checkout One-Time

**URL** : `/commande/`
**Template** : `page-checkout.html`
**Form SureCart** : "Panier" (products ajoutés via le slide-out cart)

| # | Zone | Contenu | Implémentation |
|---|---|---|---|
| 1 | Header | Header minimal | Template part `parts/header-minimal` |
| 2 | Bandeau réassurance | 3 éléments en ligne (sécurité, étudiants, accès) | Pattern custom `jurible/checkout-reassurance-bar` ou bloc Group |
| 3 | Colonne gauche (60-65%) | Bloc SureCart Form "Panier" | `<!-- wp:surecart/form {"id":XXX} /-->` |
| 4 | Colonne droite (35-40%) | Sidebar : témoignage + logos paiement + garantie | Pattern custom `jurible/checkout-sidebar` ou blocs empilés |
| 5 | Footer | Footer minimal | Template part `parts/footer-minimal` |

**Configuration du Form "Panier" dans SureCart :**
- Blocs : Totals (Line Items éditable + supprimable) → Order Bump → Customer Email → Payment → Checkout Button
- Order Bump : produit "Académie — 1 mois à 29€", décoché
- Thank You Page : `/merci/`
- Texte bouton : "Payer X€" (montant dynamique)

---

### PAGE 2 — Checkout Académie

**URL** : `/commande/academie/`
**Template** : `page-checkout.html`
**Form SureCart** : "Académie"

| # | Zone | Contenu | Implémentation |
|---|---|---|---|
| 1 | Header | Header minimal | Template part `parts/header-minimal` |
| 2 | Bandeau réassurance | 3 éléments (sécurité, sans engagement, accès immédiat) | Pattern `jurible/checkout-reassurance-bar` (variante textes) |
| 3 | Colonne gauche (60-65%) | Bloc SureCart Form "Académie" | `<!-- wp:surecart/form {"id":XXX} /-->` |
| 4 | Colonne droite (35-40%) | Sidebar : inclus, témoignage, sécurité | Pattern `jurible/checkout-sidebar-academie` |
| 5 | Footer | Footer minimal | Template part `parts/footer-minimal` |

**Configuration du Form "Académie" dans SureCart :**
- Blocs : Price Selector (4 durées : 1/3/6/12 mois, 6 mois pré-sélectionné) → Order Bump → Customer Email → Payment → Checkout Button
- Order Bump : produit "Suite IA — 30 crédits", 5€, décoché
- Thank You Page : `/merci/`
- Texte bouton : "S'abonner — X€" (montant dynamique selon durée)

**Gestion des CTA entrants :**
Les CTA depuis la page Académie et les pages Nos Offres doivent pointer vers `/commande/academie/` avec des paramètres URL pour pré-sélectionner la durée :
- `/commande/academie/?duree=1`
- `/commande/academie/?duree=3`
- `/commande/academie/?duree=6`
- `/commande/academie/?duree=12`

→ SureCart supporte le pré-remplissage via URL parameters. Voir docs : https://surecart.com/docs/pre-fill-checkout-fields/

---

### PAGE 3 — Checkout Prépa

**URL** : `/commande/prepa/`
**Template** : `page-checkout.html`
**Form SureCart** : "Prépa"

| # | Zone | Contenu | Implémentation |
|---|---|---|---|
| 1 | Header | Header minimal | Template part `parts/header-minimal` |
| 2 | Bandeau réassurance | 3 éléments (Prépa, encadrement, cadeau) | Pattern `jurible/checkout-reassurance-bar` (variante Prépa) |
| 3 | Colonne gauche (60-65%) | Bloc SureCart Form "Prépa" | `<!-- wp:surecart/form {"id":XXX} /-->` |
| 4 | Colonne droite (35-40%) | Sidebar : inclus, témoignage, contact | Pattern `jurible/checkout-sidebar-prepa` |
| 5 | Footer | Footer minimal | Template part `parts/footer-minimal` |

**Configuration du Form "Prépa" dans SureCart :**
- Blocs : Product (PASS DROIT) avec Price Selector (1× 1 650€ ou 3× 550€) → Customer Email → Payment → Checkout Button
- Pas d'order bump
- Thank You Page : `/merci/`
- Texte bouton : "S'inscrire — 1 650€" ou "S'inscrire — 3× 550€"

Note : si un bonus/cadeau est ajouté ultérieurement, il sera intégré dans le form et la sidebar.

---

### PAGE 4 — Checkout Réussite

**URL** : `/commande/reussite/`
**Template** : `page-checkout.html`
**Form SureCart** : "Réussite"

| # | Zone | Contenu | Implémentation |
|---|---|---|---|
| 1 | Header | Header minimal | Template part `parts/header-minimal` |
| 2 | Bandeau réassurance | 3 éléments (Réussite, économie, édition limitée) | Pattern `jurible/checkout-reassurance-bar` (variante Réussite) |
| 3 | Colonne gauche (60-65%) | Bloc SureCart Form "Réussite" | `<!-- wp:surecart/form {"id":XXX} /-->` |
| 4 | Colonne droite (35-40%) | Sidebar : inclus détaillé, témoignage, urgence | Pattern `jurible/checkout-sidebar-reussite` |
| 5 | Footer | Footer minimal | Template part `parts/footer-minimal` |

**Configuration du Form "Réussite" dans SureCart :**
- Blocs : Product (Formule Réussite, 397€) → Customer Email → Payment → Checkout Button
- Pas d'order bump (bundle complet)
- Thank You Page : `/merci/`
- Texte bouton : "S'inscrire — 397€"

**Disponibilité** : Page créée uniquement à l'approche de l'été 2026. Le form SureCart et les produits associés seront configurés à ce moment-là.

---

### PAGE 4 — Thank You (page unique dynamique)

**URL** : `/merci/`
**Template** : `page-thank-you.html`
**Form SureCart** : aucun
**Dev PHP** : ✅ Obligatoire

#### Pourquoi 1 seule page et pas 3 ?

- **Scalabilité** : nouveau produit = nouveau bloc conditionnel, pas une nouvelle page
- **Maintenance** : 1 page à maintenir au lieu de 3
- **Complexité PHP raisonnable** : 1-2 jours de dev

#### Comment ça marche

Après paiement, SureCart redirige vers `/merci/?sc_checkout_id=xxx`. Le PHP récupère les données de la commande via l'API SureCart et affiche les blocs pertinents.

#### Structure de la page

```
┌──────────────────────────────────────────────────────────┐
│  HEADER MINIMAL                                          │
├──────────────────────────────────────────────────────────┤
│                                                          │
│  BLOC FIXE — Confirmation                                │
│  ┌────────────────────────────────────────────────────┐  │
│  │  ✅ Merci [prénom] ! Votre commande est confirmée.  │  │
│  │                                                    │  │
│  │  📧 Consultez votre boîte mail pour accéder à vos  │  │
│  │     achats. (Un email arrive dans les 2 minutes.)  │  │
│  │                                                    │  │
│  │  Récap commande : [résumé dynamique]               │  │
│  └────────────────────────────────────────────────────┘  │
│                                                          │
│  BLOC CONDITIONNEL — Si Fiches / Manuel / Pack           │
│  ┌────────────────────────────────────────────────────┐  │
│  │  📄 Vos fiches arrivent par email                   │  │
│  │                                                    │  │
│  │  En attendant, voici comment en tirer le meilleur  │  │
│  │  parti :                                           │  │
│  │  1. Imprimez-les ou annotez-les sur tablette       │  │
│  │  2. Relisez-les avant chaque TD                    │  │
│  │  3. Testez-vous avec nos QCM gratuits              │  │
│  └────────────────────────────────────────────────────┘  │
│                                                          │
│  BLOC CONDITIONNEL — Si Suite IA                         │
│  ┌────────────────────────────────────────────────────┐  │
│  │  🤖 Vos crédits IA sont activés !                   │  │
│  │                                                    │  │
│  │  Vous allez recevoir vos accès par email.          │  │
│  │  En attendant, découvrez comment utiliser la       │  │
│  │  Suite IA en 60 secondes :                         │  │
│  │  [Vidéo tutoriel intégrée]                         │  │
│  └────────────────────────────────────────────────────┘  │
│                                                          │
│  BLOC CONDITIONNEL — Si Académie                         │
│  ┌────────────────────────────────────────────────────┐  │
│  │  🎓 Bienvenue dans l'Académie Jurible !             │  │
│  │                                                    │  │
│  │  Vos identifiants arrivent par email. Voici vos    │  │
│  │  3 premières étapes :                              │  │
│  │  1. Créez votre mot de passe (lien dans l'email)   │  │
│  │  2. Accédez à ecole.jurible.com                    │  │
│  │  3. Commencez par le cours de votre matière        │  │
│  │     principale                                     │  │
│  └────────────────────────────────────────────────────┘  │
│                                                          │
│  BLOC CONDITIONNEL — Si Prépa                            │
│  ┌────────────────────────────────────────────────────┐  │
│  │  🏆 Bienvenue dans la Prépa PASS DROIT !            │  │
│  │                                                    │  │
│  │  Prochaines étapes :                               │  │
│  │  1. Consultez votre email pour vos accès           │  │
│  │  2. Votre référent vous contactera sous 48h        │  │
│  │  3. Consultez le calendrier des sessions           │  │
│  │                                                    │  │
│  │  📞 Contact direct : hello@jurible.com             │  │
│  └────────────────────────────────────────────────────┘  │
│                                                          │
│  BLOC CONDITIONNEL — Si Réussite                         │
│  ┌────────────────────────────────────────────────────┐  │
│  │  🎉 Bienvenue dans la Formule Réussite !            │  │
│  │                                                    │  │
│  │  Votre accès complet est activé :                  │  │
│  │  · Académie 12 mois                                │  │
│  │  · Pack Fiches PDF                                 │  │
│  │  · Crédits Suite IA                                │  │
│  │  · 1 devoir corrigé en vidéo                       │  │
│  │  · 5 questions à un juriste                        │  │
│  │                                                    │  │
│  │  📧 Tout arrive par email dans les minutes qui      │  │
│  │     suivent. Commencez par créer votre compte.     │  │
│  └────────────────────────────────────────────────────┘  │
│                                                          │
│  BLOC CONDITIONNEL — Si one-time SANS Académie           │
│  ┌────────────────────────────────────────────────────┐  │
│  │  💡 Envie d'aller plus loin ?                       │  │
│  │                                                    │  │
│  │  Testez l'Académie Jurible — tous les cours, les   │  │
│  │  fiches, la méthodologie, les QCM.                 │  │
│  │  1er mois à X€, résiliable en 1 clic.             │  │
│  │                                                    │  │
│  │  [DÉCOUVRIR L'ACADÉMIE →] (lien vers /academie/)   │  │
│  │                                                    │  │
│  │  ⚠️ Ce n'est PAS un auto-ajout au panier.          │  │
│  │  C'est un simple lien vers la page Académie.       │  │
│  └────────────────────────────────────────────────────┘  │
│                                                          │
│  BLOC FIXE — Réassurance + Support                       │
│  ┌────────────────────────────────────────────────────┐  │
│  │  Des questions ? hello@jurible.com                 │  │
│  │  Nous répondons sous 24h.                          │  │
│  └────────────────────────────────────────────────────┘  │
│                                                          │
├──────────────────────────────────────────────────────────┤
│  FOOTER MINIMAL                                          │
└──────────────────────────────────────────────────────────┘
```

#### Implémentation PHP

**Principe** : Un bloc custom `jurible/thank-you-section` avec un attribut `product_type` qui contrôle l'affichage.

**Étapes :**

1. Récupérer le checkout ID depuis l'URL : `$_GET['sc_checkout_id']`
2. Appeler l'API SureCart pour récupérer la commande :
   ```php
   $checkout = \SureCart\Models\Checkout::with(['purchases', 'purchases.product'])
       ->find($checkout_id);
   ```
3. Boucler sur `$checkout->purchases->data` pour identifier les produits achetés
4. Passer les données aux blocs via un filtre ou un render_callback
5. Chaque bloc conditionnel vérifie si son `product_type` correspond à un produit acheté

**Identification des produits** : utiliser les slugs ou IDs produit SureCart. Créer une constante dans le thème :

```php
define('JURIBLE_PRODUCTS', [
    'fiches'    => ['slug_fiche_1', 'slug_fiche_2', ...],
    'suite_ia'  => ['slug_suite_ia_30', 'slug_suite_ia_100'],
    'manuel'    => ['slug_manuel'],
    'academie'  => ['slug_academie'],  // 1 produit, 4 prix
    'prepa'     => ['slug_prepa'],
    'reussite'  => ['slug_reussite'],
]);
```

**Sécurité** : Le checkout ID est un identifiant SureCart unique. Si l'ID est invalide, afficher uniquement le bloc fixe de confirmation générique (sans récap commande).

**Estimation** : 1-2 jours de dev PHP.

#### Important — Pas de lien d'accès direct

La page Thank You ne contient **aucun lien direct vers ecole.jurible.com** ni aucun lien de téléchargement de fiches. Tout passe par l'email SureCart automatique qui contient :
- Le récap commande
- Le lien de création de mot de passe
- Les liens de téléchargement (pour les fiches)

**Raison** : Éviter que l'étudiant accède à la plateforme sans avoir créé son compte. L'email force la création de compte.

---

### PAGE 5 — Mon Compte

**URL** : `/mon-compte/`
**Template** : `page-compte.html`
**Form SureCart** : aucun (bloc `surecart/customer-dashboard`)

| # | Zone | Contenu | Implémentation |
|---|---|---|---|
| 1 | Header | Header standard | Template part `parts/header` |
| 2 | Titre | "Mon compte" | Bloc Heading H1 |
| 3 | Dashboard | Dashboard SureCart natif | `<!-- wp:surecart/customer-dashboard /-->` |
| 4 | Footer | Footer standard | Template part `parts/footer` |

**Fonctionnalités natives du dashboard SureCart :**
- Voir ses commandes et télécharger les reçus
- Gérer ses abonnements (upgrade, downgrade, résilier, mettre en pause)
- Mettre à jour ses moyens de paiement
- Modifier ses informations personnelles
- Changer son mot de passe

**Snippet requis** : Réactiver le bloc dashboard (voir section 1 — snippet `block_type_metadata`).

**Style** : Le dashboard SureCart v3 n'utilise plus le Shadow DOM (sauf les forms). Les styles du thème s'appliquent. Si besoin de personnalisation fine, utiliser les CSS variables SureCart déclarées au niveau `:root`.

**Évolution future** : On pourra ajouter des onglets custom (accès cours, tickets support) via la méthode décrite sur https://techarticles.co.uk/surecart-tabbed-customer-dashboard/ (PHP hooks + CSS pour les icônes).

---

## 5. MAPPING CSS — JURIBLE DS → SURECART

Les formulaires SureCart (checkout) utilisent le Shadow DOM. Pour appliquer l'identité Jurible, déclarer ces variables dans le CSS global du thème :

```css
/* ========================================
   SURECART × JURIBLE DESIGN SYSTEM
   Fichier : Additional CSS ou theme/style.css
   ======================================== */

:root:root {

  /* --- Couleurs principales --- */
  --sc-color-primary-500: #B0001D;          /* Bordeaux Jurible — boutons, focus */
  --sc-color-primary-600: #8B0016;          /* Bordeaux hover */
  --sc-color-primary-text: #FFFFFF;         /* Texte sur bouton primary */

  /* --- Typographie --- */
  --sc-font-sans: 'Poppins', sans-serif;

  /* --- Border Radius (DS Jurible = 8px par défaut) --- */
  --sc-border-radius-small: 4px;
  --sc-border-radius-medium: 8px;
  --sc-border-radius-large: 12px;
  --sc-border-radius-x-large: 16px;

  /* --- Focus Ring --- */
  --sc-focus-ring-color-primary: rgba(176, 0, 29, 0.3);  /* Bordeaux transparent */

  /* --- Inputs --- */
  --sc-input-border-color-focus: #B0001D;
  --sc-input-font-size-medium: 16px;        /* Body Regular DS */

}

/* --- Bouton principal — affinement via CSS Parts --- */
sc-order-submit::part(base) {
  font-family: 'Poppins', sans-serif;
  font-weight: 500;
  font-size: 14px;
  letter-spacing: 0.5px;
  text-transform: uppercase;
  padding: 12px 24px;                       /* Taille LG du DS */
  border-radius: 8px;
}

sc-order-submit::part(base):hover {
  background-color: #8B0016;
}

/* --- Order Bump — Badge violet DS --- */
sc-order-bump::part(base) {
  border: 2px solid #EDE9FE;
  border-radius: 8px;
  background: #FAFAFE;
}

/* --- Line Items — texte --- */
sc-line-item::part(base) {
  font-family: 'Poppins', sans-serif;
  color: #1A1A1A;                           /* text-dark DS */
}
```

**Important :**
- Tester les variables sur un checkout en mode test avant la mise en production
- Certaines variables peuvent varier selon la version de SureCart — vérifier avec l'inspecteur DevTools
- Le double `:root:root` est nécessaire pour la spécificité CSS face au Shadow DOM SureCart

---

## 6. CONFORMITÉ JURIDIQUE FRANÇAISE

### Règles légales e-commerce applicables

Le droit français (Code de la consommation + Code civil) impose des contraintes strictes sur les parcours d'achat en ligne. Voici ce qui s'applique à nos tunnels :

### ✅ Ce qui est AUTORISÉ

| Pratique | Base légale | Notre implémentation |
|---|---|---|
| Order bump sur le checkout | L121-1 à L121-24 (consentement explicite) | Case **décochée** par défaut, prix visible, description claire |
| Suggestion produit sur la page Thank You | — | Lien vers une page produit (pas d'auto-ajout au panier) |
| Code promo post-achat par email | — | Email automatique SureCart |
| Paiement échelonné (3×) | L312-1 et suivants | Via SureCart Installments (pas de crédit, juste échelonnement) |
| Case CGV obligatoire | L221-5 | Checkbox obligatoire + lien vers page CGV |

### ❌ Ce qui est INTERDIT

| Pratique | Base légale | Risque |
|---|---|---|
| Case pré-cochée pour un ajout au panier | L121-11 Code consommation | Amende + nullité de la vente |
| Pratique agressive (sollicitations répétées altérant la liberté de choix) | L121-6 Code consommation | Amende + action DGCCRF |
| Upsell 1-click qui réutilise la CB sans nouveau consentement | Art. 1127-2 Code civil ("double-clic") | Nullité du paiement |

### Recommandations de mise en conformité

1. **Order bumps** : Toujours décoché, prix TTC visible, texte descriptif clair → ✅ OK
2. **Thank You page** : Les upsells sont de simples liens vers des pages produit, pas des boutons "acheter en 1 clic" → ✅ OK
3. **Checkout** : Case CGV obligatoire (non pré-cochée), lien cliquable vers la page CGV → ✅ OK
5. **Emails post-achat** : Le récap commande + conditions de résiliation doivent figurer dans l'email SureCart automatique

### ⚠️ Action requise — Validation CGV

Les CGV doivent être rédigées ou validées par un **avocat spécialisé e-commerce** avant la mise en production. Budget estimé : 500-1 000€. Ce n'est pas optionnel — c'est une obligation légale pour la vente en ligne en France.

Points à couvrir dans les CGV :
- Droit de rétractation 14 jours (et exceptions pour contenu numérique)
- Conditions de résiliation des abonnements
- Modalités de paiement échelonné (3×)
- Protection des données personnelles (RGPD)

---

## 7. CONFIGURATION SURECART BACK-OFFICE

### Checklist de configuration initiale

| Étape | Où | Action |
|---|---|---|
| 1 | SureCart > Settings > General | Nom du store : "Jurible" |
| 2 | SureCart > Settings > Branding | Logo + couleurs Jurible (bordeaux #B0001D) |
| 3 | SureCart > Settings > Payment Processors | Connecter Stripe (mode Live) |
| 4 | SureCart > Settings > Tax | Configurer TVA France (si applicable aux produits numériques) |
| 5 | SureCart > Settings > Email | Configurer les emails transactionnels (confirmation commande, création compte) |
| 6 | SureCart > Products | Créer tous les produits (voir section 2) |
| 7 | SureCart > Forms | Créer les 3 forms : "Panier", "Académie", "Prépa" |
| 8 | SureCart > Revenue Boosters > Order Bumps | Configurer les 2 order bumps |
| 9 | SureCart > Revenue Boosters > Abandoned Checkout | Activer le suivi panier abandonné |
| 10 | SureCart > Settings > Customer Dashboard | Configurer la page dashboard : `/mon-compte/` |

### Forms à créer

| Form | Produits | Order Bump | Thank You |
|---|---|---|---|
| "Panier" | Via cart (line items) | Académie 1 mois (29€) | `/merci/` |
| "Académie" | Académie (Price Selector : 1/3/6/12 mois) | Suite IA 30 crédits (5€) | `/merci/` |
| "Prépa" | PASS DROIT (1× ou 3×) | — | `/merci/` |
| "Réussite" | Formule Réussite (397€) | — | `/merci/` |

### Emails automatiques à configurer

| Déclencheur | Email | Contenu |
|---|---|---|
| Commande confirmée | Confirmation commande | Récap + liens téléchargement (fiches) + lien création compte |
| Abonnement créé | Bienvenue Académie | Accès ecole.jurible.com + création mot de passe |
| Inscription Prépa | Bienvenue Prépa | Accès + infos référent + calendrier |
| Panier abandonné | Relance panier | Rappel produits + lien retour checkout |
| Échec paiement | Dunning | Invitation à mettre à jour le moyen de paiement |

---

## 8. CHECKLIST DE VALIDATION

### Avant la mise en production

**Tunnels :**
- [ ] Tunnel One-Time : ajouter 3 fiches au panier → slide-out → checkout → paiement test → Thank You
- [ ] Tunnel Académie : CTA "Commencer" → checkout → sélection durée (1/3/6/12 mois) → paiement test → Thank You
- [ ] Tunnel Prépa : CTA "S'inscrire" → checkout → paiement test (1× et 3×) → Thank You
- [ ] Tunnel Réussite : CTA "S'inscrire" → checkout → paiement test → Thank You + vérifier activation Académie 12 mois

**Order bumps :**
- [ ] Order bump Académie 1 mois (29€) sur checkout One-Time : décoché par défaut, s'ajoute au total quand coché
- [ ] Order bump Suite IA 30 crédits (5€) sur checkout Académie : décoché par défaut, s'ajoute au total quand coché
- [ ] Aucun order bump sur checkout Prépa
- [ ] Aucun order bump sur checkout Réussite

**Thank You page :**
- [ ] Achat Fiches seules → affiche bloc Fiches + bloc upsell Académie
- [ ] Achat Suite IA → affiche bloc Suite IA + bloc upsell Académie
- [ ] Achat Académie → affiche bloc Académie (pas d'upsell)
- [ ] Achat Prépa → affiche bloc Prépa (pas d'upsell)
- [ ] Achat Réussite → affiche bloc Réussite (pas d'upsell)
- [ ] Achat mixte (Fiches + Suite IA) → affiche les deux blocs + upsell Académie
- [ ] Achat mixte (Fiches + Académie via bump) → affiche bloc Fiches + bloc Académie (pas d'upsell)
- [ ] Checkout ID invalide → affiche confirmation générique sans récap

**Emails :**
- [ ] Email de confirmation reçu après chaque type d'achat
- [ ] Liens de téléchargement fonctionnels (Fiches, Manuel)
- [ ] Lien de création de compte fonctionnel
- [ ] Email panier abandonné envoyé après X heures

**Mon Compte :**
- [ ] Page accessible pour les clients connectés
- [ ] Dashboard affiche commandes, abonnements, moyens de paiement
- [ ] Résiliation d'abonnement fonctionne
- [ ] Téléchargement de reçus fonctionne

**Design :**
- [ ] CSS variables Jurible appliquées sur tous les formulaires SureCart
- [ ] Boutons bordeaux, typographie Poppins, border-radius 8px
- [ ] Responsive mobile : formulaire empilé sur 1 colonne, sidebar sous le form
- [ ] Header minimal et footer minimal sur les pages checkout et Thank You

**Juridique :**
- [ ] Cases order bump décochées par défaut
- [ ] Case CGV obligatoire et non pré-cochée (avec lien cliquable)
- [ ] Prix TTC affichés clairement
- [ ] Texte bouton inclut le montant (obligation "double-clic")
- [ ] CGV validées par un avocat

---

## RÉCAPITULATIF DES LIVRABLES

| # | Livrable | Responsable | Estimation |
|---|---|---|---|
| 1 | Template `page-checkout.html` | Dev FSE | 0,5 jour |
| 2 | Template `page-thank-you.html` | Dev FSE | 0,5 jour |
| 3 | Template `page-compte.html` | Dev FSE | 0,5 jour |
| 4 | 4 Forms SureCart (Panier, Académie, Prépa, Réussite) | Dev FSE | 1,5 jours |
| 5 | 4 Pages checkout (assemblage patterns + forms) | Dev FSE | 1 jour |
| 6 | Page Thank You (blocs conditionnels PHP) | Dev PHP | 1-2 jours |
| 7 | Page Mon Compte | Dev FSE | 0,5 jour |
| 8 | CSS Variables Jurible → SureCart | Dev CSS | 0,5 jour |
| 9 | Configuration back-office SureCart | Laura | 1 jour |
| 10 | Emails transactionnels | Laura + Dev | 0,5 jour |
| 11 | Tests tunnels complets | QA | 1 jour |

**Total estimé : 8-9 jours de dev + 1,5 jour Laura + 1 jour QA**

---

> **Mise à jour Brief 02** : Ajouter les 3 nouveaux templates (`page-checkout.html`, `page-thank-you.html`, `page-compte.html`) à la liste des templates. Le total passe de 8 à 11 templates.
>
> **Mise à jour Brief 03** : Ajouter les 6 pages e-commerce à la liste des pages. Le total passe de 23 à 29 pages.
