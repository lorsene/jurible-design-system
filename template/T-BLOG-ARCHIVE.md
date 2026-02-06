# T-BLOG-ARCHIVE

> Page d'archive du blog. Liste tous les articles.
> URL : `/blog`
> Objectif : Découverte du contenu, capture email, redirection vers Académie

## Structure (9 sections)

```
O01 - HEADER
├── Logo Jurible (lien → /)
├── Menu : Cours | Formules | Ressources | Blog
├── CTA : "Je rejoins l'Académie"
├── Se connecter
└── Sticky on scroll

────────────────────────────────────────────────────────────

H02 - HERO ARCHIVE
├── Badge : "Blog"
├── Titre H1 : "Conseils & Ressources pour réussir en droit"
├── Sous-titre : "Méthodologie, orientation, actualités juridiques et vie étudiante. Tout pour accompagner vos études de droit."
│
├── Barre de recherche : "Rechercher un article..."
│
└── Filtres (tabs) :
    └── [Tous] [Méthodologie] [Orientation] [Culture juridique] [L1] [L2] [L3]

────────────────────────────────────────────────────────────

[LAYOUT 2 COLONNES : MAIN + SIDEBAR]

MAIN (gauche, 2/3) ─────────────────────────────────────────

C03 - ARTICLE FEATURED
├── Image : Grande image de couverture
├── Badge : "Méthodologie"
├── Titre : "Comment réussir sa dissertation juridique : le guide complet 2024"
├── Extrait : "Découvrez la méthode pas à pas pour structurer, rédiger et réussir vos dissertations juridiques. Conseils d'experts, exemples concrets et erreurs à éviter."
├── Meta : "5 décembre 2024 • 12 min de lecture"
└── CTA : "Lire l'article →"

────────────────────────────────────────────────────────────

C03 - DERNIERS ARTICLES
├── Titre : "Derniers articles"
│
└── Grid 6 cards articles :
    │
    ├── Card article :
    │   ├── Badge catégorie
    │   ├── Titre
    │   ├── Extrait (2 lignes)
    │   ├── Meta : "Date • X min"
    │   └── CTA : "Lire →"
    │
    ├── [Article 1] 5 erreurs à éviter dans le commentaire d'arrêt
    ├── [Article 2] Droit public ou droit privé : comment choisir ?
    ├── [Article 3] Comment organiser ses révisions en période d'examens
    ├── [Article 4] Réforme du droit des contrats : ce qui change en 2025
    ├── [Article 5] Le cas pratique : méthode et astuces pour exceller
    └── [Article 6] Les débouchés après une licence de droit

────────────────────────────────────────────────────────────

M03 - PAGINATION
└── ‹ [1] [2] [3] ... [12] ›

────────────────────────────────────────────────────────────

SIDEBAR (droite, 1/3) ──────────────────────────────────────

O03 - SIDEBAR BLOG
│
├── [BLOC 1] NEWSLETTER :
│   ├── Titre : "Restez informé"
│   ├── Description : "Recevez nos meilleurs conseils et actualités juridiques directement dans votre boîte mail."
│   ├── Input : "Votre email"
│   ├── CTA : "S'inscrire"
│   └── Note : "Pas de spam. Désinscription en 1 clic."
│
├── [BLOC 2] CTA ACADÉMIE :
│   ├── Badge : "Recommandé"
│   ├── Titre : "Rejoignez l'Académie Jurible"
│   ├── Description : "Accès illimité à tous nos cours vidéo, fiches et exercices."
│   ├── Liste :
│   │   ├── ✓ 180+ vidéos de cours
│   │   ├── ✓ 2 000+ QCM corrigés
│   │   └── ✓ Sans engagement
│   ├── Prix : "29 €/mois"
│   └── CTA : "Découvrir l'Académie"
│
├── [BLOC 3] ARTICLES POPULAIRES :
│   ├── Titre : "Articles populaires"
│   └── Liste Top 5 :
│       ├── 1. Comment réussir sa dissertation juridique — 12 min • 15K lectures
│       ├── 2. Les 10 arrêts incontournables en droit civil — 8 min • 12K lectures
│       ├── 3. Réussir sa L1 droit : le guide ultime — 15 min • 10K lectures
│       ├── 4. 5 erreurs à éviter dans le commentaire d'arrêt — 8 min • 9K lectures
│       └── 5. Préparer le CRFPA : par où commencer ? — 14 min • 8K lectures
│
└── [BLOC 4] CATÉGORIES :
    ├── Titre : "Catégories"
    └── Liste :
        ├── Méthodologie — 24 articles
        ├── Orientation — 18 articles
        ├── Vie étudiante — 15 articles
        ├── Actualités juridiques — 32 articles
        ├── Examens & Concours — 12 articles
        └── Carrières — 9 articles

────────────────────────────────────────────────────────────

[FIN LAYOUT 2 COLONNES]

────────────────────────────────────────────────────────────

P04 - CTA ACADÉMIE (pleine largeur)
├── Badge : "Offre spéciale lecteurs"
├── Titre : "Passez au niveau supérieur avec l'Académie Jurible"
├── Description : "Accédez à l'ensemble de nos cours vidéo, fiches de révision animées, QCM et flashcards pour réussir votre année."
├── Liste :
│   ├── ✓ 180+ vidéos de cours par matière
│   ├── ✓ 2 000+ QCM pour s'entraîner
│   └── ✓ Sans engagement, annulable à tout moment
├── Encart pricing : "Académie Jurible • Accès illimité • 29 €/mois"
├── CTA Primary : "Découvrir l'Académie →"
└── CTA Secondary : "S'abonner maintenant"

────────────────────────────────────────────────────────────

O02 - FOOTER
├── Logo + Baseline
├── Colonnes (4) : Offres | Cours | Ressources | Légal
├── Réseaux : X, Instagram, LinkedIn, YouTube
├── Paiement : VISA, MC, CB
└── Copyright
```

## Composants utilisés

| ID | Composant DS | Section | Obligatoire |
|----|--------------|---------|-------------|
| O01 | Header / Navbar | Header | ✅ |
| H02 | Hero Archive | Hero | ✅ |
| C03 | Article Blog (featured) | Article à la une | ✅ |
| C03 | Article Blog (grid) | Derniers articles | ✅ |
| M03 | Pagination | Pagination | ✅ |
| O03 | Blog Components (sidebar) | Sidebar | ✅ |
| P04 | Bloc CTA Académie | CTA pleine largeur | ✅ |
| O02 | Footer | Footer | ✅ |

## Notes techniques

1. **Layout** : 2 colonnes (main 66% / sidebar 33%) sur desktop, 1 colonne sur mobile
2. **Sidebar sticky** : Les blocs restent visibles au scroll sur desktop
3. **Filtres** : Filtrage côté client (JS) ou rechargement page
4. **Recherche** : Recherche Ajax ou redirection vers /blog?s={query}
5. **Pagination** : 6 articles par page

## SEO

- **H1** : "Conseils & Ressources pour réussir en droit"
- **Meta title** : "Blog Jurible | Conseils Méthodologie et Actualités Droit"
- **Meta description** : "Découvrez nos articles sur la méthodologie juridique, l'orientation, la vie étudiante et les actualités du droit. Conseils d'experts pour réussir vos études."
- **Schema.org** : `Blog` + `ItemList`

---

*Template créé le 6 février 2026 — Fidèle à la maquette page_blog_general.pdf*
