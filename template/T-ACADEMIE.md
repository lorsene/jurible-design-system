# T-ACADEMIE (v2 — Optimisée)

> Landing page de l'abonnement Académie Jurible. Page de conversion principale (produit phare).
> **URL** : `/academie`
> **Mise à jour** : 6 février 2026
> **Statut** : Corrigé + optimisé

---

## Objectifs de la page

| Objectif | KPI cible | Levier |
|----------|-----------|--------|
| **Conversion** | Taux conversion > 4% | Funnel PAS (Problem-Agitate-Solve) + pricing ancré |
| **Compréhension** | < 15s pour comprendre l'offre | Hero stats + vidéo démo |
| **Confiance** | Scroll > 60% de la page | 6 témoignages + enseignants + réassurance |
| **SEO** | Top 3 "cours droit en ligne", "académie droit" | H1 sémantique, FAQ structurée, contenu riche |

---

## Diagnostic vs v1

### Erreurs de mapping corrigées

| Ancien ID (v1) | Problème | Nouveau ID (v2) |
|-----------------|----------|------------------|
| C04 (Enseignants) | C04 n'existe pas dans le DS | **C05** (Enseignants) |
| C19 (Grid Matières) | C19 = Catalogue Cours avec cards images, pas une grille texte | **C09** (Contenu/Cours — grille de matières) |
| P07 seul (Pricing) | P07 = section complète, mais le sélecteur 4 colonnes est C17 | **P07** contenant **C17** (Sélecteur Durée) + **P12** (Features incluses) |

### Éléments manquants ajoutés

| Élément | Impact | Position |
|---------|--------|----------|
| **C06 Réassurance** | Bloc de confiance absent près du pricing | #13 (après pricing) |
| **C01 Sticky Mobile CTA** | 70% du trafic mobile, pas de CTA visible au scroll | Fixé en bas d'écran mobile |
| **FAQ : 5 réponses manquantes** | SEO et conversion affaiblis | Toutes complétées |
| **Alternance fonds blanc/bg-light** | Rythme visuel absent de la v1 | Spécifié section par section |
| Copyright 2024 → 2026 | Erreur factuelle | Corrigé |

### Structure : ordre conservé

L'ordre de la maquette suit un **funnel PAS (Problem → Agitate → Solve)** déjà bien structuré pour une page produit. Pas de réordonnancement majeur nécessaire — contrairement à la homepage, cette page doit construire le cas complet avant de montrer le prix.

---

## Structure optimisée (ASCII)

