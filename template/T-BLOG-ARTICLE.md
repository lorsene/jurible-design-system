# T-BLOG-ARTICLE

> Page article de blog. Affiche un article complet.
> URL : `/blog/{slug}`
> Objectif : Lecture, engagement, conversion vers Académie

## Structure (12 sections)

```
O01 - HEADER
├── Logo Jurible (lien → /)
├── Menu : Cours | Formules | Ressources | Blog
├── CTA : "Je rejoins l'Académie"
├── Se connecter
└── Sticky on scroll

────────────────────────────────────────────────────────────

M02 - BREADCRUMB
└── Accueil › Blog › {Catégorie} › {Titre article}

────────────────────────────────────────────────────────────

H05 - HERO ARTICLE
├── Badge : "{Catégorie}"
├── Titre H1 : "{Titre de l'article}"
│
├── Meta auteur :
│   ├── Photo auteur
│   ├── Nom : "{Auteur}"
│   └── Date : "{Date publication}"
│
├── Meta article :
│   ├── ⏱️ "{X} min de lecture"
│   └── 👁️ "{X} lectures"
│
└── Image de couverture (optionnel)

────────────────────────────────────────────────────────────

[LAYOUT 2 COLONNES : MAIN + SIDEBAR]

MAIN (gauche, 2/3) ─────────────────────────────────────────

O05 - CONTENU ARTICLE (Prose)
│
├── Introduction :
│   └── "La dissertation juridique est l'un des exercices les plus redoutés..."
│
├── Sommaire intégré (mobile uniquement) :
│   └── Liste cliquable des sections
│
├── Section I :
│   ├── Titre H2 : "I. Comprendre l'exercice de la dissertation"
│   ├── Paragraphes
│   ├── Liste à puces
│   │
│   └── [BLOC SPÉCIAL] À RETENIR :
│       ├── Icône : 📌
│       ├── Titre : "À RETENIR"
│       └── Contenu : "La dissertation juridique évalue votre capacité à penser en juriste..."
│
├── Section II :
│   ├── Titre H2 : "II. Analyser le sujet"
│   ├── Sous-section H3 : "A. Identifier les termes clés"
│   ├── Paragraphes
│   │
│   ├── [BLOC SPÉCIAL] EXEMPLE :
│   │   ├── Icône : 💡
│   │   ├── Titre : "EXEMPLE"
│   │   └── Contenu : "Pour le sujet « Le contrat et la loi »..."
│   │
│   ├── Sous-section H3 : "B. Délimiter le sujet"
│   ├── Paragraphes
│   │
│   └── [BLOC SPÉCIAL] DÉFINITION :
│       ├── Icône : 📖
│       ├── Titre : "DÉFINITION"
│       └── Contenu : "Dissertation juridique : Exercice de réflexion..."
│
├── [ENCART PRODUIT] — C01 :
│   ├── Titre : "Manuel de méthodologie juridique"
│   ├── Description : "Toutes les méthodes expliquées avec des exemples corrigés."
│   └── CTA : "Découvrir →"
│
├── Section III :
│   ├── Titre H2 : "III. Trouver la problématique"
│   ├── Paragraphes
│   │
│   └── [BLOC SPÉCIAL] ATTENTION :
│       ├── Icône : ⚠️
│       ├── Titre : "ATTENTION"
│       └── Contenu : "Ne confondez pas la problématique avec une simple reformulation..."
│
├── Section IV :
│   ├── Titre H2 : "IV. Construire le plan"
│   ├── Paragraphes
│   ├── Schéma/Image : "Structure type d'une dissertation juridique"
│   │
│   └── [BLOC SPÉCIAL] ASTUCE :
│       ├── Icône : 💡
│       ├── Titre : "ASTUCE"
│       └── Contenu : "Pour vérifier la qualité de votre plan, relisez uniquement vos titres..."
│
├── Section V :
│   ├── Titre H2 : "V. Rédiger l'introduction"
│   ├── Paragraphes
│   │
│   └── [BLOC SPÉCIAL] IMPORTANT :
│       ├── Icône : ✓
│       ├── Titre : "IMPORTANT"
│       └── Contenu : "L'introduction représente généralement 20 à 25% de la copie..."
│
├── Section VI :
│   ├── Titre H2 : "VI. Le développement"
│   ├── Paragraphes
│   │
│   └── [BLOC SPÉCIAL] CITATION :
│       ├── Style : Blockquote
│       ├── Citation : "Tout fait quelconque de l'homme, qui cause à autrui un dommage..."
│       └── Source : "Article 1240 du Code civil"
│
├── Section VII :
│   ├── Titre H2 : "VII. Les erreurs à éviter"
│   ├── Liste des erreurs
│   │
│   └── [BLOC SPÉCIAL] EN SAVOIR PLUS :
│       ├── Icône : 📚
│       ├── Contenu : "Consultez notre cours complet sur la méthodologie juridique..."
│       └── CTA : "Voir le cours →"
│
├── Pour approfondir :
│   ├── 📄 Fiche de révision PDF Dissertation ↓
│   ├── 🔗 Article Dalloz sur la méthodologie →
│   └── 🎬 Vidéo complémentaire YouTube →
│
└── Conclusion :
    └── "La dissertation juridique est un exercice exigeant mais accessible..."

────────────────────────────────────────────────────────────

[SECTION] TAGS
└── Badges : [Dissertation] [Méthodologie] [Droit] [Examens] [L1 Droit] [L2 Droit]

────────────────────────────────────────────────────────────

[SECTION] PARTAGE
├── Titre : "Partager cet article"
└── Boutons : [Facebook] [X] [LinkedIn]

────────────────────────────────────────────────────────────

C04 - AUTEUR
├── Titre : "Rédigé par"
├── Photo : {Photo auteur}
├── Nom : "{Auteur}"
├── Bio : "Docteure en droit privé et chargée d'enseignement à l'Université Paris 1 Panthéon-Sorbonne. Spécialiste en méthodologie juridique, Marie accompagne les étudiants depuis plus de 10 ans."
└── CTA : "Voir tous ses articles →"

────────────────────────────────────────────────────────────

SIDEBAR (droite, 1/3) — STICKY ─────────────────────────────

O03 - SIDEBAR ARTICLE
│
├── [BLOC 1] SOMMAIRE (sticky) :
│   ├── Titre : "Sommaire"
│   └── Liste cliquable :
│       ├── I. Comprendre l'exercice
│       ├── II. Analyser le sujet
│       ├── III. Trouver la problématique
│       ├── IV. Construire le plan
│       ├── V. Rédiger l'introduction
│       ├── VI. Le développement
│       └── VII. Les erreurs à éviter
│
├── [BLOC 2] CTA ACADÉMIE :
│   ├── Badge : "Recommandé"
│   ├── Titre : "Maîtrisez la dissertation avec l'Académie"
│   ├── Description : "Cours vidéo complets, exemples corrigés et exercices d'entraînement."
│   └── CTA : "Découvrir l'Académie"
│
└── [BLOC 3] NEWSLETTER :
    ├── Titre : "Recevez nos conseils"
    ├── Description : "Astuces méthodologiques et fiches de révision par email."
    ├── Input : "Votre email"
    └── CTA : "S'inscrire"

────────────────────────────────────────────────────────────

[FIN LAYOUT 2 COLONNES]

────────────────────────────────────────────────────────────

P04 - CTA ACADÉMIE
├── Badge : "Pour aller plus loin"
├── Titre : "Maîtrisez tous les exercices juridiques"
├── Description : "Accédez à nos cours vidéo complets sur la méthodologie : dissertation, commentaire d'arrêt, cas pratique et fiche d'arrêt."
├── Liste :
│   ├── ✓ Cours vidéo par des enseignants
│   ├── ✓ Exemples intégralement corrigés
│   └── ✓ QCM d'entraînement
├── Pricing : "Académie Jurible • Accès illimité • 29 €/mois"
├── CTA Primary : "Découvrir l'Académie →"
└── CTA Secondary : "S'abonner"

────────────────────────────────────────────────────────────

C03 - ARTICLES SIMILAIRES
├── Titre : "Articles similaires"
│
└── Grid 3 cards :
    ├── Le commentaire d'arrêt : méthode complète et exemples — 10 min
    ├── 5 erreurs à éviter dans le cas pratique — 8 min
    └── Comment faire une fiche d'arrêt parfaite — 7 min

────────────────────────────────────────────────────────────

P16 - COMMENTAIRES (optionnel)
├── Titre : "Commentaires ({nb})"
│
├── Formulaire :
│   ├── Input : "Votre nom"
│   ├── Input : "Votre email"
│   ├── Textarea : "Votre commentaire..."
│   └── CTA : "Publier le commentaire"
│
└── Liste commentaires :
    │
    ├── Commentaire :
    │   ├── Nom : "Thomas L."
    │   ├── Date : "Il y a 2 jours"
    │   ├── Contenu : "Super article ! J'ai enfin compris comment construire une vraie problématique..."
    │   └── CTA : "Répondre"
    │
    └── Commentaire :
        ├── Nom : "Emma R."
        ├── Date : "Il y a 5 jours"
        ├── Contenu : "Est-ce que cette méthode fonctionne aussi pour les dissertations en droit public ?..."
        └── CTA : "Répondre"

────────────────────────────────────────────────────────────

O02 - FOOTER
├── Logo + Baseline
├── Colonnes (4)
├── Réseaux + Paiement
└── Copyright
```

