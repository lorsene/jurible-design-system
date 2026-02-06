# T-HOMEPAGE (v3 — Blocs Figma validés)

> Page d'accueil de Jurible.
> **URL** : `/`
> **Version** : 3.0 — Blocs Figma reconstitués le 6 février 2026
> **Principe** : chaque section = 1 bloc Figma identifié. Le dev pioche le bloc, l'adapte légèrement. Laura ajuste le texte.

---

## Référence rapide

| # | Section | Bloc DS | Variante / Adaptation |
|---|---------|---------|----------------------|
| 0 | Header | **O01** | + barre 3 stats (typo T03 stat) |
| 1 | Hero | **H01** | Variante homepage + visuel CTA |
| 2 | Logos | **P09** | Chips universités |
| 3 | Approche | **C10** | Variante "page courtes" + screenshot intégré |
| 4 | Contenu chiffré | **C09** | Pattern B — fond sombre, 6 stats |
| 5 | Pour qui | **C10** | Variante homepage — personas |
| 6 | Avantages | **C10** | Variante homepage — bénéfices |
| 7 | Nos offres | **C14** | Pricing comparatif adapté (sans prix, Académie 1 col + 3 dessous) |
| 8 | Réassurance | **C06** | 4 badges + note Trustpilot |
| 9 | Steps | **P14** | 4 étapes timeline |
| 10 | Comparaison | **P11** | Variant 1 — Sans / Avec |
| 11 | Équipe | **C04** | Bio/Auteur — bloc 1 + bloc 2 mélangés |
| 12 | Témoignages | **C18** | Bloc 1 — 5 étoiles + CTA |
| 13 | FAQ | **C07** | Accordéon 5 questions + CTA |
| 14 | CTA Final | **P10** | Gradient + 2 CTA |
| 15 | Footer | **O02** | 5 colonnes |

---

## Structure complète