```
┌─────────────────────────────────────────────────────────┐
│  O01 - HEADER                                           │
│  Logo | Nos offres | Cours | Ressources | À propos      │
│  [Se connecter] [Rejoindre l'Académie]                  │
│  Sticky on scroll                                       │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #01 — H01 - HERO ACADÉMIE                             │
│  fond: white                                            │
│                                                         │
│  [Badge violet] L'Académie Jurible                      │
│                                                         │
│  Réussis ta licence de                                  │
│  droit avec l'Académie                                  │
│                                                         │
│  La plateforme complète avec 500h+...                   │
│                                                         │
│  [500h+ cours] [20 matières] [400+ annales] [2000 QCM]  │
│                                                         │
│  [Découvrir les formules →]  [Voir la démo]             │
│  ✓ Sans engagement  ✓ Accès immédiat  ✓ Paiement sécu  │
│                                                         │
│  25 000+       4.8/5        Depuis 2018                 │
│  Étudiants     Note moy.    6 ans d'exp.               │
│                                                         │
│  ┌─────────────────────────────────────────────────┐    │
│  │  ▶ Découvre l'Académie en 2 min                 │    │
│  │  [Vidéo de présentation]                        │    │
│  └─────────────────────────────────────────────────┘    │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #02 — P09 - LOGOS / SOCIAL PROOF                       │
│  fond: bg-light #F8F8F8                                 │
│                                                         │
│  Nos cours préparent les étudiants des meilleures       │
│  universités françaises                                 │
│  [Paris 1] [Paris 2] [Nanterre] [Lyon 3] [Bordeaux]    │
│  [Aix-Marseille]                                        │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #03 — C11 - LE CONSTAT (Pain Points)                   │
│  fond: white                                            │
│                                                         │
│  [Badge] Le constat                                     │
│  Un étudiant sur deux n'obtient pas sa Licence          │
│                                                         │
│  ┌──────────┐ ┌──────────┐ ┌──────────┐                │
│  │ 📚 Charge│ │ ❓ Méthode│ │ 🎯 Auto- │                │
│  │ de travail│ │          │ │ nomie    │                │
│  │ énorme   │ │          │ │          │                │
│  └──────────┘ └──────────┘ └──────────┘                │
│  ┌──────────┐ ┌──────────┐ ┌──────────┐                │
│  │ 😰 Stress│ │ 📄 Cours │ │ 💔 Décou-│                │
│  │ et peur  │ │ incomplets│ │ ragement │                │
│  └──────────┘ └──────────┘ └──────────┘                │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #04 — C10 - LA SOLUTION (Bénéfices)                    │
│  fond: bg-light #F8F8F8                                 │
│                                                         │
│  [Badge] La solution                                    │
│  L'Académie a été conçue pour toi                       │
│                                                         │
│  ┌──────────┐ ┌──────────┐ ┌──────────┐                │
│  │ 📱 Toutes│ │ ⏰ Libère│ │ ✅ Réduis│                │
│  │ tes res- │ │ du temps │ │ le risque│                │
│  │ sources  │ │ pour toi │ │ d'échec  │                │
│  └──────────┘ └──────────┘ └──────────┘                │
│  ┌──────────┐ ┌──────────┐ ┌──────────┐                │
│  │ 🎯 Points│ │ 📝 Méthodo│ │ 👥 Plus │                │
│  │ essentiels│ │ logie    │ │ seul     │                │
│  └──────────┘ └──────────┘ └──────────┘                │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #05 — P11 - COMPARAISON (Sans / Avec)                  │
│  fond: white                                            │
│                                                         │
│  [Badge] Le changement                                  │
│  Réviser autrement                                      │
│                                                         │
│  ┌─── Sans Jurible ───┐  ┌─── Avec Jurible ────┐       │
│  │ ✗ Cours incomplets │  │ ✓ Cours structurés  │       │
│  │ ✗ Méthodo floue    │  │ ✓ Méthodo maîtrisée │       │
│  │ ✗ Heures perdues   │  │ ✓ Tout centralisé   │       │
│  │ ✗ Stress permanent │  │ ✓ Sérénité          │       │
│  │ ✗ Niveau inconnu   │  │ ✓ Auto-évaluation   │       │
│  └────────────────────┘  └──────────────────────┘       │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #06 — P14 - STEPS (Comment ça marche)                  │
│  fond: bg-light #F8F8F8                                 │
│                                                         │
│  [Badge] Comment ça marche                              │
│  Rejoins l'Académie en 4 étapes                         │
│                                                         │
│  ①──────────②──────────③──────────✓                     │
│  Choisis    Crée ton   Accède     Révise                │
│  ta formule compte     au contenu et réussis            │
│                                                         │
│  "94% de nos étudiants valident leur année"             │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #07 — C08 - CE QUI EST INCLUS (Features 3×3)          │
│  fond: white                                            │
│                                                         │
│  [Badge] Ce qui est inclus                              │
│  Tout pour réussir en un seul abonnement                │
│                                                         │
│  ┌─────────┐ ┌─────────┐ ┌─────────┐                   │
│  │ 500h+   │ │ 20      │ │ 2000    │                   │
│  │ Cours   │ │ Cours   │ │ QCM &   │                   │
│  │ vidéo   │ │ écrits  │ │ Quiz    │                   │
│  ├─────────┤ ├─────────┤ ├─────────┤                   │
│  │ 2000    │ │ 400+    │ │ 45h+    │                   │
│  │ Flash-  │ │ Annales │ │ Méthodo │                   │
│  │ cards   │ │ corrigées│ │ logie  │                   │
│  ├─────────┤ ├─────────┤ ├─────────┤                   │
│  │ 20      │ │ L1→L3   │ │ ∞       │                   │
│  │ Mindmaps│ │ Accès   │ │ Mises   │                   │
│  │         │ │ complet │ │ à jour  │                   │
│  └─────────┘ └─────────┘ └─────────┘                   │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #08 — C09 - MATIÈRES (20 matières)                     │
│  fond: bg-light #F8F8F8                                 │
│                                                         │
│  [Badge] 20 matières                                    │
│  Toutes les matières fondamentales                      │
│                                                         │
│  [Intro droit] [Droit constit.] [Famille] [Personnes]   │
│  [Histoire] [Instit. juridict.] [Contrats] [Resp. civ.] │
│  [Droit admin.] [Droit pénal] [Commercial] [Fiscal]     │
│  [Biens] [Proc. pénale] [Sociétés] [Travail]           │
│  [Admin. biens] [DIP] [Relations coll.] [Méthodologie]  │
│                                                         │
│  💬 Matière manquante ? Contactez-nous.                 │
│                                                         │
│  🔒 Paiement sécurisé  ✓ Programme officiel  ⚡ Accès  │
│                                              immédiat   │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #09 — C05 - ENSEIGNANTS                                │
│  fond: white                                            │
│                                                         │
│  Des enseignants passionnés                             │
│  11 professionnels du droit, tous Master 2 minimum      │
│                                                         │
│  [R] [L] [S] [J] [D] [+6]  (avatars)                   │
│                                                         │
│  11 Enseignants │ 100% Master 2 │ 50+ ans exp. cumulée │
│                                                         │
│  [Découvrir nos enseignants →]                          │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #10 — C18 - TÉMOIGNAGES (×6 cards)                     │
│  fond: bg-light #F8F8F8                                 │
│                                                         │
│  [Badge] Témoignages                                    │
│  Ils ont réussi avec l'Académie                         │
│                                                         │
│  ┌──────────┐ ┌──────────┐ ┌──────────┐                │
│  │ Manon B. │ │ Jimmy D. │ │IsabelleJ.│                │
│  │ 12.55/20 │ │ 14 moy.  │ │Passage L2│                │
│  │ L1 Assas │ │ Reprise  │ │ Parent   │                │
│  ├──────────┤ ├──────────┤ ├──────────┤                │
│  │ Karl M.  │ │ Jade B.  │ │PaulineG. │                │
│  │ 7→16/20  │ │ 19/20    │ │ 15/20    │                │
│  │ L1       │ │ L1       │ │ Saclay   │                │
│  └──────────┘ └──────────┘ └──────────┘                │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #11 — P07 + C17 + P12 - PRICING (id="pricing")        │
│  fond: white                                            │
│                                                         │
│  [Badge] Nos formules                                   │
│  Choisissez votre formule                               │
│                                                         │
│  C17 — Sélecteur durée :                                │
│  ┌────────┐ ┌────────┐ ┌─────────┐ ┌─────────┐         │
│  │ 1 mois │ │ 3 mois │ │ 6 mois  │ │ 12 mois │         │
│  │  29€   │ │  78€   │ │ 140€    │ │  240€   │         │
│  │29€/mois│ │26€/mois│ │23€/mois │ │20€/mois │         │
│  │        │ │ -10%   │ │-20% POP.│ │ -31%    │         │
│  │[Choisir]│ │[Choisir]│ │[Choisir]│ │[Choisir]│        │
│  └────────┘ └────────┘ └─────────┘ └─────────┘         │
│                                                         │
│  [Zone SureCart : sc_product_price_choices]              │
│                                                         │
│  P12 — Inclus dans toutes les formules :                │
│  ✓ 500h+ cours vidéo  ✓ Cours écrits  ✓ 2000 QCM      │
│  ✓ 2000 Flashcards ✓ 400+ Annales ✓ 45h+ Méthodo      │
│  ✓ Mindmaps  ✓ Accès L1+L2+L3  ✓ Mises à jour         │
│                                                         │
│  🎁 10 crédits IA offerts — En savoir plus →            │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #12 — C06 - RÉASSURANCE                ★ NOUVEAU       │
│  fond: bg-light #F8F8F8                                 │
│                                                         │
│  ⭐ 4.8/5   👥 +25 000 étudiants   🔒 Paiement        │
│  (590+ avis)                         sécurisé           │
│  🎓 Programme officiel              ⚡ Accès immédiat   │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #13 — C07 - FAQ (6 questions)                          │
│  fond: white                                            │
│                                                         │
│  [Badge] FAQ                                            │
│  Questions fréquentes                                   │
│                                                         │
│  [▸] Quelles matières disponibles ?                     │
│  [▸] Fiches PDF incluses dans l'abonnement ?            │
│  [▸] Programme conforme à mon université ?              │
│  [▸] Puis-je résilier à tout moment ?                   │
│  [▸] Changer de formule en cours ?                      │
│  [▸] Comment accéder après inscription ?                │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #14 — P10 - CTA FINAL                                 │
│  fond: gradient #B0001D → #7C3AED                       │
│                                                         │
│  Prêt à réussir ta licence de droit ?                   │
│  Rejoins les 25 000 étudiants...                        │
│  [Découvrir les formules →]  [Nous contacter]           │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  O02 - FOOTER                                           │
│  fond: #1A1A1A                                          │
│  © 2026 Jurible                                         │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  C01 - STICKY MOBILE CTA               ★ NOUVEAU       │
│  Position: fixed bottom, mobile only (< 768px)         │
│                                                         │
│  [Rejoindre l'Académie — dès 20€/mois]                 │
└─────────────────────────────────────────────────────────┘
```

