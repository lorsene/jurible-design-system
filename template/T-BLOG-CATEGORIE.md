# T-BLOG-CATEGORIE

> Page catégorie du blog. Liste les articles d'une catégorie.
> URLs : `/blog/methodologie`, `/blog/orientation`, `/blog/vie-etudiante`, `/blog/actualites`, `/blog/examens`, `/blog/carrieres`
> Réutilisé : ×6 pages (ou plus selon catégories)

## Variables dynamiques

| Variable | Exemples |
|----------|----------|
| `{categorie}` | Méthodologie juridique, Orientation, Vie étudiante, etc. |
| `{categorie_slug}` | methodologie, orientation, vie-etudiante, etc. |
| `{nb_articles}` | 24, 18, 15, etc. |
| `{description}` | Texte SEO spécifique à la catégorie |

## Structure (10 sections)

```
O01 - HEADER
├── Logo Jurible (lien → /)
├── Menu : Cours | Formules | Ressources | Blog
├── CTA : "Je rejoins l'Académie"
├── Se connecter
└── Sticky on scroll

────────────────────────────────────────────────────────────

M02 - BREADCRUMB
└── Accueil › Blog › {categorie}

────────────────────────────────────────────────────────────

H02 - HERO CATÉGORIE
├── Badge : "{nb_articles} articles"
├── Titre H1 : "{categorie} : méthode des exercices de droit"
├── Sous-titre : "Maîtrisez les techniques essentielles pour réussir vos exercices juridiques : dissertation, commentaire d'arrêt, cas pratique, fiche d'arrêt. Guides complets et conseils de méthodologie pour les étudiants en droit."
│
└── Filtres :
    ├── Tri : "Plus récents" (dropdown)
    └── Niveaux : [Tous] [L1] [L2] [L3] [Master]

────────────────────────────────────────────────────────────

[LAYOUT 2 COLONNES : MAIN + SIDEBAR]

MAIN (gauche, 2/3) ─────────────────────────────────────────

O05 - INTRO SEO
├── Titre H2 : "Qu'est-ce que la {categorie} ?"
├── Paragraphe 1 : Définition et contexte
├── Paragraphe 2 : Importance pour les étudiants
│
├── Liste des exercices (si méthodologie) :
│   ├── 📝 La dissertation juridique
│   ├── 📄 Le commentaire d'arrêt
│   ├── ⚖️ Le cas pratique
│   └── 📋 La fiche d'arrêt
│
└── Citation (optionnel) :
    └── "La méthodologie juridique est comme la grammaire d'une langue..."

────────────────────────────────────────────────────────────

C03 - ARTICLE FEATURED
├── Badge : "Guide complet"
├── Image : Couverture article
├── Titre : "{Article principal de la catégorie}"
├── Extrait
├── Meta : "Date • X min"
└── CTA : "Lire l'article →"

────────────────────────────────────────────────────────────

C03 - ARTICLES GRID
├── Titre : "Articles sur la {categorie}"
│
├── Card article × 2
│
├── [ENCART PRODUIT INTERCALÉ] — C01 :
│   ├── Titre : "Manuel de méthodologie juridique"
│   ├── Description : "Toutes les méthodes expliquées pas à pas avec des exemples corrigés."
│   └── CTA : "Découvrir le manuel →"
│
├── Card article × 2
│
├── Card article × 2
│
└── Card article × 2

Note : L'encart produit est contextuel
- Catégorie Méthodologie → Manuel
- Autres catégories → Académie

────────────────────────────────────────────────────────────

M03 - PAGINATION
└── ‹ [1] [2] [3] ... [8] ›

────────────────────────────────────────────────────────────

SIDEBAR (droite, 1/3) ──────────────────────────────────────

O03 - SIDEBAR BLOG
│
├── [BLOC 1] CTA ACADÉMIE :
│   ├── Badge : "Recommandé"
│   ├── Titre : "Maîtrisez la {categorie} avec l'Académie"
│   ├── Description : "Cours vidéo complets sur tous les exercices juridiques avec corrections."
│   ├── Liste :
│   │   ├── ✓ Cours méthodologie en vidéo
│   │   ├── ✓ Exemples corrigés commentés
│   │   └── ✓ QCM d'entraînement
│   ├── Prix : "29 €/mois"
│   └── CTA : "Découvrir l'Académie"
│
├── [BLOC 2] NEWSLETTER :
│   ├── Titre : "Conseils {categorie}"
│   ├── Description : "Recevez nos astuces et fiches méthode directement par email."
│   ├── Input : "Votre email"
│   ├── CTA : "S'inscrire"
│   └── Note : "Pas de spam. Désinscription en 1 clic."
│
├── [BLOC 3] LES PLUS LUS :
│   ├── Titre : "Les plus lus"
│   └── Liste Top 4 (filtrée par catégorie) :
│       ├── 1. Comment réussir sa dissertation juridique — 12 min • 15K lectures
│       ├── 2. 5 erreurs dans le commentaire d'arrêt — 8 min • 12K lectures
│       ├── 3. Le cas pratique : méthode complète — 10 min • 10K lectures
│       └── 4. Comment faire une fiche d'arrêt — 7 min • 9K lectures
│
└── [BLOC 4] AUTRES CATÉGORIES :
    ├── Titre : "Autres catégories"
    └── Liste (exclut catégorie actuelle) :
        ├── Orientation — 18 articles
        ├── Vie étudiante — 15 articles
        ├── Actualités juridiques — 32 articles
        ├── Examens & Concours — 12 articles
        └── Carrières — 9 articles

────────────────────────────────────────────────────────────

[FIN LAYOUT 2 COLONNES]

────────────────────────────────────────────────────────────

[SECTION] EXPLORER CATÉGORIES
├── Titre : "Explorer d'autres catégories"
│
└── Grid 4 cards catégories :
    ├── Orientation — 18 articles
    ├── Vie étudiante — 15 articles
    ├── Actualités juridiques — 32 articles
    └── Examens & Concours — 12 articles

────────────────────────────────────────────────────────────

P04 - CTA PRODUIT (contextuel)
│
├── [SI CATÉGORIE = MÉTHODOLOGIE] :
│   ├── Badge : "Manuel méthodologie"
│   ├── Titre : "Maîtrisez tous les exercices juridiques"
│   ├── Description : "Notre manuel de méthodologie vous guide pas à pas dans chaque exercice."
│   ├── Liste :
│   │   ├── ✓ Méthodes détaillées pour chaque exercice
│   │   ├── ✓ Exemples entièrement corrigés
│   │   └── ✓ Conseils de correcteurs
│   ├── Pricing : "Manuel Méthodologie • Format PDF + Vidéos • 24€ (au lieu de 29€)"
│   └── CTA : "Découvrir le manuel →"
│
└── [SINON] :
    └── CTA Académie standard (voir T-BLOG-ARCHIVE)

────────────────────────────────────────────────────────────

O02 - FOOTER
├── Logo + Baseline
├── Colonnes (4)
├── Réseaux + Paiement
└── Copyright
```