```
┌─────────────────────────────────────────────────────────────┐
│ O01 - HEADER                                                │
│ Logo | COURS | NOS OFFRES | PRÉPAS | RESSOURCES | À PROPOS  │
│                                    [S'abonner] [Se connecter]│
│ Sticky on scroll                                            │
│                                                             │
│ ADAPTATION : ajouter barre 3 stats sous la nav              │
│ ┌───────────────────────────────────────────────────┐       │
│ │ 25 000+ étudiants  │  4.8/5 (590+ avis)  │  94%  │       │
│ │                     │                      │réussite│       │
│ └───────────────────────────────────────────────────┘       │
│ Typo : T03 stat (chiffre bold, label small)                 │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ H01 - HERO CONVERSION (variante homepage)                   │
│                                                             │
│ [Badge violet] École de droit en ligne                      │
│                                                             │
│ La plateforme complète pour                                 │
│ réussir en droit                    ┌───────────────┐       │
│                                     │  Screenshot   │       │
│ Cours vidéo, fiches de révision,    │  plateforme   │       │
│ annales corrigées, outils IA...     │  ecole.       │       │
│ Tout ce qu'il vous faut pour        │  jurible.com  │       │
│ valider votre licence.              └───────────────┘       │
│                                                             │
│ [Découvrir nos offres →]  [Essayer gratuitement]            │
│                                                             │
│ ✓ Sans engagement  ✓ Accès immédiat  ✓ Paiement sécurisé   │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ P09 - LOGOS / SOCIAL PROOF              Fond : #F8F8F8      │
│                                                             │
│ Nos cours préparent les étudiants des meilleures            │
│ universités françaises                                      │
│                                                             │
│ [Paris 1] [Paris 2] [Nanterre] [Lyon 3] [Bordeaux]         │
│ [Aix-Marseille] [Strasbourg] [Clermont] [Côte d'Azur]      │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ C10 - SOLUTION (variante page courtes)  Fond : #F8F8F8      │
│                                                             │
│ [Badge] Aperçu                                              │
│ Un cours pensé pour votre réussite                          │
│                                                             │
│ ADAPTATION : reprendre C10 variante "page courtes"          │
│ avec 5 cards au lieu de 4, texte adapté homepage            │
│                                                             │
│ ┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐     │
│ │ 🎬     │ │ 📝     │ │ ✅     │ │ 📱     │ │ 🤖     │     │
│ │ Cours  │ │ Fiches │ │ QCM &  │ │Accessi-│ │ Outils │     │
│ │ vidéo  │ │ révi-  │ │ Auto-  │ │ble     │ │ IA     │     │
│ │ HD     │ │ sion   │ │ éval.  │ │partout │ │ inclus │     │
│ └────────┘ └────────┘ └────────┘ └────────┘ └────────┘     │
│                                                             │
│ SCREENSHOT INTÉGRÉ DANS LE BLOC :                           │
│ ┌─────────────────────────────────────────────────────┐     │
│ │  📷 Screenshot ecole.jurible.com (interface cours)  │     │
│ │  Format : mockup device (laptop + mobile)           │     │
│ └─────────────────────────────────────────────────────┘     │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ C09 - CONTENU Pattern B (fond sombre)   Fond : dark        │
│                                                             │
│ [Badge] Nos contenus                                        │
│ Tout pour réussir en un seul abonnement                     │
│                                                             │
│ ADAPTATION : reprendre C09 Pattern B (stats dark bg)        │
│ avec les chiffres ci-dessous                                │
│                                                             │
│ ┌───────────┐ ┌───────────┐ ┌───────────┐                  │
│ │  600h+    │ │    20     │ │  2000     │                  │
│ │ Cours     │ │ Matières  │ │ QCM       │                  │
│ │ vidéo     │ │ L1 → L3   │ │           │                  │
│ └───────────┘ └───────────┘ └───────────┘                  │
│ ┌───────────┐ ┌───────────┐ ┌───────────┐                  │
│ │  2000     │ │  400+     │ │ 📖       │                  │
│ │Flashcards │ │ Annales   │ │Programmes │                  │
│ │           │ │ corrigées │ │ détaillés │                  │
│ └───────────┘ └───────────┘ └───────────┘                  │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ C10 - SOLUTION (variante homepage #1)   Fond : #F8F8F8      │
│                                                             │
│ [Badge] Pour qui ?                                          │
│ Jurible s'adapte à votre profil                             │
│ Que vous débutiez ou que vous soyez en fin de licence,      │
│ nous vous accompagnons.                                     │
│                                                             │
│ ADAPTATION : reprendre C10 variante homepage                │
│ avec cards personas colorées + CTA par card                 │
│                                                             │
│ ┌────────────┐ ┌────────────┐ ┌────────────┐ ┌──────────┐  │
│ │ 📚         │ │ 📖         │ │ 🔄         │ │ 👨‍👩‍👧       │  │
│ │ Étudiants  │ │ L2-L3      │ │ Reprise    │ │ Parents  │  │
│ │ L1         │ │            │ │ d'études   │ │          │  │
│ │            │ │ Approfondi-│ │ Remettez-  │ │ Offrez   │  │
│ │ Découvrez  │ │ ssez vos   │ │ vous à     │ │ les      │  │
│ │ le droit   │ │ connais-   │ │ niveau à   │ │ meilleu- │  │
│ │ avec des   │ │ sances...  │ │ votre      │ │ res res- │  │
│ │ cours      │ │            │ │ rythme...  │ │ sources. │  │
│ │ clairs...  │ │ [Voir →]   │ │ [Voir →]   │ │ [Voir →] │  │
│ │ [Voir L1→] │ └────────────┘ └────────────┘ └──────────┘  │
│ └────────────┘                                              │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ C10 - SOLUTION (variante homepage #2)   Fond : #FFFFFF      │
│                                                             │
│ [Badge] Pourquoi Jurible                                    │
│ Des outils pensés pour votre réussite                       │
│                                                             │
│ ADAPTATION : reprendre C10 variante homepage                │
│ avec contenu "avantages/bénéfices"                          │
│                                                             │
│ ┌─────────────────┐ ┌─────────────────┐ ┌────────────────┐  │
│ │ 🎓              │ │ ⚡              │ │ 🏆             │  │
│ │ Enseignants     │ │ Gain de temps   │ │ Résultats      │  │
│ │ experts         │ │                 │ │ prouvés        │  │
│ │                 │ │ Tout au même    │ │                │  │
│ │ 11 profs,       │ │ endroit, fini   │ │ 94% de taux    │  │
│ │ 100% Master 2,  │ │ les heures à    │ │ de réussite,   │  │
│ │ ex-avocats.     │ │ chercher.       │ │ 25 000+        │  │
│ │                 │ │                 │ │ étudiants.     │  │
│ └─────────────────┘ └─────────────────┘ └────────────────┘  │
│                                                             │
│ [Découvrir nos offres →]                                    │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ C14 - PRICING COMPARATIF (adapté)       Fond : #FFFFFF      │
│                                                             │
│ [Badge] Nos offres                                          │
│ Choisissez la formule qui vous correspond                   │
│                                                             │
│ ADAPTATION depuis C14 :                                     │
│ - Supprimer les colonnes de prix                            │
│ - Académie = 1 card pleine largeur en haut                  │
│ - 3 produits secondaires en row dessous                     │
│                                                             │
│ ┌──────────────────────────────────────────────────────┐    │
│ │ ★ POPULAIRE                       L'Académie Jurible │    │
│ │                                                      │    │
│ │ Accès complet à toute la plateforme...               │    │
│ │ ✓ 600h+ de cours vidéo                               │    │
│ │ ✓ 20 matières (L1, L2, L3, Capacité)                 │    │
│ │ ✓ 2000+ QCM & Flashcards                             │    │
│ │ ✓ 400+ annales corrigées                              │    │
│ │ ✓ Cours de méthodologie complets                      │    │
│ │                                                      │    │
│ │ À partir de 20€/mois                                  │    │
│ │ [Découvrir l'Académie →]                              │    │
│ └──────────────────────────────────────────────────────┘    │
│                                                             │
│ ┌───────────────┐ ┌───────────────┐ ┌───────────────┐       │
│ │ 📄            │ │ 🤖            │ │ 📖            │       │
│ │ Fiches PDF    │ │ Outils IA     │ │ Manuel Méthodo│       │
│ │               │ │               │ │               │       │
│ │ Télécharge-   │ │ Fiches d'arrêt│ │ 4 exercices,  │       │
│ │ ables,        │ │ Dissertation, │ │ exemples      │       │
│ │ imprimables,  │ │ Cas pratique  │ │ corrigés, PDF │       │
│ │ à l'unité     │ │               │ │               │       │
│ │               │ │               │ │ 24€ (barré 29€│       │
│ │ 19€/matière   │ │ Dès 5€        │ │               │       │
│ │ [Voir →]      │ │ [Voir →]      │ │ [Voir →]      │       │
│ └───────────────┘ └───────────────┘ └───────────────┘       │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ C06 - RÉASSURANCE                       Fond : #F8F8F8      │
│                                                             │
│ ⭐ 4.8/5      👥 +25 000       🔒 Paiement    ⚡ Accès     │
│ (590+ avis)   étudiants       sécurisé       immédiat      │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ P14 - STEPS                             Fond : #FFFFFF      │
│                                                             │
│ [Badge] Comment ça marche                                   │
│ Rejoins l'Académie en 4 étapes                              │
│ Un processus simple pour commencer à réviser dès aujourd'hui│
│                                                             │
│ ①──────────②──────────③──────────✓                          │
│ Choisis    Crée ton   Accède     Révise                     │
│ ta formule compte     au contenu et réussis                 │
│                                                             │
│ "6 mois =                                    "94% de       │
│  le + pop."                                   réussite"     │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ P11 - COMPARAISON variant 1             Fond : #F8F8F8      │
│                                                             │
│ [Badge] Changement                                          │
│ Réviser autrement                                           │
│                                                             │
│ ┌─── Sans Jurible ───┐  ┌─── Avec Jurible ────┐            │
│ │ ✗ Cours incomplets │  │ ✓ Cours structurés  │            │
│ │ ✗ Méthodo floue    │  │ ✓ Méthodo multimédia│            │
│ │ ✗ Heures perdues   │  │ ✓ Tout au même      │            │
│ │ ✗ Stress permanent │  │   endroit            │            │
│ │ ✗ Aucune idée du   │  │ ✓ Sérénité          │            │
│ │   niveau réel      │  │ ✓ QCM et flashcards │            │
│ └────────────────────┘  └─────────────────────┘            │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ C04 - BIO / AUTEUR (bloc 1 + 2 mélangés) Fond : #FFFFFF    │
│                                                             │
│ ADAPTATION : mélanger bloc 1 (grid vidéos/photos)           │
│ et bloc 2 (avatars + stats) du composant C04                │
│ Note : C04 = composant Figma only (pas de HTML dans repo)   │
│                                                             │
│ Une équipe de professionnels diplômés                       │
│                                                             │
│ BLOC 1 : Grid vidéos/citations enseignants                  │
│ ┌────────────┐ ┌────────────┐ ┌────────────┐ ┌──────────┐  │
│ │ ▶ Photo    │ │ ▶ Photo    │ │ ▶ Photo    │ │ ▶ Photo  │  │
│ │ Julie R.   │ │ Raphaël BL │ │ Megan L.   │ │ Didier O.│  │
│ │ "Une grosse│ │ "Connaître │ │ "Le droit  │ │ "Le cours│  │
│ │ pression   │ │ les bases  │ │ pénal est  │ │ d'IJ vous│  │
│ │ pèse..."   │ │ du droit..."│ │ PARTOUT"  │ │ servira" │  │
│ └────────────┘ └────────────┘ └────────────┘ └──────────┘  │
│                                                             │
│ BLOC 2 : Stats équipe                                       │
│ 11 Enseignants │ 100% Master 2 │ 7+ ans d'exp. moyenne     │
│                                                             │
│ ✓ Cours par des humains  ✓ Expertise vérifiée  ✓ Pédagogie │
│                                                             │
│ [Découvrir tous nos enseignants →] → /equipe                │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ C18 - TÉMOIGNAGES bloc 1 + CTA         Fond : #F8F8F8      │
│                                                             │
│ [Badge] Témoignages                                         │
│ Ce que disent nos étudiants                                 │
│ Rejoins les 25 000 étudiants qui nous font confiance        │
│ depuis 2018.                                                │
│                                                             │
│ ADAPTATION : C18 bloc 1 (cards 5 étoiles) + ajout CTA      │
│                                                             │
│ ┌────────────────┐ ┌────────────────┐ ┌──────────────┐      │
│ │ ⭐⭐⭐⭐⭐        │ │ ⭐⭐⭐⭐⭐        │ │ ⭐⭐⭐⭐⭐      │      │
│ │ "J'ai révisé   │ │ "J'ai eu 16/20│ │ "19/20 au    │      │
│ │ mes partiels   │ │ alors que     │ │ partiel de   │      │
│ │ uniquement     │ │ j'avais 7/20" │ │ droit de la  │      │
│ │ avec vos       │ │               │ │ famille !"   │      │
│ │ fiches..."     │ │ ✓ De 7 à 16   │ │              │      │
│ │                │ │               │ │ ✓ 19/20      │      │
│ │ ✓ 12.55/20     │ │ Karl M.       │ │ Jade B.      │      │
│ │ Manon B.       │ │ L1 Droit      │ │ L1 Droit     │      │
│ │ L1 Paris Assas │ │               │ │              │      │
│ └────────────────┘ └────────────────┘ └──────────────┘      │
│                                                             │
│ [Voir tous les avis →] → /avis                              │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ C07 - FAQ ACCORDÉON                     Fond : #FFFFFF      │
│                                                             │
│ [Badge] FAQ                                                 │
│ Questions fréquentes                                        │
│                                                             │
│ [▸] Quelle différence entre Académie et Fiches PDF ?        │
│     → "L'Académie est un abonnement qui donne accès à      │
│     TOUTE la plateforme : cours vidéo, fiches en ligne,     │
│     QCM, flashcards, annales corrigées et méthodologie.     │
│     Les Fiches PDF sont des achats à l'unité par matière    │
│     (19€), téléchargeables et imprimables."                 │
│                                                             │
│ [▸] Est-ce que Jurible couvre ma matière / mon université ?  │
│     → "Jurible couvre les 20 matières fondamentales de      │
│     L1 à L3 + Capacité en droit. Nos cours suivent le      │
│     programme officiel de toutes les universités françaises."│
│                                                             │
│ [▸] Puis-je essayer avant de m'engager ?                    │
│     → "Oui ! Inscrivez-vous sans engagement et accédez     │
│     à des contenus gratuits. L'abonnement est sans          │
│     engagement — résiliable à tout moment."                 │
│                                                             │
│ [▸] Comment accéder aux cours après inscription ?            │
│     → "C'est immédiat ! Dès votre paiement confirmé, vous  │
│     accédez à tout le contenu. Commencez à réviser en       │
│     moins de 2 minutes."                                    │
│                                                             │
│ [▸] Puis-je résilier à tout moment ?                        │
│     → "Oui, sans engagement. Résiliez en un clic depuis    │
│     votre espace membre. Accès conservé jusqu'à la fin      │
│     de votre période payée."                                │
│                                                             │
│ [Voir toutes les questions →] → /faq                        │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ P10 - CTA FINAL                         Fond : gradient     │
│                                    #B0001D → #7C3AED        │
│                                                             │
│ Prêt à réussir vos études de droit ?                        │
│ Rejoignez les 25 000 étudiants qui ont transformé           │
│ leurs études avec Jurible.                                  │
│                                                             │
│ [Découvrir nos offres →]  [Nous contacter]                  │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ O02 - FOOTER                            Fond : #1A1A1A      │
│                                                             │
│ Jurible + baseline + réseaux sociaux + newsletter           │
│                                                             │
│ Nos offres     Ressources    À propos      Niveaux          │
│ L'Académie     Blog          Notre projet  L1 Droit         │
│ Fiches PDF     Guides        Nos enseig.   L2 Droit         │
│ Outils IA      Méthodologie  Avis          L3 Droit         │
│ Manuel Méthodo Annales       Contact       Capacité         │
│                                                             │
│ CGV | Mentions légales | Confidentialité                    │
│ © 2026 Jurible. Tous droits réservés.                       │
└─────────────────────────────────────────────────────────────┘
```