---

## Table composants DS

| # | Section | Composant DS | ID exact | Variante | Fond |
|---|---------|-------------|----------|----------|------|
| 0 | Header | Header / Mega Menu | **O01** | Sticky, CTA "Rejoindre l'Académie" | white |
| 1 | Hero | Hero Conversion | **H01** | Variant 2 (Académie) + bloc vidéo | white |
| 2 | Logos | Logos / Social Proof | **P09** | Chips universités | bg-light |
| 3 | Pain Points | Pain Points | **C11** | Grille 2×3, 6 problèmes | white |
| 4 | Solution | Solution | **C10** | Grille 2×3, 6 bénéfices | bg-light |
| 5 | Comparaison | Comparaison | **P11** | Variant 1 (Sans / Avec) | white |
| 6 | Steps | Steps | **P14** | 4 étapes + stat finale 94% | bg-light |
| 7 | Features | Fonctionnalité | **C08** | Grille 3×3, 9 éléments avec chiffres | white |
| 8 | Matières | Contenu / Cours | **C09** | Grid 20 chips + note contact + réassurance inline | bg-light |
| 9 | Enseignants | Enseignants | **C05** | Avatars row + 3 stats + CTA | white |
| 10 | Témoignages | Testimonial | **C18** | Variant Standard ×6 cards (3×2 desktop) | bg-light |
| 11a | Pricing section | Pricing Académie | **P07** | Section complète | white |
| 11b | Sélecteur durée | Pricing Sélecteur | **C17** | 4 colonnes (1/3/6/12 mois) | white |
| 11c | Features incluses | Features Grid | **P12** | 9 items + bonus IA | white |
| 12 | Réassurance | Bloc Réassurance | **C06** | Version complète (5 éléments) | bg-light |
| 13 | FAQ | FAQ Accordéon | **C07** | 6 questions spécifiques Académie | white |
| 14 | CTA Final | CTA Final | **P10** | Gradient + 2 CTA | gradient |
| 15 | Footer | Footer | **O02** | 5 colonnes + légal | dark |
| — | Sticky Mobile | CTA Sticky | **C01** | Sticky bar, mobile only | primary |

