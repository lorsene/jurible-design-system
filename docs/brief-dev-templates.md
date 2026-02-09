# Brief Dev — Création des Templates FSE
> Date : 9 février 2026

## Prérequis : Créer 2 template parts

### 1. Header Minimal (`parts/header-minimal.html`)
- **Fichier HTML de référence** : `assets/04-organisms/O01b-header-minimal.html`
- **Contenu** : `← Retour` (lien, renvoie page précédente) | Logo "Jurible" centré | Icône panier SureCart (Cart Menu Icon)
- **Variante checkout** : remplacer le panier par texte "🔒 Paiement sécurisé" → gérable via une classe CSS modifier ou un template part séparé (`header-checkout`)
- **Comportement scroll** : même glassmorphism que le header principal (backdrop-filter blur 12px)
- **Specs** : padding 14px 40px desktop / 12px 16px mobile

### 2. Footer Minimal (`parts/footer-minimal.html`)
- **Fichier HTML de référence** : `assets/04-organisms/O02b-footer-minimal.html`
- **Contenu** : Logo "Jurible" (20px) | Liens légaux (CGV · Mentions légales · Confidentialité · Contact) | © 2026 Jurible
- **Variante checkout** : ajouter trust badges au-dessus (🔒 Paiement sécurisé SSL · 💳 Stripe & PayPal · ↩️ Satisfait ou remboursé)
- **Fond** : #1A1A1A (identique footer complet)
- **Specs** : padding 32px 48px desktop / 24px 16px mobile

---

## Templates à créer (7)

| # | Template | Slug | Header (template part) | Footer (template part) |
|---|----------|------|----------------------|----------------------|
| 1 | **Défaut** | `templates/index.html` | `parts/header.html` | `parts/footer.html` |
| 2 | **Landing** | `templates/landing.html` | `parts/header.html` | `parts/footer-minimal.html` |
| 3 | **Blog Article** | `templates/single.html` | `parts/header.html` | `parts/footer.html` |
| 4 | **Blog Archive** | `templates/archive.html` | `parts/header.html` | `parts/footer.html` |
| 5 | **Checkout SC** | `templates/checkout.html` | `parts/header-minimal.html` (variante checkout) | `parts/footer-minimal.html` (variante checkout) |
| 6 | **Catalogue SC** | `templates/catalog.html` | `parts/header.html` | `parts/footer-minimal.html` |
| 7 | **Produit SC** | `templates/product.html` | `parts/header-minimal.html` | `parts/footer-minimal.html` |

## Structure de chaque template

Chaque template FSE suit la même logique :

```html
<!-- wp:template-part {"slug":"header","area":"header"} /-->

<!-- wp:group {"tagName":"main","layout":{"type":"default"}} -->
<main class="wp-block-group">
    <!-- Le contenu sera inséré ici via les patterns/compositions -->
    <!-- wp:post-content /-->
</main>
<!-- /wp:group -->

<!-- wp:template-part {"slug":"footer","area":"footer"} /-->
```

Pour le template Landing, remplacer `footer` par `footer-minimal`.
Pour Checkout et Produit, remplacer les deux parts.

## Ordre de travail

1. Intégrer `header-minimal` comme template part dans le FSE
2. Intégrer `footer-minimal` comme template part dans le FSE
3. Créer les 7 templates (5 min chacun, c'est juste assembler les parts)
4. Vérifier que SureCart utilise bien les templates Checkout/Catalogue/Produit

## Notes SureCart

- Le **Cart Menu Icon** (bloc SureCart) doit être ajouté dans le header-minimal pour l'icône panier
- Les templates Checkout/Catalogue/Produit doivent être assignés dans les réglages SureCart
- Vérifier la doc SureCart pour le mapping template : https://surecart.com/docs/product-pages-guide/

## Fichiers fournis

- `assets/04-organisms/O01b-header-minimal.html` — Référence HTML header minimal
- `assets/04-organisms/O02b-footer-minimal.html` — Référence HTML footer minimal
- `docs/templates-wordpress.md` — Définition complète des 7 templates