---

## Détail des adaptations par bloc

### O01 — Header
**Bloc Figma** : O01 Header / Mega Menu
**Adaptation** : Ajouter une barre de 3 stats sous la navigation
- `25 000+` étudiants | `4.8/5` (590+ avis) | `94%` réussite
- Typo : T03 stat (chiffre bold 20px, label small 12px)
- Fond : `#F8F8F8` ou transparent
- Mobile : masqué ou scrollable

---

### H01 — Hero Conversion
**Bloc Figma** : H01 Hero Conversion — variante homepage
**Adaptation** : aucune majeure

| Élément | Contenu |
|---------|---------|
| Badge | "École de droit en ligne" (violet `#EDE9FE`) |
| H1 | La plateforme complète pour **réussir en droit** |
| Sous-titre | Cours vidéo, fiches de révision, annales corrigées, outils IA... Tout ce qu'il vous faut pour valider votre licence, au même endroit. |
| CTA Primary | "Découvrir nos offres →" → `/nos-offres` |
| CTA Secondary | "Essayer gratuitement" → `/inscription` |
| Trust line | ✓ Sans engagement · ✓ Accès immédiat · ✓ Paiement sécurisé |
| Media | Screenshot/vidéo ecole.jurible.com |

---

### P09 — Logos / Social Proof
**Bloc Figma** : P09 Logos
**Adaptation** : aucune