## Composants utilisés

| ID | Composant DS | Section | Obligatoire |
|----|--------------|---------|-------------|
| O01 | Header / Navbar | Header | ✅ |
| M02 | Breadcrumb | Breadcrumb | ✅ |
| H02 | Hero Archive | Hero catégorie | ✅ |
| O05 | Prose | Intro SEO | ✅ |
| C03 | Article Blog (featured) | Article à la une | ✅ |
| C03 | Article Blog (grid) | Articles | ✅ |
| C01 | CTA Card | Encart produit | ✅ |
| M03 | Pagination | Pagination | ✅ |
| O03 | Blog Components (sidebar) | Sidebar | ✅ |
| P04 | Bloc CTA Académie / Manuel | CTA final | ✅ |
| O02 | Footer | Footer | ✅ |

## Notes techniques

1. **Encart produit intercalé** : Après le 2ème article dans la grid
2. **CTA contextuel** : Manuel sur Méthodologie, Académie ailleurs
3. **Intro SEO** : Texte unique par catégorie (pas de duplicate content)
4. **Filtres** : Par niveau (L1/L2/L3/Master) + tri (récent/populaire)
5. **Catégories sidebar** : Exclut la catégorie actuelle

## SEO

- **H1** : "{categorie} : méthode des exercices de droit"
- **Meta title** : "{categorie} | Blog Jurible"
- **Meta description** : Dynamique selon catégorie
- **Schema.org** : `CollectionPage` + `BreadcrumbList` + `ItemList`

## Catégories prévues

| Catégorie | URL | Nb articles |
|-----------|-----|-------------|
| Méthodologie | `/blog/methodologie` | 24 |
| Orientation | `/blog/orientation` | 18 |
| Vie étudiante | `/blog/vie-etudiante` | 15 |
| Actualités juridiques | `/blog/actualites` | 32 |
| Examens & Concours | `/blog/examens` | 12 |
| Carrières | `/blog/carrieres` | 9 |

---

*Template créé le 6 février 2026 — Fidèle à la maquette page_categorie_blog.pdf*
