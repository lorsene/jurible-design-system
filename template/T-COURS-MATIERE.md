# T-COURS-MATIERE

> Template pour les landing pages de cours par matière. Objectif : conversion vers l'abonnement Jurible.
> URLs : `/cours/[matiere]` (ex: `/cours/droit-constitutionnel`, `/cours/droit-civil-l2`)
> Réutilisé : ×22 matières

## Objectifs de la page

- **Informer** : Montrer le contenu précis du cours (programme, formats, durée)
- **Démontrer** : Permettre de tester gratuitement (vidéo, fiche, QCM...)
- **Crédibiliser** : Enseignant expert, témoignages, universités
- **Convertir** : Guider vers l'abonnement avec pricing clair
- **SEO** : Cibler "cours {matière} en ligne", "{matière} L1", etc.

## Variables dynamiques

| Variable | Exemple |
|----------|---------|
| `{matiere}` | Droit constitutionnel |
| `{niveau}` | L1 |
| `{semestre}` | S1 |
| `{nb_videos}` | 20 |
| `{nb_qcm}` | 200+ |
| `{nb_flashcards}` | 200+ |
| `{nb_heures}` | 16h |
| `{nb_fiches}` | 25 |
| `{nb_themes}` | 5 |
| `{nb_cours}` | 25 |
| `{enseignant_nom}` | Raphaël Briguet-Lamarre |
| `{prix_mensuel}` | 29€ |

## Structure (20 sections)