---

## Détail section par section

### #01 — H01 Hero Académie

**Composant** : `H01-hero-conversion` — Variant 2 (Académie)

```
Structure :
├── Badge violet : "L'Académie Jurible"
├── H1 : "Réussis ta licence de droit avec <span class="text-primary">l'Académie</span>"
├── Sous-titre (Body Large) : "La plateforme complète avec 500h+ de cours vidéo, fiches de révision, annales corrigées, QCM et flashcards pour toutes les matières. Tout ce qu'il te faut pour réussir tes TD et tes partiels."
├── Stats inline (4 chips) :
│   ├── "500h+" — de cours vidéo
│   ├── "20" — matières
│   ├── "400+" — annales corrigées
│   └── "2000" — QCM & Flashcards
├── CTA group :
│   ├── Primary (A02 btn-primary LG) : "Découvrir les formules →" → #pricing (anchor)
│   └── Secondary (A02 btn-outline LG) : "Voir la démo" → #video (anchor)
├── Trust line (Body Small) :
│   ├── ✓ Sans engagement
│   ├── ✓ Accès immédiat
│   └── ✓ Paiement sécurisé
├── Stats sociales (3) :
│   ├── "25 000+" — Étudiants
│   ├── "4.8/5" — Note moyenne
│   └── "Depuis 2018" — 6 ans d'expérience
└── Bloc vidéo (id="video") :
    ├── Titre (H3) : "Découvre l'Académie en 2 min"
    └── Player : embed YouTube/Bunny, poster image, autoplay off
```

**Optimisations :**
- CTA primary = anchor vers #pricing (scroll smooth) = parcours direct vers conversion
- Vidéo = preuve produit puissante, poster image en WebP pour perf
- Les 4 stats inline (500h, 20, 400, 2000) sont des **stats produit** (différentes des stats sociales 25K, 4.8/5, 2018)

---

### #02 — P09 Logos / Social Proof

**Composant** : `P09-logos`

```
Structure :
├── Texte (H4, centré) : "Nos cours préparent les étudiants des meilleures universités françaises"
└── Chips (A02 tags) : Paris 1 | Paris 2 | Nanterre | Lyon 3 | Bordeaux | Aix-Marseille
```

---

### #03 — C11 Pain Points (Le constat)

**Composant** : `C11-pain-points` — Grille 2×3

```
Structure :
├── Badge violet : "Le constat"
├── H2 : "Un étudiant sur deux n'obtient pas sa <span class="text-primary">Licence</span>"
├── Sous-titre : "Les études de droit sont exigeantes. Voici les difficultés que rencontrent la plupart des étudiants."
└── Grid 6 cards (3×2 desktop, 2×3 tablet, 1 col mobile) :
    ├── 📚 "Charge de travail énorme" — "Des milliers de pages de cours, de la jurisprudence, des définitions... Tu es vite submergé par la quantité d'informations."
    ├── ❓ "Problèmes de méthode" — "Fiches d'arrêt, cas pratiques, dissertations, commentaires... Ces exercices juridiques sont difficiles à maîtriser."
    ├── 🎯 "Grande autonomie" — "Contrairement au lycée, personne ne te suit. Tu dois te débrouiller seul pour rattraper les cours manqués."
    ├── 😰 "Stress et peur de l'échec" — "L'idée d'échouer et de décevoir ta famille est difficile à gérer. Le stress peut te paralyser."
    ├── 📄 "Cours incomplets" — "Les manuels sont trop détaillés, les cours magistraux incomplets, les fiches en ligne peu fiables."
    └── 💔 "Découragement" — "Avoir l'impression de bien faire tout en ayant de mauvaises notes peut te faire envisager d'abandonner."
```

**Rôle conversion** : Identification émotionnelle. L'étudiant se reconnaît dans ces problèmes → réceptif à la solution.

---

### #04 — C10 Solution (Bénéfices)

**Composant** : `C10-solution` — Grille 2×3

```
Structure :
├── Badge violet : "La solution"
├── H2 : "L'Académie a été conçue pour <span class="text-primary">toi</span>"
├── Sous-titre : "Nous avons créé l'Académie Jurible pour aider les étudiants en droit à réussir facilement. Une plateforme complète avec tout ce qu'il te faut pour comprendre, apprendre et réussir."
└── Grid 6 cards (3×2 desktop, 1 col mobile) :
    ├── 📱 "Toutes tes ressources à portée de clic" — "Cours vidéo, fiches, annales, QCM... Tout est centralisé dans une seule plateforme accessible 24h/24."
    ├── ⏰ "Libère du temps pour toi" — "Étudie quand et où tu veux. Dégage plus de temps pour tes loisirs."
    ├── ✅ "Réduis le risque d'échec" — "Maximise tes chances de réussite avec toutes les ressources nécessaires."
    ├── 🎯 "Maîtrise les points essentiels" — "Nos cours ciblent les notions qui tombent vraiment aux examens."
    ├── 📝 "Améliore ta méthodologie" — "Accède à des cours de méthodo par des pros qui connaissent les attentes des correcteurs."
    └── 👥 "Tu n'es plus seul" — "Rejoins 25 000 étudiants motivés et bénéficie du soutien de notre équipe."
```

