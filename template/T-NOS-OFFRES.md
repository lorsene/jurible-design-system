# T-NOS-OFFRES

> Page de comparaison de toutes les offres Jurible. Page de décision d'achat.
> URL : `/nos-offres`
> Objectif : Aider à choisir la bonne offre et convertir

## Structure (11 sections)

```
O01 - HEADER
├── Logo Jurible (lien → /)
├── Menu : COURS | FORMULES | RESSOURCES | À PROPOS
├── S'abonner
├── Se connecter
└── Sticky on scroll

────────────────────────────────────────────────────────────

H01 - HERO
├── Titre H1 : "Toutes nos offres pour réussir en droit"
├── Sous-titre : "Que vous soyez étudiant en licence, en reconversion ou professionnel, nous avons la solution adaptée à votre situation."
│
├── CTA Primary : "Voir les offres" → #offres
├── CTA Secondary : "M'aider à choisir" → #aide-choix
│
└── Badge : "4.8/5 Trustpilot"

────────────────────────────────────────────────────────────

[SECTION] INTRO
├── Titre : "Quelle offre est faite pour vous ?"
└── Texte : "Chaque offre répond à un besoin spécifique. L'Académie est notre offre principale pour suivre les cours de licence. Les autres offres complètent ou répondent à des besoins plus ciblés."

────────────────────────────────────────────────────────────

[SECTION] COMPARATIF 5 OFFRES (id="offres")
├── Badge : "Comparatif"
├── Titre : "Nos 5 offres"
├── Sous-titre : "Comparez et choisissez l'offre qui correspond à votre situation"
│
└── Grid 5 cards :
    │
    ├── ACADÉMIE (Badge "Offre principale") :
    │   ├── Type : "Abonnement"
    │   ├── Titre : "Jurible Académie"
    │   ├── Description : "Cours vidéo complets, cours écrit, fiches animées, QCM et flashcards pour toutes les matières de licence."
    │   ├── Prix : "29€/mois"
    │   ├── Note : "ou 140€ pour 6 mois (-20%) • ou 240€/an (-31%)"
    │   ├── Pour qui : "Étudiants en L1, L2, L3 ou Capacité"
    │   ├── Inclus :
    │   │   ├── ✓ 180+ vidéos de cours
    │   │   ├── ✓ Cours écrit complet
    │   │   ├── ✓ Fiches animées + mindmaps
    │   │   ├── ✓ 2000+ QCM interactifs
    │   │   ├── ✓ 2000+ flashcards
    │   │   └── ✓ Annales corrigées
    │   └── CTA : "S'abonner à l'Académie"
    │
    ├── PRÉPAS :
    │   ├── Type : "Formation intensive"
    │   ├── Titre : "Prépas"
    │   ├── Description : "Formation intensive avec accompagnement personnalisé pour préparer les concours ou réussir votre année."
    │   ├── Prix : "1 300€"
    │   ├── Note : "paiement en 3x possible"
    │   ├── Pour qui : "Reconversion, redoublants, concours"
    │   ├── Inclus :
    │   │   ├── ✓ Accès Académie inclus
    │   │   ├── ✓ Coaching individuel
    │   │   ├── ✓ Corrections personnalisées
    │   │   ├── ✓ Sessions live hebdo
    │   │   └── ✓ Groupe WhatsApp privé
    │   └── CTA : "Découvrir les Prépas"
    │
    ├── FICHES PDF :
    │   ├── Type : "Achat unique"
    │   ├── Titre : "Fiches PDF"
    │   ├── Description : "Fiches de révision téléchargeables et imprimables pour réviser partout, même hors ligne."
    │   ├── Prix : "19€"
    │   ├── Note : "par matière"
    │   ├── Pour qui : "Ceux qui préfèrent réviser sur papier"
    │   ├── Inclus :
    │   │   ├── ✓ Fiches téléchargeables
    │   │   ├── ✓ Format A4 imprimable
    │   │   ├── ✓ Accès à vie
    │   │   └── ✓ Mises à jour gratuites
    │   └── CTA : "Voir les Fiches PDF"
    │
    ├── SUITE IA :
    │   ├── Type : "Crédits"
    │   ├── Titre : "Suite IA"
    │   ├── Description : "Outils d'intelligence artificielle pour générer des fiches d'arrêt, plans de dissertation et plus."
    │   ├── Prix : "5€"
    │   ├── Note : "pour 30 crédits (ou 17€ pour 100 crédits)"
    │   ├── Pour qui : "Ceux qui veulent gagner du temps"
    │   ├── Inclus :
    │   │   ├── ✓ Générateur fiche d'arrêt
    │   │   ├── ✓ Plan de dissertation
    │   │   ├── ✓ Assistant cas pratique
    │   │   ├── ✓ Crédits sans expiration
    │   │   └── ✓ 3 crédits offerts pour essayer
    │   └── CTA : "Découvrir la Suite IA"
    │
    └── MANUEL MÉTHODOLOGIE :
        ├── Type : "Livre / Ebook"
        ├── Titre : "Manuel Méthodologie"
        ├── Description : "Le guide complet de la méthodologie juridique en format livre (papier ou numérique)."
        ├── Prix : "24€"
        ├── Note : "papier ou 14€ numérique"
        ├── Pour qui : "Ceux qui veulent un support physique"
        ├── Inclus :
        │   ├── ✓ Dissertation juridique
        │   ├── ✓ Commentaire d'arrêt
        │   ├── ✓ Cas pratique
        │   └── ✓ Fiche d'arrêt
        └── CTA : "Commander le Manuel"

────────────────────────────────────────────────────────────

[SECTION] AIDE AU CHOIX (id="aide-choix")
├── Badge : "Aide au choix"
├── Titre : "Quelle offre choisir ?"
├── Sous-titre : "Trouvez l'offre adaptée à votre situation en un coup d'œil"
│
└── 6 profils avec recommandation :
    │
    ├── "Vous êtes étudiant en L1, L2 ou L3"
    │   └── → Académie pour suivre tous vos cours
    │
    ├── "Vous êtes en reconversion professionnelle"
    │   └── → Prépa avec accompagnement personnalisé
    │
    ├── "Vous préférez réviser sur papier"
    │   └── → Fiches PDF à imprimer et annoter
    │
    ├── "Vous avez redoublé ou avez des difficultés"
    │   └── → Prépa pour un suivi intensif
    │
    ├── "Vous voulez gagner du temps sur les exercices"
    │   └── → Suite IA pour générer vos travaux
    │
    └── "Vous voulez maîtriser la méthodologie"
        └── → Manuel + Académie en complément

────────────────────────────────────────────────────────────

[SECTION] FOCUS ACADÉMIE
├── Badge : "Notre offre principale"
├── Titre : "La Jurible Académie, la solution complète"
├── Sous-titre : "Conçue pour les étudiants en licence qui veulent réussir leurs examens. Accédez à tous les cours et outils de révision en un seul abonnement."
│
├── Grid "Ce que vous obtenez" (6 features) :
│   ├── 📹 180+ cours vidéo HD — "Explications claires et pédagogiques"
│   ├── 📄 Cours écrit complet — "Synthèses rédigées par matière"
│   ├── 🎬 Fiches animées en vidéo — "Mémorisation visuelle"
│   ├── 🗺️ Mindmaps visuelles — "Visualisez les concepts"
│   ├── ✅ 2000+ QCM interactifs — "Testez vos connaissances"
│   └── 🧠 2000+ flashcards — "Mémorisation efficace"
│
├── Pricing 4 formules :
│   │
│   ├── 1 MOIS :
│   │   ├── Prix : "29€"
│   │   └── Note : "Sans engagement"
│   │
│   ├── 3 MOIS :
│   │   ├── Prix : "78€"
│   │   ├── Détail : "26€/mois"
│   │   └── Badge : "-10%"
│   │
│   ├── 6 MOIS (Badge "Le + populaire") :
│   │   ├── Prix : "140€"
│   │   ├── Détail : "23€/mois"
│   │   └── Badge : "-20%"
│   │
│   └── 1 AN :
│       ├── Prix : "240€"
│       ├── Détail : "20€/mois"
│       └── Badge : "-31%"
│
├── CTA : "S'abonner à l'Académie"
└── Réassurance : "Sans engagement • Annulable en 1 clic"

────────────────────────────────────────────────────────────

[SECTION] ENSEIGNANTS
├── Titre : "Une équipe d'experts à vos côtés"
├── Sous-titre : "Tous nos contenus sont créés et validés par une équipe de 11 enseignants, avocats et juristes diplômés. Issus des meilleures facultés de droit françaises, ils ont tous une expérience d'enseignement en université."
│
├── Stats (3) :
│   ├── "11" — Enseignants
│   ├── "100%" — Master 2 minimum
│   └── "25 000+" — Étudiants formés
│
└── Avatars enseignants :
    ├── RB — Raphaël B L. — Droit constit.
    ├── MD — Marie D. — Droit civil
    ├── TF — Thomas F. — Droit pénal
    ├── JM — Julie M. — Histoire du droit
    ├── PL — Pierre L. — Droit admin.
    ├── SB — Sophie B. — Droit des oblig.
    ├── AC — Antoine C. — Méthodologie
    └── +3 — Et 3 autres experts

────────────────────────────────────────────────────────────

[SECTION] TÉMOIGNAGES
├── Badge : "Témoignages"
├── Titre : "Ils ont réussi avec Jurible"
│
└── Cards témoignages (×3) :
    │
    ├── Académie — Marie L. (L1 Droit - Paris 1) :
    │   └── "J'ai validé ma L1 du premier coup grâce à l'Académie. Les vidéos sont super claires et les flashcards m'ont fait gagner un temps fou."
    │
    ├── Prépa — Pierre D. (Reconversion - Capacité) :
    │   └── "En reconversion à 35 ans, la Prépa m'a offert l'accompagnement dont j'avais besoin. Le coaching individuel a fait toute la différence."
    │
    └── Fiches PDF — Camille B. (L2 Droit - Lyon 3) :
        └── "J'ai besoin de réviser sur papier. Les Fiches PDF sont parfaites : je les imprime, je surligne, j'annote. Format idéal pour les partiels."

────────────────────────────────────────────────────────────

[SECTION] FAQ
├── Badge : "FAQ"
├── Titre : "Questions fréquentes"
│
└── Accordéons (6) :
    │
    ├── "Puis-je combiner plusieurs offres ?"
    │   └── "Oui ! Vous pouvez par exemple vous abonner à l'Académie et acheter des Fiches PDF en complément. Les offres Prépa incluent déjà l'accès à l'Académie. La Suite IA fonctionne indépendamment des autres offres."
    │
    ├── "Quelle est la différence entre l'Académie et les Fiches PDF ?"
    │   └── [Réponse à compléter]
    │
    ├── "La Prépa est-elle adaptée à ma situation ?"
    │   └── [Réponse à compléter]
    │
    ├── "Comment fonctionne la Suite IA ?"
    │   └── [Réponse à compléter]
    │
    ├── "Puis-je changer d'offre en cours d'abonnement ?"
    │   └── [Réponse à compléter]
    │
    └── "Y a-t-il un essai gratuit ?"
        └── [Réponse à compléter]

────────────────────────────────────────────────────────────

P10 - CTA FINAL
├── Fond : Dégradé bordeaux → violet
├── Titre : "Prêt à réussir vos études de droit ?"
├── Sous-titre : "Rejoignez 25 000+ étudiants qui progressent avec Jurible"
├── CTA Primary : "S'abonner à l'Académie dès 29€/mois"
├── CTA Secondary : "Comparer les offres"
└── Réassurance : "Sans engagement • Annulable en 1 clic • 25 000+ étudiants"

────────────────────────────────────────────────────────────

O02 - FOOTER
├── Logo + Baseline : "La plateforme n°1 des étudiants en droit"
│
├── Colonnes (4) :
│   ├── Offres : Académie, Prépas, Fiches PDF, Suite IA, Manuel
│   ├── Cours : L1 Droit, L2 Droit, L3 Droit, Capacité
│   ├── Jurible : À propos, Notre équipe, Contact, Partenariats
│   └── Légal : CGV, Mentions légales, Confidentialité
│
└── Copyright : "© 2024 Jurible. Tous droits réservés. Conçu avec ❤️ à Nice"
```