```
O01 - HEADER
├── Logo Jurible (lien → /)
├── Menu : COURS | FORMULES | RESSOURCES | À PROPOS
├── CTA : [S'abonner] [Se connecter]
└── Comportement : Sticky on scroll

────────────────────────────────────────────────────────────

M02 - BREADCRUMB
└── Accueil › Cours › {niveau} › {matiere}

────────────────────────────────────────────────────────────

H03 - HERO PRODUIT (2 colonnes)
│
├── COLONNE GAUCHE :
│   ├── Badge : "Cours complet de {matiere}"
│   ├── Titre H1 : "Maîtrisez le {matiere}"
│   ├── Sous-titre : "{description_courte} - Licence {niveau}"
│   ├── Description : "Un cours conçu pour comprendre et mémoriser facilement tout le programme de {matiere}."
│   │
│   ├── Badges stats (inline) :
│   │   ├── 📹 {nb_videos} vidéos
│   │   ├── 📄 Cours écrit
│   │   ├── ✅ {nb_qcm} QCM
│   │   ├── 🧠 {nb_flashcards} Flashcards
│   │   ├── 📚 Annales corrigées
│   │   └── 📖 Méthodologie
│   │
│   └── Badges confiance :
│       ├── ✓ Cours inclus dans l'abonnement Jurible
│       ├── ✓ Conforme au programme universitaire
│       └── ✓ + de 25 000 étudiants nous font confiance
│
└── COLONNE DROITE (Encart Pricing sticky) :
    ├── Titre : "Ce que vous obtenez"
    ├── Liste :
    │   ├── ✓ Cours vidéo + cours écrit complet
    │   ├── ✓ Fiches animées en vidéo + mindmaps
    │   ├── ✓ QCM, Flashcards, Annales corrigées
    │   ├── ✓ + 19 autres matières de licence
    │   └── ✓ Cours de méthodologie inclus
    ├── Prix : "{prix_mensuel} /mois"
    ├── CTA : "S'abonner à Jurible"
    └── Micro-texte : "Sans engagement • Annulable en 1 clic"

────────────────────────────────────────────────────────────

P09 - TRUST BAR
├── Titre : "Conforme aux programmes des universités françaises"
├── Logos universités (6) :
│   ├── Paris 1 Panthéon-Sorbonne
│   ├── Paris 2 Assas
│   ├── Lyon 3 Jean Moulin
│   ├── Bordeaux
│   ├── Aix-Marseille
│   └── Strasbourg
└── Badges additionnels :
    ├── "Noté Excellent sur Trustpilot"
    └── "Soutenu par l'incubateur d'Assas Paris II"

────────────────────────────────────────────────────────────

[SECTION] LE DÉFI - PAIN POINTS
├── Badge : "Le défi"
├── Titre section : "Le {matiere} : une matière redoutée"
├── Sous-titre : "Pourquoi est-ce si difficile d'obtenir de bonnes notes ?"
│
├── Grid 3 cards :
│   │
│   ├── Card 1 - Concepts nouveaux :
│   │   ├── Icône
│   │   └── Liste :
│   │       ├── • Histoire constitutionnelle complexe
│   │       ├── • Matière très abstraite
│   │       └── • Nombreuses théories à maîtriser
│   │
│   ├── Card 2 - Masse de travail :
│   │   ├── Icône
│   │   └── Liste :
│   │       ├── • 2 semestres d'étude intense
│   │       ├── • Centaines de notions à retenir
│   │       └── • Principes fondamentaux essentiels
│   │
│   └── Card 3 - Difficultés méthodologiques :
│       ├── Icône
│       └── Liste :
│           ├── • CM difficiles à suivre
│           ├── • Dissertations très exigeantes
│           └── • Culture générale importante
│
└── Texte + CTA :
    ├── "Ne laissez pas ces difficultés vous décourager"
    └── CTA : "Testez gratuitement"

────────────────────────────────────────────────────────────

[SECTION] DÉMO GRATUITE
├── Titre section : "Découvrez notre méthode"
├── Sous-titre : "Accédez à un extrait du cours sans inscription"
│
├── Tabs navigation :
│   └── [Vidéo] [Fiche] [Mindmap] [QCM] [Flashcard] [Annale] [Fiche vidéo]
│
├── Contenu tab (exemple Vidéo) :
│   ├── Titre vidéo : "Les composantes de l'État (15 min)"
│   ├── Description : "Découvrez les éléments constitutifs de l'État : territoire, population, souveraineté. Une introduction claire et pédagogique au droit constitutionnel."
│   ├── Player vidéo embed
│   └── CTA : "Regarder la vidéo →"
│
└── Encart conversion :
    ├── "Vous aimez ce contenu ?"
    └── CTA : "Débloquer le cours complet {prix_mensuel}/mois"

────────────────────────────────────────────────────────────

[SECTION] NOTRE APPROCHE
├── Badge : "Notre approche"
├── Titre section : "Un cours pensé pour votre réussite"
│
└── Grid 3 cards :
    │
    ├── Card 1 :
    │   ├── Icône : 📱
    │   ├── Titre : "Apprenez à votre rythme"
    │   └── Description : "Vidéos claires et supports variés pour comprendre et mémoriser facilement sur PC, mobile ou tablette."
    │
    ├── Card 2 :
    │   ├── Icône : ✏️
    │   ├── Titre : "Exercez-vous régulièrement"
    │   └── Description : "Exercices corrigés, flashcards et QCM pour tester vos connaissances et progresser rapidement."
    │
    └── Card 3 :
        ├── Icône : 🎯
        ├── Titre : "Préparez vos examens sereinement"
        └── Description : "Tous nos contenus sont conçus par des enseignants pour réussir vos TD et partiels du premier coup."
│
└── CTA : "Découvrir les formules →"

────────────────────────────────────────────────────────────

[SECTION] CONTENU MULTI-FORMAT
├── Badge : "Contenu complet"
├── Titre section : "Un cours multi-format pour maîtriser la matière"
├── Sous-titre : "Chaque étudiant apprend différemment. Notre formation combine plusieurs supports complémentaires."
│
└── 4 blocs numérotés (layout alternant image/texte) :
    │
    ├── BLOC 1 - Pédagogie vidéo innovante :
    │   ├── Numéro : "1"
    │   ├── Titre : "Pédagogie vidéo innovante"
    │   ├── Liste :
    │   │   ├── ✓ {nb_videos} vidéos de cours (+ de {nb_heures})
    │   │   ├── ✓ Chaque concept décortiqué simplement
    │   │   ├── ✓ Focus sur les points importants aux examens
    │   │   └── ✓ BONUS : Fiches animées en vidéo
    │   └── CTA : "Voir un extrait vidéo →"
    │
    ├── BLOC 2 - Supports écrits complets :
    │   ├── Numéro : "2"
    │   ├── Titre : "Supports écrits complets"
    │   ├── Liste :
    │   │   ├── ✓ Cours écrit complet et à jour
    │   │   ├── ✓ Mindmaps pour visualiser les chapitres
    │   │   ├── ✓ Définitions clés mises en valeur
    │   │   └── ✓ Fiches de synthèse par chapitre
    │   └── CTA : "Voir un exemple de fiche →"
    │
    ├── BLOC 3 - Exercices pratiques :
    │   ├── Numéro : "3"
    │   ├── Titre : "Exercices pratiques"
    │   ├── Liste :
    │   │   ├── ✓ Exercices types corrigés en détail
    │   │   ├── ✓ Méthodologie pas à pas
    │   │   ├── ✓ Conseils pour gagner des points
    │   │   └── ✓ Applications directes pour vos TD
    │   └── CTA : "Accéder aux annales corrigées →"
    │
    └── BLOC 4 - Révision intelligente :
        ├── Numéro : "4"
        ├── Titre : "Révision intelligente"
        ├── Liste :
        │   ├── ✓ {nb_qcm} QCM ciblés sur le programme
        │   ├── ✓ {nb_flashcards} Flashcards pour mémoriser
        │   ├── ✓ Suivi de votre progression
        │   └── ✓ Révisions interactives
        └── CTA : "Tester les QCM gratuits →"

────────────────────────────────────────────────────────────

[SECTION] PROGRAMME / SOMMAIRE
├── Badge : "Programme"
├── Titre section : "Sommaire du cours de {matiere}"
├── Sous-titre : "Tout le programme couvert en détail, conforme aux exigences de toutes les universités"
│
├── Accordéon par thème :
│   │
│   ├── Thème 1 : "Le cadre du pouvoir politique" (3 cours)
│   │   ├── Cours n°1 : Les composantes de l'État [Gratuit]
│   │   │   └── 18 min • Fiche • 20 QCM
│   │   ├── Cours n°2 : Les formes de l'État : L'État unitaire [Premium]
│   │   │   └── 22 min • Fiche • 15 QCM
│   │   └── Cours n°3 : L'État fédéral et la confédération [Premium]
│   │       └── 25 min • Fiche • 18 QCM
│   │
│   ├── Thème 2 : "La source du pouvoir politique" (6 cours)
│   ├── Thème 3 : "Les fondements du pouvoir politique" (5 cours)
│   ├── Thème 4 : "Les modes d'organisation du pouvoir" (7 cours)
│   └── Thème 5 : "L'histoire constitutionnelle française" (4 cours)
│
├── Stats résumé (4 chiffres) :
│   ├── "{nb_themes}" — thèmes
│   ├── "{nb_cours}" — cours
│   ├── "{nb_heures}" — de vidéo
│   └── "{nb_fiches}" — fiches
│
└── CTA :
    ├── "Débloquez tout le programme avec Jurible"
    ├── CTA Primary : "S'abonner dès {prix_mensuel}/mois"
    └── CTA Secondary : "Voir le programme complet"

────────────────────────────────────────────────────────────

[SECTION] TÉMOIGNAGES
├── Badge : "Témoignages"
├── Titre section : "+ de 25 000 étudiants ont réussi leurs partiels"
│
├── Grid 3 cards témoignages :
│   │
│   ├── Emma R. — L1 Droit Paris 2 :
│   │   ├── Citation : "15/20 à ma première dissertation en droit constitutionnel. Merci pour tout !!!"
│   │   └── Source : Instagram
│   │
│   ├── Thomas L. — L1 Droit Lyon 3 :
│   │   ├── Citation : "Les vidéos sont super claires, j'ai enfin compris la séparation des pouvoirs. Validé avec 14 !"
│   │   └── Source : Trustpilot
│   │
│   └── Sarah M. — L1 Droit Bordeaux :
│       ├── Citation : "Les QCM et flashcards m'ont sauvé pour mes révisions. Je les faisais dans le métro !"
│       └── Source : Google
│
└── CTA : "Lire tous les témoignages →"

────────────────────────────────────────────────────────────

[SECTION] ENSEIGNANT
├── Badge : "Votre enseignant"
├── Titre section : "Un cours créé par des experts"
│
├── Card enseignant principal :
│   ├── Photo : {enseignant_photo}
│   ├── Nom : "{enseignant_nom}"
│   ├── Rôle : "Responsable pédagogique {matiere}"
│   ├── Credentials :
│   │   ├── • Ex-chargé d'enseignement Université de Nice
│   │   ├── • Ancien avocat inscrit au barreau
│   │   └── • Master 2 Droit et pratiques des relations de travail (Assas)
│   └── Citation : "Connaître les bases du droit constitutionnel relève de la culture générale !"
│
├── Note équipe : "Notre équipe pédagogique de 11 enseignants, avocats ou juristes (tous titulaires d'un Master 2 minimum) assure la qualité du contenu des cours."
│
└── CTA : "Découvrir toute l'équipe →"

────────────────────────────────────────────────────────────

[SECTION] POURQUOI NOUS
├── Badge : "Pourquoi nous"
├── Titre section : "Le cours de {matiere} que vous méritez"
├── Sous-titre : "Le {matiere} n'est pas une matière difficile quand on sait comment l'apprendre."
│
└── Grid 4 cards :
    │
    ├── Card 1 - Des concepts enfin clairs :
    │   └── Liste :
    │       ├── • Explications simples pour les notions complexes
    │       ├── • Exemples concrets tirés de l'actualité
    │       └── • Points clés souvent oubliés en TD
    │
    ├── Card 2 - Apprentissage optimisé :
    │   └── Liste :
    │       ├── • Cours accessibles quand vous voulez
    │       ├── • Vidéos dynamiques qui vont à l'essentiel
    │       └── • Progression étape par étape
    │
    ├── Card 3 - Une équipe qui vous comprend :
    │   └── Liste :
    │       ├── • Profs issus des meilleures universités
    │       ├── • Approche testée par 25 000+ étudiants
    │       └── • Support réactif pour vous répondre
    │
    └── Card 4 - Accès à tout le catalogue :
        └── Liste :
            ├── • + 19 autres matières de licence
            ├── • Cours de méthodologie complets
            └── • Méthodes d'organisation et mémorisation

────────────────────────────────────────────────────────────

[SECTION] OUTILS COMPLÉMENTAIRES (Cross-sell)
├── Badge : "Compléments"
├── Titre section : "Outils complémentaires pour cette matière"
│
└── Grid 3 cards produits :
    │
    ├── Fiches PDF {matiere} :
    │   ├── Description : "Fiches téléchargeables et imprimables ({nb_fiches} fiches, XX pages). Parfait pour réviser hors ligne."
    │   ├── Prix : "19€ seul ou inclus dans Pack {niveau} (135€)"
    │   └── CTA : "Acheter les fiches PDF →"
    │
    ├── Générateurs IA pour le Droit :
    │   ├── Description : "Générez des dissertations, commentaires et cas pratiques. Entraînez-vous avec des sujets sur mesure."
    │   ├── Prix : "Crédits IA à partir de 5€"
    │   └── CTA : "Découvrir la Suite IA →"
    │
    └── Manuel de Méthodologie :
        ├── Description : "Maîtrisez tous les exercices juridiques : fiche d'arrêt, commentaire, dissertation, cas pratique."
        ├── Prix : "29€ seul ou inclus dans l'abonnement"
        └── CTA : "Acheter le manuel →"

────────────────────────────────────────────────────────────

[SECTION] POUR VOUS ?
├── Badge : "Pour vous ?"
├── Titre section : "Ce cours est parfait pour vous si :"
│
├── Colonne GAUCHE (✅ OUI) :
│   ├── ✓ Vous voulez des bases solides en droit
│   ├── ✓ Vous vous sentez perdu(e) face à la matière
│   ├── ✓ Vous cherchez un cours fiable et structuré
│   ├── ✓ Vous voulez impressionner vos correcteurs
│   └── ✓ Vous êtes en formation initiale ou reprise d'études
│
└── Colonne DROITE (❌ NON) :
    ├── Titre : "Ce cours n'est PAS fait pour vous si :"
    ├── ✗ Vous ne voulez pas suivre une méthode structurée
    ├── ✗ Vous préférez improviser vos exercices
    └── ✗ Vous n'avez pas l'intention de vous entraîner

────────────────────────────────────────────────────────────

[SECTION] GAIN DE TEMPS
├── Badge : "Gain de temps"
├── Titre section : "Gagnez un temps fou pour vos TD et révisions"
├── Sous-titre : "Fini le stress des recherches interminables !"
│
└── Tableau comparatif :
    │
    │ Tâche                    │ Avant              │ Avec Jurible                │
    │ ───────────────────────  │ ─────────────────  │ ─────────────────────────── │
    │ Comprendre le cours      │ 3h à relire notes  │ 30 min de vidéo claire      │
    │ Préparer un TD           │ 4h de stress       │ 1h de préparation ciblée    │
    │ Réviser pour les partiels│ Journées entières  │ Révision intelligente       │

────────────────────────────────────────────────────────────

[SECTION] PRICING
├── Badge : "Abonnement"
├── Titre section : "Comment accéder à ce cours ?"
├── Sous-titre : "Ce cours de {matiere} est inclus dans l'abonnement Jurible"
│
├── Encart "Jurible Accès complet" :
│   ├── Ce qui est inclus :
│   │   ├── ✓ {matiere} S1 + S2 (complet)
│   │   ├── ✓ + 19 autres matières de licence
│   │   ├── ✓ Cours vidéo + cours écrit + mindmaps
│   │   ├── ✓ QCM, Flashcards, Annales corrigées
│   │   └── ✓ Cours de méthodologie
│   │
│   ├── Titre : "Choisissez votre formule"
│   ├── Toggle durée (4 options) :
│   │   ├── 1 mois — 29€
│   │   ├── 3 mois — 78€ (-21%)
│   │   ├── 6 mois — 140€ (-35%)
│   │   └── 1 an — 240€ (-45%) ← "Le + populaire"
│   │
│   ├── CTA : "S'abonner à Jurible"
│   ├── Micro-texte : "Sans engagement • Annulable en 1 clic"
│   └── Code promo : "20% avec le code JURIBLE20"
│
└── Alternative :
    ├── "Ou préférez-vous acheter à l'unité ?"
    ├── Lien : "Fiches PDF seules 19€"
    └── Lien : "Voir toutes nos offres"

────────────────────────────────────────────────────────────

[SECTION] FAQ
├── Badge : "FAQ"
├── Titre section : "Questions sur le cours de {matiere}"
│
└── Accordéons (5 questions) :
    │
    ├── "À qui s'adresse ce cours ?"
    │   └── "Ce cours s'adresse à tous les étudiants en {niveau} Droit qui suivent un cours de {matiere}, que ce soit au premier ou au second semestre. Il est également adapté aux étudiants en capacité de droit et à ceux qui reprennent leurs études."
    │
    ├── "Quels sont les pré-requis ?"
    │   └── [Réponse]
    │
    ├── "Le contenu est-il conforme à mon université ?"
    │   └── [Réponse]
    │
    ├── "Puis-je télécharger les vidéos ?"
    │   └── [Réponse]
    │
    └── "Combien de temps pour suivre le cours ?"
        └── [Réponse]
│
└── CTA : "Voir toutes les FAQ →"

────────────────────────────────────────────────────────────

[SECTION] AUTRES MATIÈRES
├── Badge : "À découvrir"
├── Titre section : "Découvrez les autres matières de {niveau}"
│
├── Grid 4 cards matières :
│   │
│   ├── Droit civil L1 — 47 vidéos • 47 fiches
│   ├── Droit pénal L1 — 28 vidéos • 28 fiches
│   ├── Introduction au droit — 18 vidéos • 18 fiches
│   └── Histoire du droit — 22 vidéos • 22 fiches
│
└── CTA : "Voir tout le catalogue {niveau} →"

────────────────────────────────────────────────────────────

P10 - CTA FINAL
├── Fond : Dégradé bordeaux/violet
├── Titre : "Prêt à réussir en {matiere} ?"
├── Sous-titre : "Rejoignez 25 000+ étudiants qui progressent avec Jurible"
├── CTA : "Accéder au cours complet dès {prix_mensuel}/mois"
├── Micro-texte : "Sans engagement • Annulable en 1 clic"
└── Code promo : "20% avec le code JURIBLE20"

────────────────────────────────────────────────────────────

O02 - FOOTER
├── Logo + Baseline : "La plateforme n°1 des étudiants en droit"
│
├── Colonnes liens (4) :
│   │
│   ├── Cours :
│   │   ├── L1 Droit
│   │   ├── L2 Droit
│   │   ├── L3 Droit
│   │   └── Capacité
│   │
│   ├── Ressources :
│   │   ├── Fiches PDF
│   │   ├── Suite IA
│   │   ├── Blog
│   │   └── Méthodologie
│   │
│   ├── Jurible :
│   │   ├── À propos
│   │   ├── Notre équipe
│   │   ├── Contact
│   │   └── Partenariats
│   │
│   └── Légal :
│       ├── CGV
│       ├── Mentions légales
│       └── Confidentialité
│
└── Copyright : "© 2024 Jurible. Tous droits réservés. Conçu avec ❤️ à Nice"
```