**Rôle conversion** : Chaque bénéfice répond directement à un pain point de la section précédente (miroir 1:1).

---

### #05 — P11 Comparaison

**Composant** : `P11-comparaison` — Variant 1 (Sans / Avec)

```
Structure :
├── Badge violet : "Le changement"
├── H2 : "Réviser <span class="text-primary">autrement</span>"
├── Colonne GAUCHE — "Sans Jurible" (fond neutre, ✗ rouge) :
│   ├── ✗ Cours incomplets ou difficiles à comprendre
│   ├── ✗ Méthodologie floue, incertitude aux examens
│   ├── ✗ Heures perdues à chercher les bonnes ressources
│   ├── ✗ Stress permanent et peur de l'échec
│   └── ✗ Aucune idée de ton niveau réel
└── Colonne DROITE — "Avec Jurible" (fond light, bordure primary, ✓ vert) :
    ├── ✓ Cours clairs et structurés par des pros
    ├── ✓ Méthodologie maîtrisée, confiance aux partiels
    ├── ✓ Tout au même endroit, gain de temps énorme
    ├── ✓ Sérénité : tu sais que tu es bien préparé
    └── ✓ QCM et flashcards pour t'auto-évaluer
```

---

### #06 — P14 Steps

**Composant** : `P14-steps` — 4 étapes

```
Structure :
├── Badge violet : "Comment ça marche"
├── H2 : "Rejoins l'Académie en <span class="text-primary">4 étapes</span>"
├── Sous-titre : "Un processus simple pour commencer à réviser efficacement dès aujourd'hui."
├── Timeline (horizontal desktop / vertical mobile) :
│   ├── ① "Choisis ta formule" — "Sélectionne la durée d'abonnement qui correspond à tes besoins : 1 mois pour tester, 3 ou 6 mois pour un semestre, ou 12 mois pour l'année complète."
│   │   └── Note violet : "La formule 6 mois est la plus populaire"
│   ├── ② "Crée ton compte" — "Inscris-toi en quelques clics avec ton email. Le paiement est 100% sécurisé par Stripe. Tu reçois immédiatement tes identifiants de connexion."
│   ├── ③ "Accède à tout le contenu" — "Dès ton inscription, tu as accès à l'intégralité de la plateforme : 500h+ de cours vidéo, fiches de révision, QCM, flashcards, annales corrigées... Tout est disponible 24h/24."
│   └── ✓ "Révise et réussis" — "Organise tes révisions à ton rythme, teste tes connaissances avec les QCM, et prépare tes examens sereinement avec nos annales corrigées."
└── Stat finale (mise en avant) : "94% de nos étudiants valident leur année"
```

---

### #07 — C08 Features (Ce qui est inclus)

**Composant** : `C08-fonctionnalite` — Variant "Grille 3×3 stats"

```
Structure :
├── Badge violet : "Ce qui est inclus"
├── H2 : "Tout pour réussir en un seul <span class="text-primary">abonnement</span>"
├── Sous-titre : "L'Académie contient tous les cours de ta licence par 11 enseignants à travers de nombreux formats."
└── Grid 9 éléments (3×3 desktop, 2 col tablet, 1 col mobile) :
    ├── 📹 "500h+" — Cours vidéo — "Le cours expliqué en vidéo par des enseignants pour mieux comprendre."
    ├── 📄 "20" — Cours écrits & Fiches — "Fiches de révision complètes, consultables en ligne. Toutes matières."
    ├── ✅ "2000" — QCM & Quiz — "Teste et révise tes connaissances grâce à des centaines de questions."
    ├── 🧠 "2000" — Flashcards — "Mémorise efficacement avec des flashcards numériques interactives."
    ├── 📚 "400+" — Annales corrigées — "Entraîne-toi sur de vrais sujets d'examen avec des corrections détaillées."
    ├── 📝 "45h+" — Méthodologie — "Maîtrise les exercices : cas pratiques, commentaires d'arrêts, dissertations... Essentiel."
    ├── 🗺️ "20" — Mindmaps — "Synthétise visuellement le plan du cours pour mémoriser plus simplement."
    ├── 🎓 "L1→L3" — Accès complet — "Accède à toutes les matières de L1, L2, L3 et Capacité. Tout inclus."
    └── ♾️ "∞" — Mises à jour — "Contenus régulièrement mis à jour pour suivre les évolutions du droit."
```

---

### #08 — C09 Matières

**Composant** : `C09-contenu-cours` — Variant "Grid matières"