| Élément | Contenu |
|---------|---------|
| Texte | "Nos cours préparent les étudiants des meilleures universités françaises" |
| Chips | Paris 1 · Paris 2 · Nanterre · Lyon 3 · Bordeaux · Aix-Marseille · Strasbourg · Clermont · Côte d'Azur |

---

### C10 #1 — Solution (variante page courtes)
**Bloc Figma** : C10 Solution — variante "page courtes"
**Adaptation** : texte adapté pour la homepage + screenshot ecole.jurible.com intégré en bas du bloc

| Élément | Contenu |
|---------|---------|
| Badge | "Aperçu" |
| H2 | Un cours pensé pour votre **réussite** |
| Sous-titre | Interface intuitive, contenus de qualité, accès illimité. |
| Card 1 | 🎬 **Cours vidéo HD** — Explications claires par des enseignants passionnés, à regarder et revoir sans limite. |
| Card 2 | 📝 **Fiches de révision** — L'essentiel de chaque matière synthétisé pour des révisions efficaces. |
| Card 3 | ✅ **QCM & Auto-évaluation** — Testez vos connaissances et identifiez vos lacunes avant les examens. |
| Card 4 | 📱 **Accessible partout** — Ordinateur, tablette, smartphone. Révisez où vous voulez, quand vous voulez. |
| Card 5 | 🤖 **Outils IA inclus** — Générateurs intelligents pour vous aider dans vos exercices juridiques. |
| Screenshot | Mockup ecole.jurible.com (interface de cours) — format device laptop + mobile |

