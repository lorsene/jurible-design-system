# Architecture - Nouveau site (jurible.com)

## Vue d'ensemble

- **Domaine** : jurible.com
- **Total pages** : ~35 pages principales + ~80 pages support × matière
- **Stack** : WordPress FSE + SureCart

## Menu principal

```
Cours | Nos offres | Prépas | Ressources | À propos
```

## Structure des pages

### Pages principales (~35)

#### Accueil & Conversion
| Page | URL | Template |
|------|-----|----------|
| Homepage | `/` | Hero Conversion + sections |
| Offres | `/nos-offres/` | Pricing Académie |
| Suite IA | `/suite-ia/` | Landing produit |
| Académie Jurible | `/academie/` | Landing produit |

#### Prépas
| Page | URL | Template |
|------|-----|----------|
| Hub Prépas | `/prepas/` | Archive |
| Prépa CRFPA | `/prepas/crfpa/` | Landing prépa |
| Prépa ENM | `/prepas/enm/` | Landing prépa |
| etc. | | |

#### Ressources & Blog
| Page | URL | Template |
|------|-----|----------|
| Blog | `/blog/` | Archive articles |
| Article (template) | `/blog/[slug]/` | Article single |
| Méthodologie | `/methodologie/` | Hub méthodo |

#### À propos
| Page | URL | Template |
|------|-----|----------|
| À propos | `/a-propos/` | Page simple |
| L'équipe | `/equipe/` | Grid enseignants |
| Contact | `/contact/` | Formulaire |
| Mentions légales | `/mentions-legales/` | Prose |
| CGV | `/cgv/` | Prose |

### Pages Support × Matière (~80+)

Structure : `/cours/[type]-[matiere]/`

Exemples :
- `/cours/qcm-droit-constitutionnel/`
- `/cours/flashcards-droit-civil/`
- `/cours/fiches-droit-penal/`

**Template réutilisable** avec :
- Hero Produit
- Section fonctionnalités
- Section tarifs
- CTA Final

## Templates réutilisables

| Template | Usage | Composants clés |
|----------|-------|-----------------|
| Landing Produit | Pages offres | H03 + C08 + P07 + P10 |
| Landing Prépa | Pages prépas | H01 + C13 + P05 + P10 |
| Archive | Listings | H02 + Grid cards |
| Article Blog | Posts | H05/H06 + O05 + C02 |
| Page Simple | Légal, contact | H04 + O05 |

## Composants fréquents par page

### Homepage
- H01-hero-conversion
- C06-reassurance
- P12-features
- C18-testimonial
- P09-logos
- P10-cta-final

### Page Offres
- H02-hero-archive
- P07-pricing-academie
- P05-quelle-offre-choisir
- C07-faq-accordeon
- P10-cta-final

### Page Cours (support × matière)
- H03-hero-produit
- C08-fonctionnalite
- P02-bloc-texte-image
- C12/C13-pricing
- P10-cta-final