```
Structure :
├── Badge violet : "20 matières"
├── H2 : "Toutes les matières <span class="text-primary">fondamentales</span>"
├── Sous-titre : "Un seul abonnement pour accéder à l'intégralité des matières de L1, L2, L3 et Capacité."
├── Grid chips (5×4 desktop, 3 col tablet, 2 col mobile) :
│   ├── Introduction au droit
│   ├── Droit constitutionnel
│   ├── Droit de la famille
│   ├── Droit des personnes
│   ├── Histoire du droit
│   ├── Institutions juridictionnelles
│   ├── Droit des contrats
│   ├── Responsabilité civile
│   ├── Droit administratif
│   ├── Droit pénal
│   ├── Droit commercial
│   ├── Droit fiscal
│   ├── Droit des biens
│   ├── Procédure pénale
│   ├── Droit des sociétés
│   ├── Droit du travail
│   ├── Droit admin. des biens
│   ├── Droit international public
│   ├── Relations collectives
│   └── Méthodologie juridique
├── Note (Body Small, text-muted) : "Une matière n'est pas disponible ? Contactez-nous en précisant la matière et votre université. Nous l'ajouterons rapidement."
└── Réassurance inline (3 éléments) :
    ├── 🔒 "Paiement 100% sécurisé" — "Paiement par carte ou PayPal via Stripe."
    ├── ✓ "Conforme au programme" — "Cours basés sur les programmes officiels."
    └── ⚡ "Accès immédiat" — "Commencez à réviser immédiatement."
```

**Optimisation** : Chaque chip matière devrait être un lien vers `/cours/{matiere}` pour le maillage interne SEO.

---

### #09 — C05 Enseignants

**Composant** : `C05-enseignants` — Variant compact (avatars + stats)

```
Structure :
├── H2 : "Des enseignants <span class="text-primary">passionnés</span>"
├── Sous-titre : "Tous les contenus sont rédigés par 11 professionnels du droit (avocats, chargés d'enseignement, doctorants), tous titulaires d'un Master 2 minimum."
├── Avatars row : [R] [L] [S] [J] [D] [+6] (photos rondes avec initiales)
├── Stats (3) :
│   ├── "11" — Enseignants
│   ├── "100%" — Master 2
│   └── "50+ ans" — d'expérience cumulée
└── CTA link : "Découvrir nos enseignants →" → /equipe
```

---

### #10 — C18 Témoignages

**Composant** : `C18-testimonial` — Variant Standard ×6

```
Structure :
├── Badge violet : "Témoignages"
├── H2 : "Ils ont réussi avec <span class="text-primary">l'Académie</span>"
├── Sous-titre : "Rejoins les 25 000 étudiants qui nous ont fait confiance depuis 2018."
└── Grid 6 cards (3×2 desktop, carousel mobile) :
    ├── Manon B. — L1 Droit Paris Assas
    │   ├── "J'ai révisé mes partiels uniquement avec vos fiches et j'ai validé mon année à 12.55/20..."
    │   └── Badge vert : "✓ Année validée à 12.55/20"
    ├── Jimmy D. — Reprise d'études
    │   ├── "En reprise d'études, l'académie m'a permis de me préparer pendant l'été..."
    │   └── Badge vert : "✓ 14 de moyenne au S1"
    ├── Isabelle J. — Parent d'étudiante
    │   ├── "Ma fille était sur le point d'abandonner. Les cours lui ont permis de reprendre confiance..."
    │   └── Badge vert : "✓ Passage en L2"
    ├── Karl M. — L1 Droit
    │   ├── "J'ai eu 16/20 à mon partiel alors que j'avais eu 7/20 au galop..."
    │   └── Badge vert : "✓ De 7 à 16/20"
    ├── Jade B. — L1 Droit
    │   ├── "Grâce à votre méthodologie du cas pratique, j'ai obtenu 19/20..."
    │   └── Badge vert : "✓ 19/20 en droit de la famille"
    └── Pauline G. — Licence accélérée Paris Saclay
        ├── "J'ai eu 15 en droit des contrats, 12 en droit admin et 10 en constit..."
        └── Badge vert : "✓ 15/20 en droit des contrats"
```

**Note** : 6 témoignages (vs 3 sur la homepage) = plus de preuves sociales pour une page conversion. Diversité des profils : L1, reprise d'études, parent, licence accélérée.

---

### #11 — P07 + C17 + P12 Pricing

**Composants** : `P07-pricing-academie` contenant `C17-pricing-selecteur-duree` + `P12-features`

```
Structure :
├── Badge violet : "Nos formules"
├── H2 : "Choisissez votre <span class="text-primary">formule</span>"
├── Sous-titre : "Un seul abonnement pour accéder à toute la plateforme. Plus la durée est longue, plus vous économisez."
│
├── [C17] Sélecteur 4 colonnes :
│   ├── 1 MOIS — 29€ (29€/mois) — [Choisir]
│   ├── 3 MOIS — 78€ (26€/mois) — Badge "-10%" — [Choisir]
│   ├── 6 MOIS — 140€ (23€/mois) — Badge "-20%" + "Populaire" — [Choisir] ← mis en avant
│   └── 12 MOIS — 240€ (20€/mois) — Badge "-31%" — [Choisir]
│
├── Note technique : Zone SureCart [sc_product_price_choices]
│
├── [P12] Inclus dans toutes les formules (grille 3×3) :
│   ├── ✓ 500h+ de cours vidéo — Toutes les matières
│   ├── ✓ Cours écrits & Fiches — Consultables en ligne
│   ├── ✓ 2000 QCM & Quiz — Pour tester tes connaissances
│   ├── ✓ 2000 Flashcards — Pour mémoriser
│   ├── ✓ 400+ Annales corrigées — Pour t'entraîner
│   ├── ✓ 45h+ de méthodologie — Cas pratiques, commentaires...
│   ├── ✓ Mindmaps — Pour visualiser
│   ├── ✓ Accès L1 + L2 + L3 — Toutes les matières
│   └── ✓ Mises à jour — Contenus à jour
│
└── Bonus (mise en avant, fond violet clair) :
    └── "🎁 10 crédits IA offerts — Générateurs de fiches d'arrêt, dissertations, cas pratiques... En savoir plus →" → /suite-ia
```