## Récap des prix

| Offre | Prix |
|-------|------|
| **Académie** | 29€/mois — 78€/3 mois — 140€/6 mois — 240€/an |
| **Prépas** | 1 300€ (paiement 3x possible) |
| **Fiches PDF** | 19€/matière |
| **Suite IA** | Gratuit (3 crédits) — 5€ (30 crédits) — 17€ (100 crédits) |
| **Manuel** | 24€ papier — 14€ numérique |

## Composants utilisés

| ID | Composant | Obligatoire |
|----|-----------|-------------|
| O01 | Header | ✅ |
| H01 | Hero | ✅ |
| — | Intro | ✅ |
| C16 | Cards Offres (×5) | ✅ |
| — | Aide au choix | ✅ |
| P07 | Focus Académie + Pricing | ✅ |
| C04 | Enseignants | ✅ |
| C18 | Témoignages (×3) | ✅ |
| C07 | FAQ | ✅ |
| P10 | CTA Final | ✅ |
| O02 | Footer | ✅ |

## Notes techniques

1. **Cards offres** : L'Académie a un badge "Offre principale" et un style distinct
2. **Aide au choix** : Liens cliquables vers les sections correspondantes
3. **Focus Académie** : Section complète avec pricing intégré (reprend le pricing de T-ACADEMIE)
4. **Avatars** : Initiales + nom + spécialité
5. **Mobile** : Cards en colonne, pricing en slider horizontal

## SEO

- **H1** : "Toutes nos offres pour réussir en droit"
- **Meta title** : "Nos offres | Jurible - Académie, Prépas, Fiches PDF, Suite IA"
- **Meta description** : "Comparez nos 5 offres pour réussir en droit : Académie dès 29€/mois, Prépas, Fiches PDF, Suite IA, Manuel. Trouvez l'offre adaptée à votre situation."
- **Schema** : Product pour chaque offre

---

*Template créé le 6 février 2026 — Fidèle à la maquette page_nos_offres.pdf*