## Blocs spéciaux prose (O05)

| Bloc | Icône | Couleur fond | Usage |
|------|-------|--------------|-------|
| À RETENIR | 📌 | Violet clair (#EDE9FE) | Point clé à mémoriser |
| EXEMPLE | 💡 | Gris clair | Illustration concrète |
| DÉFINITION | 📖 | Bleu clair | Terme technique |
| ASTUCE | 💡 | Vert clair | Conseil pratique |
| ATTENTION | ⚠️ | Orange clair | Erreur à éviter |
| IMPORTANT | ✓ | Bordeaux clair | Information cruciale |
| EN SAVOIR PLUS | 📚 | Gris | Lien vers ressource |
| CITATION | — | Bordure gauche | Citation juridique |

## Composants utilisés

| ID | Composant DS | Section | Obligatoire |
|----|--------------|---------|-------------|
| O01 | Header / Navbar | Header | ✅ |
| M02 | Breadcrumb | Breadcrumb | ✅ |
| H05 | Hero Article Blog 1 | Hero | ✅ |
| O05 | Prose | Contenu article | ✅ |
| C01 | CTA Card | Encart produit | ⚪ Optionnel |
| O03 | Blog Components (sidebar) | Sidebar | ✅ |
| C04 | Bio Auteur | Auteur | ✅ |
| P04 | Bloc CTA Académie | CTA | ✅ |
| C03 | Article Blog (×3) | Articles similaires | ✅ |
| P16 | Forms | Commentaires | ⚪ Optionnel |
| O02 | Footer | Footer | ✅ |

## Notes techniques

1. **Sommaire sticky** : Suit le scroll, highlight la section active
2. **Blocs spéciaux** : Styles CSS distincts pour chaque type
3. **Encart produit** : Intercalé après ~40% de l'article
4. **Mobile** : Sidebar disparaît, sommaire intégré en début d'article
5. **Commentaires** : Section optionnelle, peut être désactivée
6. **Temps de lecture** : Calculé automatiquement (200 mots/min)

## SEO

- **H1** : Titre de l'article
- **Meta title** : "{Titre} | Blog Jurible"
- **Meta description** : Extrait de l'article (155 caractères)
- **Schema.org** : `Article` + `BreadcrumbList` + `Person` (auteur)
- **Open Graph** : Image, titre, description pour partage social

## Mobile spécifique

- CTA Académie sticky en haut de l'article
- CTA Newsletter en bas de l'article
- Sommaire en accordéon au début

---

*Template créé le 6 février 2026 — Fidèle à la maquette page_article_blog.pdf*