**Optimisations :**
- **6 mois mis en avant** (bordure violet, badge "Populaire") = ancrage vers la formule la plus rentable
- **Pourcentages de réduction** visibles sur chaque formule = incite à la durée longue
- **P12 sous le sélecteur** = rappel de la valeur au moment de la décision
- **Bonus IA** en fond violet clair = valeur ajoutée surprise qui pousse à l'action

---

### #12 — C06 Réassurance ★ NOUVEAU

**Composant** : `C06-reassurance` — Version complète

```
Structure :
└── Row 5 éléments (centré) :
    ├── ⭐ "4.8/5" — (590+ avis)
    ├── 👥 "+25 000 étudiants"
    ├── 🔒 "Paiement sécurisé"
    ├── 🎓 "Programme officiel"
    └── ⚡ "Accès immédiat"
```

**Pourquoi** : Positionné juste après le pricing = dernier rempart contre l'hésitation. Le composant C06 est recommandé en position "sous le pricing" dans les specs DS.

---

### #13 — C07 FAQ

**Composant** : `C07-faq-accordeon` — Thème "Académie"

```
Structure :
├── Badge violet : "FAQ"
├── H2 : "Questions fréquentes"
└── Accordéon (6 items) :

    ├── "Quelles sont les matières disponibles dans l'Académie ?"
    │   └── "L'Académie contient 20 matières fondamentales couvrant l'intégralité de la licence de droit (L1, L2, L3 et Capacité). Un seul abonnement vous donne accès à toutes les matières : droit constitutionnel, droit civil, droit pénal, droit administratif, etc. Consultez la liste complète plus haut sur cette page."
    │
    ├── "Les fiches PDF sont-elles incluses dans l'abonnement ?"
    │   └── "Les fiches en ligne sont incluses dans l'Académie et consultables directement sur la plateforme. Les fiches PDF téléchargeables et imprimables sont un produit séparé, disponible à l'achat unitaire (19€/matière). Les abonnés bénéficient cependant de réductions exclusives sur les fiches PDF."
    │
    ├── "Le programme est-il conforme aux attentes de mon université ?"
    │   └── "Oui. Nos cours sont basés sur les programmes officiels enseignés dans toutes les universités françaises. Nos 11 enseignants, tous titulaires d'un Master 2 minimum, s'assurent que le contenu couvre les notions attendues par les correcteurs. Plus de 25 000 étudiants de Paris 1, Assas, Nanterre, Lyon 3, Bordeaux et ailleurs utilisent Jurible."
    │
    ├── "Puis-je résilier mon abonnement à tout moment ?"
    │   └── "Oui, l'abonnement est sans engagement. Vous pouvez résilier en un clic depuis votre espace membre. Vous conservez l'accès à la plateforme jusqu'à la fin de votre période payée. Aucuns frais cachés, aucune pénalité."
    │
    ├── "Puis-je changer de formule en cours d'abonnement ?"
    │   └── "Oui, vous pouvez passer à une formule de durée supérieure à tout moment. La différence de prix est calculée au prorata. Contactez notre support pour effectuer le changement — nous répondons sous 24h."
    │
    └── "Comment accéder aux cours après mon inscription ?"
        └── "C'est immédiat. Dès votre paiement confirmé via Stripe, vous recevez vos identifiants par email et accédez à tout le contenu sur ecole.jurible.com : cours vidéo, fiches, QCM, flashcards et annales. Vous pouvez commencer à réviser en moins de 2 minutes."
```

**Optimisation** : Toutes les 6 réponses complétées (5 manquaient en v1). Schema.org FAQPage pour rich snippets Google.

---

### #14 — P10 CTA Final

**Composant** : `P10-cta-final` — Variant Académie

```
Structure :
├── Fond : gradient #B0001D → #7C3AED
├── H2 (blanc) : "Prêt à réussir ta licence de droit ?"
├── Sous-titre (blanc) : "Rejoins les 25 000 étudiants qui ont transformé leurs études avec Jurible."
├── CTA Primary (A02 btn-white LG) : "Découvrir les formules →" → #pricing
└── CTA Secondary (A02 btn-outline-white LG) : "Nous contacter" → /contact
```

---

### C01 Sticky Mobile CTA ★ NOUVEAU

**Composant** : `C01-cta` — Variant Sticky Bar

```
Structure :
├── Visible : mobile only (< 768px)
├── Position : fixed bottom
├── Fond : white, shadow XL vers le haut
├── CTA (A02 btn-primary MD, full-width) : "Rejoindre l'Académie — dès 20€/mois" → #pricing
└── Apparaît après scroll passé le hero (IntersectionObserver)
```

**Pourquoi** : 70% du trafic est mobile. Sans sticky CTA, le bouton de conversion disparaît après le hero. Essentiel pour maintenir l'accessibilité du CTA tout au long du scroll.

---

## Récapitulatif des optimisations

### Conversion