---

### C09 — Contenu Pattern B (fond sombre)
**Bloc Figma** : C09 Contenu/Cours — Pattern B (stats dark background)
**Adaptation** : chiffres adaptés pour la homepage (vue globale plateforme)

| Stat | Label |
|------|-------|
| 600h+ | Cours vidéo |
| 20 | Matières (L1 → L3) |
| 2000 | QCM |
| 2000 | Flashcards |
| 400+ | Annales corrigées |
| 📖 | Programmes détaillés |

- Fond : dark (`#1A1A1A` ou navy)
- Typo stats : T03 stat (chiffre 40-52px bold blanc, label body small blanc opacity 0.8)
- Animation : compteur au scroll (IntersectionObserver)

---

### C10 #2 — Solution (variante homepage — Personas)
**Bloc Figma** : C10 Solution — variante homepage
**Adaptation** : contenu personas avec cards colorées + CTA par card

| Élément | Contenu |
|---------|---------|
| Badge | "Pour qui ?" |
| H2 | Jurible s'adapte à votre **profil** |
| Sous-titre | Que vous débutiez ou que vous soyez en fin de licence, nous vous accompagnons. |
| Card 1 | 📚 **Étudiants L1** — Découvrez le droit avec des cours clairs et une méthodologie solide dès le départ. → [Voir les cours L1 →] `/cours/l1` |
| Card 2 | 📖 **L2-L3** — Approfondissez vos connaissances et préparez efficacement vos partiels. → [Voir les cours →] `/cours/l2` |
| Card 3 | 🔄 **Reprise d'études** — Remettez-vous à niveau à votre rythme avec des contenus accessibles 24h/24. → [Découvrir l'Académie →] `/academie` |
| Card 4 | 👨‍👩‍👧 **Parents** — Offrez les meilleures ressources à votre enfant pour maximiser ses chances. → [Voir nos offres →] `/nos-offres` |

