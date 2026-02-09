# Templates WordPress FSE — Jurible.com
> ✅ Validé le 9 février 2026

## Résumé

**7 templates** | **2 variantes Header** | **2 variantes Footer**

## Templates

| # | Template | Slug FSE | Header | Footer | Pages concernées |
|---|----------|----------|--------|--------|-----------------|
| 1 | **Défaut** | `default` | Principal | Complet | Homepage, cours × matière (~80), pages simples (à propos, équipe, contact, FAQ), pages légales, 404, résultats recherche |
| 2 | **Landing** | `landing` | Principal | Minimal | Landings produit : académie, suite IA, fiches, manuel, prépas (CRFPA, ENM…) |
| 3 | **Blog Article** | `single-post` | Principal | Complet | /blog/[slug] |
| 4 | **Blog Archive** | `archive` | Principal | Complet | /blog, /blog/categorie/[slug] |
| 5 | **Checkout SC** | `checkout` | Minimal | Minimal | /checkout, /panier |
| 6 | **Catalogue SC** | `catalog` | Principal | Minimal | Collections produits SureCart |
| 7 | **Produit SC** | `product` | Minimal | Minimal | Pages produit SureCart |

## Variantes Header

| Variante | Slug | Contenu | Existe ? |
|----------|------|---------|----------|
| **Principal** | `header` | Logo + Mega-menu (Cours, Nos offres, Prépas, Ressources, À propos) + CTA Compte + Icône Panier SC | ✅ Existe (O01) |
| **Minimal** | `header-minimal` | Logo centré + Lien "← Retour à la boutique" | ❌ À créer |

## Variantes Footer

| Variante | Slug | Contenu | Existe ? |
|----------|------|---------|----------|
| **Complet** | `footer` | 4 colonnes (Produits, Ressources, Entreprise, Légal) + Newsletter + Réseaux sociaux + © 2026 | ✅ Existe (O02) |
| **Minimal** | `footer-minimal` | 1 ligne : Logo + Liens légaux essentiels (CGV, Confidentialité, Contact) + © 2026 | ❌ À créer |

## Matrice Templates × Header/Footer

```
                    Header Principal    Header Minimal
Footer Complet      Défaut              —
                    Blog Article
                    Blog Archive
Footer Minimal      Landing             Checkout SC
                    Catalogue SC        Produit SC
```

## Prochaines étapes

- [ ] Étape 1.2 : Designer Header Minimal dans Figma
- [ ] Étape 1.3 : Designer Footer Minimal dans Figma
- [ ] Étape 1.4 : Dev intègre les 2 variantes en FSE
- [ ] Étape 1.5 : Dev crée les 7 templates dans FSE