| # | Optimisation | Impact |
|---|-------------|--------|
| 1 | **C06 Réassurance ajoutée après pricing** | Dernier rempart contre l'hésitation |
| 2 | **C01 Sticky Mobile CTA** | CTA visible en permanence sur mobile (70% du trafic) |
| 3 | **FAQ complétée** (5 réponses manquantes) | Lève les objections, booste le SEO |
| 4 | **Bonus IA mis en avant** visuellement dans le pricing | Valeur ajoutée surprise = déclencheur |
| 5 | **Pain Points → Solution en miroir 1:1** | Chaque problème a sa réponse = structure persuasive |
| 6 | **6 témoignages diversifiés** (L1, reprise, parent, licence accélérée) | Chaque persona se reconnaît |
| 7 | **Chips matières = liens vers /cours/{matiere}** | Maillage interne SEO + navigation |

### UX

| # | Optimisation | Détail |
|---|-------------|--------|
| 1 | Alternance fond blanc / bg-light | Rythme visuel clair section par section |
| 2 | Anchor links (hero → #pricing, hero → #video) | Navigation directe vers points clés |
| 3 | Sticky CTA mobile | Bouton toujours accessible |
| 4 | Carousel témoignages sur mobile | 6 cards en swipe horizontal |
| 5 | Funnel PAS cohérent | Problem → Agitate → Solve → Prove → Act |

### SEO

| # | Optimisation | Détail |
|---|-------------|--------|
| 1 | **H1** : "Réussis ta licence de droit avec l'Académie" | Intention + marque |
| 2 | **Meta title** : "Académie Jurible : Cours de droit en ligne — 500h+ vidéos, QCM, Fiches" | < 60 chars |
| 3 | **Meta description** : "Réussis ta licence avec l'Académie Jurible : 500h+ de cours vidéo, 2000 QCM, fiches de révision, annales corrigées. 25 000 étudiants formés. Dès 20€/mois." | < 160 chars |
| 4 | **Schema.org** : Course + Product + AggregateRating + FAQPage | Rich snippets |
| 5 | **Maillage** : 20 chips matières → /cours/{matiere} | 20 liens internes SEO |

### UI (respect strict du DS)

| Règle DS | Appliquée |
|----------|-----------|
| Badges toujours violet (#EDE9FE + #7C3AED) | ✓ |
| Pas de SVG checkmarks custom | ✓ Emojis + puces standard |
| Typo Poppins uniquement | ✓ |
| Boutons primary = bordeaux #B0001D | ✓ |
| Gradient limité aux accents premium | ✓ Uniquement P10 CTA Final |

---

## Notes pour le développeur

### Priorité d'implémentation

```
Phase 1 (structure) : O01 + H01 (avec vidéo) + P09 + O02
Phase 2 (persuasion): C11 + C10 + P11 + P14
Phase 3 (contenu)   : C08 + C09 + C05 + C18
Phase 4 (conversion): P07/C17/P12 (pricing SureCart) + C06 + C07 + P10
Phase 5 (mobile)    : C01 sticky + responsive final
```

### Intégrations techniques

| Élément | Intégration |
|---------|-------------|
| Pricing | SureCart `[sc_product_price_choices]` — 4 formules |
| Vidéo Hero | YouTube/Bunny embed, poster WebP, lazy-load |
| Sticky CTA | IntersectionObserver sur hero, `position: fixed; bottom: 0` |
| FAQ | Schema.org FAQPage JSON-LD |
| Matières | Liens dynamiques vers /cours/{slug} |
| Tracking | GA4 events : video_play, formule_select, cta_click, faq_expand |

### Comportements dynamiques

| Élément | Comportement |
|---------|-------------|
| O01 Header | Sticky, CTA "Rejoindre l'Académie" visible en permanence |
| H01 CTA | Scroll smooth vers #pricing et #video |
| C17 Cards | Hover + sélection active (bordure violet sur populaire) |
| C18 Témoignages | Grid 3×2 desktop, carousel swipe mobile |
| C07 FAQ | Accordéon, un seul ouvert à la fois |
| C01 Sticky | Apparaît après hero, mobile only, ombre vers le haut |
| P14 Steps | Timeline animée au scroll |

---

## Contenu à compléter

- [x] Hero — Titre, sous-titre, stats, vidéo
- [x] Logos — 6 universités
- [x] Pain Points — 6 problèmes
- [x] Solution — 6 bénéfices
- [x] Comparaison — Sans/Avec
- [x] Steps — 4 étapes + stat 94%
- [x] Features — 9 éléments
- [x] Matières — 20 matières + note contact
- [x] Enseignants — Avatars, stats, CTA
- [x] Témoignages — 6 avec résultats concrets
- [x] Pricing — 4 formules + features + bonus IA
- [x] Réassurance — 5 éléments
- [x] FAQ — 6 questions + réponses complètes
- [x] CTA Final
- [x] Sticky Mobile CTA
- [x] Footer (copyright 2026)
- [ ] Vidéo de présentation Académie (à produire/embed)
- [ ] Photos avatars enseignants (à obtenir)

---

*Template v2 optimisée — 6 février 2026*
*Changements : mapping DS corrigé (C04→C05, C19→C09, P07→P07+C17+P12), +C06 réassurance, +C01 sticky mobile, FAQ complétée, alternance fonds, SEO renforcé*