---

### C10 #3 — Solution (variante homepage — Avantages)
**Bloc Figma** : C10 Solution — variante homepage
**Adaptation** : contenu bénéfices/avantages Jurible

| Élément | Contenu |
|---------|---------|
| Badge | "Pourquoi Jurible" |
| H2 | Des outils pensés pour votre **réussite** |
| Sous-titre | Tout ce qu'il vous faut pour comprendre, mémoriser et réussir vos examens. |
| Card 1 | 🎓 **Enseignants experts** — 11 profs, 100% Master 2, ex-avocats et juristes expérimentés. |
| Card 2 | ⚡ **Gain de temps** — Tout au même endroit, fini les heures à chercher les bonnes ressources. |
| Card 3 | 🏆 **Résultats prouvés** — 94% de taux de réussite, 25 000+ étudiants nous font confiance. |

| CTA | "Découvrir nos offres →" → `/nos-offres` |

---

### C14 — Pricing Comparatif (adapté)
**Bloc Figma** : C14 Pricing Comparatif
**Adaptation majeure** :
- Supprimer les colonnes de prix comparatifs
- Académie = 1 card pleine largeur en haut (mise en avant)
- 3 produits secondaires en row dessous
- Garder le layout features/checkmarks du C14

| Élément | Contenu |
|---------|---------|
| Badge | "Nos offres" |
| H2 | Choisissez la formule qui vous correspond |
| Sous-titre | Que vous cherchiez un accès complet ou des ressources ciblées, nous avons ce qu'il vous faut. |

**Card XL — L'Académie Jurible** (pleine largeur, badge "Populaire") :
- ✓ 600h+ de cours vidéo
- ✓ 20 matières (L1, L2, L3, Capacité)
- ✓ 2000+ QCM & Flashcards
- ✓ 400+ annales corrigées
- ✓ Cours de méthodologie complets
- Prix : "À partir de 20€/mois"
- CTA Primary : "Découvrir l'Académie →" → `/academie`

**3 cards SM** (row, taille égale) :

| Produit | Features | Prix | CTA |
|---------|----------|------|-----|
| Fiches PDF | Téléchargeables, imprimables, à l'unité | 19€/matière | [Voir les fiches →] `/fiches-de-droit` |
| Outils IA | Fiches d'arrêt, Dissertation, Cas pratique | Dès 5€ | [Découvrir les outils →] `/suite-ia` |
| Manuel Méthodo | 4 exercices, exemples corrigés, PDF | 24€ (barré 29€) | [Voir le manuel →] `/manuel-methodologie` |

---

### C06 — Réassurance
**Bloc Figma** : C06 Réassurance
**Adaptation** : aucune majeure

| Élément | Contenu |
|---------|---------|
| Badge 1 | ⭐ 4.8/5 (590+ avis) |
| Badge 2 | 👥 +25 000 étudiants |
| Badge 3 | 🔒 Paiement sécurisé |
| Badge 4 | ⚡ Accès immédiat |

---

### P14 — Steps
**Bloc Figma** : P14 Steps
**Adaptation** : texte adapté, step 4 = check vert

| Élément | Contenu |
|---------|---------|
| Badge | "Comment ça marche" |
| H2 | Rejoins l'Académie en **4 étapes** |
| Sous-titre | Un processus simple pour commencer à réviser efficacement dès aujourd'hui. |
| Step ① | **Choisis ta formule** — Sélectionne la durée d'abonnement qui correspond à tes besoins. — *"6 mois = le + populaire"* |
| Step ② | **Crée ton compte** — Inscris-toi en quelques clics. Paiement 100% sécurisé par Stripe. |
| Step ③ | **Accède au contenu** — 600h+ de cours vidéo, fiches, QCM, flashcards... Tout est disponible 24h/24. |
| Step ✓ | **Révise et réussis** — Prépare tes examens sereinement et valide ton année avec succès. — *Badge "94% de réussite"* |

