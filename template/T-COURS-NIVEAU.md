# T-COURS-NIVEAU

> Landing page par niveau d'études (L1, L2, L3, Capacité). Page catalogue des matières.
> URLs : `/cours/l1`, `/cours/l2`, `/cours/l3`, `/cours/capacite`
> Réutilisé : ×4 pages

## Variables dynamiques

| Variable | L1 | L2 | L3 | Capacité |
|----------|----|----|----|---------| 
| `{niveau}` | L1 | L2 | L3 | Capacité |
| `{niveau_long}` | Licence 1 | Licence 2 | Licence 3 | Capacité en droit |
| `{nb_cours}` | 16 | À définir | À définir | À définir |
| `{nb_videos}` | 180+ | À définir | À définir | À définir |
| `{couleur}` | Noir (#1A1A1A) | Violet (#7C3AED) | Vert (#10B981) | Bordeaux (#B0001D) |

## Structure (11 sections)

```
O01 - HEADER
├── Logo Jurible (lien → /)
├── Menu : COURS | FORMULES | RESSOURCES | À PROPOS
├── S'abonner
├── Se connecter
└── Sticky on scroll

────────────────────────────────────────────────────────────

H03 - HERO NIVEAU
├── Badge : "Conforme au programme universitaire"
├── Titre H1 : "Tous les cours de {niveau_long}"
├── Sous-titre : "Accédez à l'ensemble des matières fondamentales de {niveau} Droit. Vidéos, fiches, QCM, flashcards et annales corrigées pour réussir votre année."
│
├── Stats inline (4) :
│   ├── "{nb_cours}" — Cours
│   ├── "{nb_videos}" — Vidéos
│   ├── "2000+" — QCM
│   └── "180+" — Fiches
│
├── CTA : "S'abonner à Jurible {niveau} dès 29€/mois"
├── Réassurance : "Sans engagement"
│
└── Trust bar :
    ├── "25 000+ étudiants"
    ├── "4.8/5 sur Trustpilot"
    ├── "Incubateur Assas"
    └── "Soutenu par BPI"

────────────────────────────────────────────────────────────

M04 - NAVIGATION NIVEAUX (recommandation ajoutée)
├── Layout : Tabs inline
└── [L1] [L2] [L3] [Capacité]
    └── Niveau actuel = actif (fond plein)
    └── Autres = inactif (outline)

────────────────────────────────────────────────────────────

C19 - CATALOGUE MATIÈRES
├── Badge : "Catalogue {niveau}"
├── Titre : "Toutes les matières de {niveau_long}"
├── Sous-titre : "{nb_cours} cours disponibles avec vidéos, cours écrit, mindmaps, QCM et flashcards"
│
└── Grid cards cours :
    │
    ├── [POUR L1 — 16 cours] :
    │   │
    │   ├── MATIÈRES FONDAMENTALES (7) :
    │   │   ├── Droit constitutionnel S2 — "Principes fondamentaux & Ve République" — 40 vidéos, 40 fiches
    │   │   ├── Introduction au droit — "Personnes, famille, biens" — 47 vidéos, 47 fiches
    │   │   ├── Droit des personnes — "Sources, hiérarchie, institutions" — 18 vidéos, 18 fiches
    │   │   ├── Histoire du droit — "Antiquité à nos jours" — 22 vidéos, 22 fiches
    │   │   ├── Droit des biens — "Droit pénal général" — 28 vidéos, 28 fiches
    │   │   ├── Institutions juridictionnelles — "Organisation judiciaire française" — 15 vidéos, 15 fiches
    │   │   └── Droit de la famille — "Mariage, divorce, filiation" — 24 vidéos, 24 fiches
    │   │
    │   └── MÉTHODOLOGIE (9) :
    │       ├── Fiche d'arrêt — "Méthodologie complète" — 5 vidéos, 5 fiches
    │       ├── Commentaire d'arrêt — "Méthodologie complète" — 6 vidéos, 6 fiches
    │       ├── Dissertation juridique — "Méthodologie complète" — 6 vidéos, 6 fiches
    │       ├── Commentaire de texte — "Méthodologie complète" — 4 vidéos, 4 fiches
    │       ├── Cas pratique — "Méthodologie complète" — 5 vidéos, 5 fiches
    │       ├── Réussir ses études de droit — "Organisation & méthodes" — 8 vidéos, 8 fiches
    │       ├── Maîtriser le code civil — "Utilisation efficace du code" — 4 vidéos, 4 fiches
    │       └── Mémoriser ses cours de droit — "Techniques de mémorisation" — 6 vidéos, 6 fiches
    │
    └── Card cours :
        ├── Titre matière
        ├── Description courte
        ├── Stats : "{nb} vidéos • {nb} fiches"
        └── CTA : "Voir le cours" → /cours/{matiere-slug}

────────────────────────────────────────────────────────────

P07 - PRICING
├── Titre : "L'abonnement Jurible"
├── Sous-titre : "Accès illimité à toutes les matières de {niveau_long}"
│
├── Features incluses (6) :
│   ├── ✓ {nb_cours} cours complets — "Matières + méthodologie + organisation"
│   ├── ✓ {nb_videos} vidéos de cours — "Explications claires et pédagogiques"
│   ├── ✓ Cours écrit complet — "Synthèses + mindmaps"
│   ├── ✓ Fiches animées en vidéo — "Mémorisation visuelle"
│   ├── ✓ 2000+ QCM interactifs — "Testez vos connaissances"
│   └── ✓ 2000+ flashcards — "Mémorisation efficace"
│
├── Cards formules (×4) :
│   │
│   ├── 1 MOIS :
│   │   ├── Prix : "29€"
│   │   └── Détail : "29€/mois"
│   │
│   ├── 3 MOIS :
│   │   ├── Prix : "78€"
│   │   ├── Détail : "26€/mois"
│   │   └── Badge : "-10%"
│   │
│   ├── 6 MOIS :
│   │   ├── Prix : "140€"
│   │   ├── Détail : "23€/mois"
│   │   └── Badge : "-20%"
│   │
│   └── 1 AN (Badge "Le + populaire") :
│       ├── Prix : "240€"
│       ├── Détail : "20€/mois"
│       └── Badge : "-31%"
│
├── CTA : "S'abonner à Jurible"
└── Réassurance : "Sans engagement • Annulable en 1 clic"

────────────────────────────────────────────────────────────

C08 - INCLUS DANS L'ABONNEMENT
├── Badge : "Inclus dans l'abonnement"
├── Titre : "7 formats pour apprendre efficacement"
├── Sous-titre : "Chaque étudiant apprend différemment. Nos contenus s'adaptent à votre façon de réviser."
│
└── Grid 7 cards :
    │
    ├── 📹 Cours vidéo :
    │   ├── Description : "Vidéos claires et pédagogiques pour comprendre chaque notion"
    │   └── Stats : "180+ vidéos"
    │
    ├── ✅ QCM interactifs :
    │   ├── Description : "Testez vos connaissances avec corrections détaillées"
    │   └── Stats : "2000+ QCM"
    │
    ├── 📄 Cours écrit :
    │   ├── Description : "Cours complet rédigé pour approfondir et réviser"
    │   └── Stats : "180+ chapitres"
    │
    ├── 🎬 Fiches animées :
    │   ├── Description : "Fiches en vidéo pour mémoriser visuellement"
    │   └── Stats : "180+ fiches"
    │
    ├── 🗺️ Mindmaps :
    │   ├── Description : "Cartes mentales pour visualiser les concepts"
    │   └── Stats : "100+ mindmaps"
    │
    ├── 🧠 Flashcards :
    │   ├── Description : "Mémorisation efficace avec répétition espacée"
    │   └── Stats : "2000+ flashcards"
    │
    └── 📚 Annales corrigées :
        ├── Description : "Dissertations et cas pratiques corrigés"
        └── Stats : "50+ annales"

────────────────────────────────────────────────────────────

C18 - TÉMOIGNAGES
├── Badge : "Témoignages"
├── Titre : "Ils ont réussi leur {niveau} avec Jurible"
│
└── Cards témoignages (×3, filtrés par niveau) :
    │
    ├── [POUR L1] :
    │   │
    │   ├── Marie L. — L1 Droit Paris 1 :
    │   │   ├── Citation : "J'ai validé ma L1 du premier coup grâce à Jurible. Les vidéos sont super claires et les fiches m'ont fait gagner un temps fou en révision."
    │   │   └── Badge : "L1 validée avec mention"
    │   │
    │   ├── Thomas C. — L1 Droit Lyon 3 :
    │   │   ├── Citation : "Les QCM et flashcards sont parfaits pour réviser dans les transports. J'ai eu 15/20 en droit constitutionnel alors que je partais de zéro."
    │   │   └── Badge : "15/20 en Droit constit"
    │   │
    │   └── Sarah B. — L1 Droit Bordeaux :
    │       ├── Citation : "Après un échec en L1, j'ai repris avec Jurible. La méthodologie et les annales corrigées m'ont permis de comprendre ce qu'on attendait de moi."
    │       └── Badge : "L1 validée après redoublement"
│
└── CTA : "Lire tous les témoignages →" → /avis

────────────────────────────────────────────────────────────

P11 - COMPARAISON
├── Badge : "Comparaison"
├── Titre : "Jurible vs les autres méthodes"
│
└── Tableau comparatif :
    │
    │                                          │ Jurible   │ Manuels      │ Cours amphi │
    │ ──────────────────────────────────────── │ ───────── │ ──────────── │ ─────────── │
    │ Explications claires et pédagogiques     │ ✓         │ ✗            │ Variable    │
    │ Disponible 24h/24, où vous voulez        │ ✓         │ ✓            │ ✗           │
    │ QCM et exercices interactifs             │ ✓         │ ✗            │ ✗           │
    │ Flashcards pour mémoriser                │ ✓         │ ✗            │ ✗           │
    │ Méthodologie des exercices juridiques    │ ✓         │ Partiel      │ Partiel     │
    │ Annales corrigées en détail              │ ✓         │ ✗            │ ✗           │
    │ ──────────────────────────────────────── │ ───────── │ ──────────── │ ─────────── │
    │ Prix                                     │ 29€/mois  │ 30-50€/manuel│ Gratuit*    │

────────────────────────────────────────────────────────────

C05 - ENSEIGNANTS
├── Badge : "Notre équipe"
├── Titre : "Des enseignants experts"
├── Sous-titre : "Tous nos cours sont créés et validés par une équipe de 11 enseignants, avocats et juristes. Tous sont titulaires d'un Master 2 minimum et ont une expérience d'enseignement en faculté de droit."
│
├── Cards enseignants (×4) :
│   ├── Raphaël B L. — Droit constitutionnel — "M2 Assas • Ex-avocat"
│   ├── Marie D. — Droit civil — "Docteur en droit Paris 1"
│   ├── Thomas F. — Droit pénal — "M2 Lyon 3 • Avocat"
│   └── Julie M. — Histoire du droit — "Agrégée Bordeaux"
│
└── CTA : "Découvrir toute l'équipe →" → /nos-enseignants

────────────────────────────────────────────────────────────

C07 - FAQ
├── Badge : "FAQ"
├── Titre : "Questions fréquentes sur la {niveau}"
│
└── Accordéons (5) :
    │
    ├── "Est-ce que le contenu couvre le programme de toutes les universités ?"
    │   └── "Oui, nos cours couvrent le programme national de {niveau} Droit, conforme aux exigences de toutes les facultés françaises. Que vous soyez à Paris, Lyon, Bordeaux ou ailleurs, vous trouverez tous les cours dont vous avez besoin."
    │
    ├── "Puis-je accéder aux cours de L2 avec l'abonnement L1 ?"
    │   └── [Réponse : Oui, accès à tous les niveaux]
    │
    ├── "Combien de temps faut-il pour suivre tous les cours ?"
    │   └── [Réponse à compléter]
    │
    ├── "Puis-je télécharger les contenus pour réviser hors ligne ?"
    │   └── [Réponse à compléter]
    │
    └── "Comment fonctionne l'engagement et la résiliation ?"
        └── [Réponse à compléter]
│
└── CTA : "Voir toutes les FAQ →" → /faq

────────────────────────────────────────────────────────────

P10 - CTA FINAL
├── Fond : Dégradé bordeaux → violet
├── Titre : "Prêt à réussir votre {niveau} ?"
├── Sous-titre : "Rejoignez 25 000+ étudiants qui progressent avec Jurible"
├── CTA : "S'abonner à Jurible {niveau} dès 29€/mois"
└── Réassurance : "Sans engagement • Annulable en 1 clic"

────────────────────────────────────────────────────────────

O02 - FOOTER
├── Logo + Baseline : "La plateforme n°1 des étudiants en droit"
│
├── Colonnes (4) :
│   ├── Cours : L1 Droit, L2 Droit, L3 Droit, Capacité
│   ├── Ressources : Fiches PDF, Suite IA, Blog, Méthodologie
│   ├── Jurible : À propos, Notre équipe, Contact, Partenariats
│   └── Légal : CGV, Mentions légales, Confidentialité
│
└── Copyright : "© 2024 Jurible. Tous droits réservés. Conçu avec ❤️ à Nice"
```

## Composants utilisés

| ID | Composant DS | Section | Obligatoire |
|----|--------------|---------|-------------|
| O01 | Header / Navbar | Header | ✅ |
| H03 | Hero Produit | Hero niveau | ✅ |
| M04 | Tabs | Navigation niveaux | ⚪ Recommandé |
| C19 | Catalogue Cours | Catalogue matières | ✅ |
| P07 | Pricing Académie + features | Pricing | ✅ |
| C08 | Fonctionnalité (×7) | Inclus | ✅ |
| C18 | Testimonial (×3) | Témoignages | ✅ |
| P11 | Section Comparaison | Comparaison | ✅ |
| C05 | Enseignants | Équipe | ✅ |
| C07 | FAQ Accordéon | FAQ | ✅ |
| P10 | Section CTA Final | CTA Final | ✅ |
| O02 | Footer | Footer | ✅ |

## Notes techniques

1. **Couleur par niveau** : Le hero utilise la couleur du niveau (L1=noir, L2=violet, L3=vert, Capacité=bordeaux)
2. **Navigation tabs** : Lien actif = fond plein, autres = outline
3. **Cards matières** : Chaque card lie vers `/cours/{matiere-slug}` (T-COURS-MATIERE)
4. **Témoignages** : Filtrés par tag niveau dans la DB
5. **Tableau comparatif** : Scroll horizontal sur mobile
6. **Tracking GA4** : Events sur tabs, cards matières, sélection formule

## SEO

- **H1** : "Tous les cours de {niveau_long}" (unique par page)
- **Meta title** : "Cours de {niveau} Droit en ligne | Jurible"
- **Meta description** : "Tous les cours de {niveau} Droit : {nb_cours} matières, {nb_videos} vidéos, QCM, flashcards. Dès 20€/mois. 25 000 étudiants formés."
- **Schema.org** :
  - `ItemList` pour le catalogue
  - `Course` pour chaque matière
  - `FAQPage` pour la FAQ

## Déclinaisons

| Page | URL | Couleur | Nb cours |
|------|-----|---------|----------|
| L1 Droit | `/cours/l1` | Noir (#1A1A1A) | 16 |
| L2 Droit | `/cours/l2` | Violet (#7C3AED) | À définir |
| L3 Droit | `/cours/l3` | Vert (#10B981) | À définir |
| Capacité | `/cours/capacite` | Bordeaux (#B0001D) | À définir |

---

*Template créé le 6 février 2026 — Fidèle à la maquette landing_page_par_niveaux.pdf*