## Composants utilisés

| ID | Composant | Obligatoire | Notes |
|----|-----------|-------------|-------|
| O01 | Header | ✅ Oui | Sticky |
| M02 | Breadcrumb | ✅ Oui | SEO + navigation |
| H03 | Hero Produit | ✅ Oui | 2 colonnes avec encart pricing sticky |
| P09 | Trust bar | ✅ Oui | 6 logos + Trustpilot + Incubateur |
| C11 | Pain Points | ✅ Oui | 3 cards spécifiques matière |
| M04 | Tabs Démo | ✅ Oui | 7 tabs (Vidéo, Fiche, Mindmap...) |
| C10 | Cards Approche | ✅ Oui | 3 bénéfices |
| P02 | Blocs Multi-format | ✅ Oui | 4 blocs numérotés avec CTA |
| C09 | Sommaire Accordéon | ✅ Oui | Thèmes + cours + stats |
| C18 | Témoignages | ✅ Oui | 3 témoignages avec source |
| C04 | Card Enseignant | ✅ Oui | Photo + bio + citation |
| C10 | Cards Pourquoi nous | ✅ Oui | 4 cards avantages |
| P06 | Cross-sell | ✅ Oui | 3 produits complémentaires |
| P11 | Section Pour vous | ✅ Oui | 2 colonnes Oui/Non |
| P11 | Tableau Gain temps | ✅ Oui | Comparatif Avant/Avec |
| P07 | Pricing | ✅ Oui | Toggle 4 durées + features |
| C07 | FAQ | ✅ Oui | 5 questions spécifiques |
| C19 | Autres matières | ✅ Oui | 4 cards du même niveau |
| P10 | CTA Final | ✅ Oui | Gradient + code promo |
| O02 | Footer | ✅ Oui | 4 colonnes |