---

### P11 — Comparaison variant 1
**Bloc Figma** : P11 Comparaison — Variant 1 (Sans / Avec)
**Adaptation** : aucune majeure

| Élément | Contenu |
|---------|---------|
| Badge | "Changement" |
| H2 | Réviser **autrement** |

| Sans Jurible (✗ rouge) | Avec Jurible (✓ vert) |
|-------------------------|------------------------|
| Cours incomplets ou difficiles à comprendre | Cours clairs et structurés par des pros |
| Méthodologie floue, incertitude aux examens | Méthodologie multimédia, confiance aux partiels |
| Heures perdues à chercher les bonnes ressources | Tout au même endroit, gain de temps énorme |
| Stress permanent et peur de l'échec | Sérénité : tu sais que tu es bien préparé |
| Aucune idée de ton niveau réel | QCM et flashcards pour évaluer ta progression |

---

### C04 — Bio / Auteur (bloc 1 + 2 mélangés)
**Bloc Figma** : C04 Bio/Auteur — bloc 1 + bloc 2 fusionnés
**Note** : C04 existe en Figma uniquement (pas de HTML/PNG dans le repo). Le dev devra créer le composant.

**Adaptation** : fusionner le bloc 1 (grid vidéos/photos enseignants avec citations) et le bloc 2 (avatars + stats équipe)

| Élément | Contenu |
|---------|---------|
| H2 | Une équipe de **professionnels diplômés** |
| Body | Notre équipe pédagogique de 11 enseignants, avocats ou juristes... |

**Bloc 1 — Grid vidéos enseignants (4 cards)** :

| Enseignant | Citation |
|------------|----------|
| Julie Ramsamy | "Une grosse pression pèse sur vos petites épaules !" |
| Raphaël Briguet-Lamarre | "Connaître les bases du droit constitutionnel relève de la culture générale !" |
| Megan Léonard | "Il faut prendre conscience que le droit pénal est PARTOUT" |
| Didier Okpo | "Le cours d'institutions juridictionnelles vous servira tout le long de vos études !" |

Chaque card : photo + bouton play vidéo + citation

**Bloc 2 — Stats équipe** :
- `11` Enseignants experts
- `100%` Diplômés Master 2
- `7+` Années d'expérience moyenne

**Trust badges** :
- ✓ Cours rédigés par des humains
- ✓ Expertise juridique vérifiée
- ✓ Pédagogie éprouvée en université

**CTA** : "Découvrir tous nos enseignants →" → `/equipe`

---

### C18 — Témoignages (bloc 1 + CTA)
**Bloc Figma** : C18 Testimonial — Bloc 1 (5 étoiles)
**Adaptation** : ajout CTA en bas du bloc

| Élément | Contenu |
|---------|---------|
| Badge | "Témoignages" |
| H2 | Ce que disent nos **étudiants** |
| Sous-titre | Rejoins les 25 000 étudiants qui nous font confiance depuis 2018. |

| Étudiant | Note | Citation | Résultat |
|----------|------|----------|----------|
| Manon B. — L1 Paris Assas | ⭐⭐⭐⭐⭐ | "J'ai révisé mes partiels uniquement avec vos fiches et j'ai validé mon année à 12.55/20. Je recommande à tous les L1 !" | ✓ Année validée |
| Karl M. — L1 Droit | ⭐⭐⭐⭐⭐ | "J'ai eu 16/20 alors que j'avais eu 7/20 au galop. Je travaille à côté et j'ai appris uniquement avec vos fiches." | ✓ De 7 à 16/20 |
| Jade B. — L1 Droit | ⭐⭐⭐⭐⭐ | "Grâce à votre méthodologie du cas pratique, j'ai obtenu 19/20 à mon partiel de droit de la famille !" | ✓ 19/20 au partiel |

**CTA** : "Voir tous les avis →" → `/avis`

---

### C07 — FAQ Accordéon
**Bloc Figma** : C07 FAQ Accordéon
**Adaptation** : aucune majeure, CTA conservé

5 questions avec réponses complètes :