## Notes pour le dev

1. **Encart pricing sticky** : Reste visible au scroll sur desktop, devient bottom bar sur mobile
2. **Tabs démo** : Chargement lazy du contenu de chaque tab
3. **Accordéon programme** : Premier thème ouvert par défaut, badge "Gratuit" sur cours n°1
4. **Toggle pricing** : 4 boutons radio, mise à jour dynamique du prix
5. **SEO** :
   - Title : "Cours de {matiere} en ligne | Jurible"
   - Meta desc : "Maîtrisez le {matiere} avec notre cours complet : {nb_videos} vidéos, {nb_qcm} QCM, fiches, annales. Dès {prix_mensuel}/mois."
   - Schema : Course + Product + AggregateRating
6. **Responsive** :
   - Mobile : Encart pricing bottom fixe, tabs scroll horizontal
   - Desktop : 2 colonnes hero, pricing sticky à droite

## Contenu dynamique par matière

Le contenu suivant doit être personnalisé pour chaque matière :
- [ ] Pain points spécifiques (3 cards)
- [ ] Programme/Sommaire (thèmes + cours)
- [ ] Enseignant responsable (bio + photo)
- [ ] Témoignages (filtrés par matière si possible)
- [ ] FAQ spécifiques
- [ ] Autres matières du même niveau

## Déclinaisons (×22 matières)

| Niveau | Matières |
|--------|----------|
| L1 (7) | Introduction au droit, Droit constitutionnel S1, Droit constitutionnel S2, Droit des personnes, Droit de la famille, Histoire du droit, Institutions juridictionnelles |
| L2 (5) | Droit des biens, Droit des contrats, Responsabilité civile, Droit administratif, Droit pénal |
| L3 (10) | Droit commercial, Droit des sociétés, Procédure pénale, Droit du travail, Relations collectives, Droit international public, Droit européen, Procédure civile, Droit administratif des biens, Droit fiscal |

---

*Template mis à jour le 6 février 2026 avec contenu réel de la maquette*