| Question | Réponse |
|----------|---------|
| Quelle est la différence entre l'Académie et les Fiches PDF ? | L'Académie est un abonnement qui donne accès à TOUTE la plateforme : cours vidéo, fiches en ligne, QCM, flashcards, annales corrigées et méthodologie. Les Fiches PDF sont des achats à l'unité par matière (19€), téléchargeables et imprimables — idéales si vous voulez réviser hors connexion. |
| Est-ce que Jurible couvre ma matière / mon université ? | Jurible couvre les 20 matières fondamentales de L1 à L3 + Capacité en droit. Nos cours suivent le programme officiel enseigné dans toutes les universités françaises (Paris 1, Paris 2, Bordeaux, Lyon 3, Aix-Marseille, etc.). Vérifiez notre catalogue pour votre matière spécifique. |
| Puis-je essayer avant de m'engager ? | Oui ! Vous pouvez vous inscrire sans engagement et accéder à des contenus gratuits (extraits de cours, QCM découverte). L'abonnement Académie est sans engagement — vous pouvez résilier à tout moment depuis votre espace membre. |
| Comment accéder aux cours après mon inscription ? | C'est immédiat ! Dès votre paiement confirmé, vous accédez à tout le contenu de la plateforme ecole.jurible.com : cours vidéo, fiches, QCM, flashcards et annales. Vous pouvez commencer à réviser en moins de 2 minutes. |
| Puis-je résilier à tout moment ? | Oui, l'abonnement Académie est sans engagement. Vous pouvez résilier en un clic depuis votre espace membre. Vous conservez l'accès jusqu'à la fin de votre période payée. |

Schema : FAQPage (SEO rich snippets)

**CTA** : "Voir toutes les questions →" → `/faq`

---

### P10 — CTA Final
**Bloc Figma** : P10 CTA Final
**Adaptation** : aucune

| Élément | Contenu |
|---------|---------|
| Fond | Gradient `#B0001D` → `#7C3AED` |
| H2 | Prêt à réussir vos études de droit ? |
| Sous-titre | Rejoignez les 25 000 étudiants qui ont transformé leurs études avec Jurible. |
| CTA Primary | "Découvrir nos offres →" → `/nos-offres` |
| CTA Secondary | "Nous contacter" → `/contact` |

---

### O02 — Footer
**Bloc Figma** : O02 Footer
**Adaptation** : aucune

5 colonnes : Nos offres · Ressources · À propos · Niveaux · Légal
Copyright : © 2026 Jurible. Tous droits réservés.

---

## Notes pour le dev

### Blocs à créer / adapter

| Bloc | Statut repo | Action |
|------|-------------|--------|
| O01 | ✅ HTML + PNG | Ajouter barre stats |
| H01 | ✅ HTML + PNG | Tel quel |
| P09 | ✅ HTML + PNG | Tel quel |
| C10 | ✅ HTML + PNG | 3 instances : adapter texte pour chaque |
| C09 | ✅ HTML + PNG | Pattern B, adapter chiffres |
| C14 | ✅ HTML + PNG | Adapter layout (1 XL + 3 SM, sans prix comparatifs) |
| C06 | ✅ HTML + PNG | Tel quel |
| P14 | ✅ HTML + PNG | Adapter texte steps |
| P11 | ✅ HTML + PNG | Variant 1, adapter texte |
| **C04** | **Figma only** | **À créer en HTML** — bloc 1 + 2 fusionnés |
| C18 | ✅ HTML + PNG | Bloc 1 + ajout CTA |
| C07 | ✅ HTML + PNG | Tel quel |
| P10 | ✅ HTML + PNG | Tel quel |
| O02 | ✅ HTML + PNG | Tel quel |

### Alternance des fonds

```
O01  Header     → white
H01  Hero       → white
P09  Logos      → #F8F8F8
C10  Solution   → #F8F8F8
C09  Contenu    → dark (#1A1A1A)
C10  Personas   → #F8F8F8
C10  Avantages  → white
C14  Offres     → white
C06  Réassurance→ #F8F8F8
P14  Steps      → white
P11  Comparaison→ #F8F8F8
C04  Équipe     → white
C18  Témoigna.  → #F8F8F8
C07  FAQ        → white
P10  CTA Final  → gradient
O02  Footer     → #1A1A1A
```

### Responsive

| Breakpoint | Layout |
|-----------|--------|
| > 1200px | Grid 12 col, container 1140px |
| 768-1200px | Grid adapté, 2 colonnes max |
| < 768px | 1 colonne, CTA pleine largeur, carousel témoignages |

### Performance

- Images : WebP, lazy-load (sauf hero = eager)
- Fonts : Poppins préchargée (400, 500, 600, 700)
- CLS : dimensions réservées pour images et screenshots
- LCP cible : < 2.5s

---

*Template v3 — 6 février 2026*
*Blocs Figma validés par Laura. Le dev pioche le bloc, adapte le layout. Laura ajuste le texte.*
