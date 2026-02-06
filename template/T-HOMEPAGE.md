# T-HOMEPAGE (v2 — Optimisée)

> Page d'accueil et landing principale de Jurible.
> **URL** : `/`
> **Mise à jour** : 6 février 2026
> **Statut** : Corrigé + optimisé

---

## Objectifs de la page

| Objectif | KPI cible | Levier |
|----------|-----------|--------|
| **Clarté** | < 10s pour comprendre l'offre | Hero H1 + stats + screenshot |
| **Confiance** | Taux de rebond < 45% | Logos, stats, témoignages, équipe |
| **Conversion** | CTR vers /nos-offres > 8% | Funnel : désir → compréhension → offre → action |
| **SEO** | Top 3 "cours droit en ligne" | H1 sémantique, FAQ structurée, maillage interne |

---

## Diagnostic vs maquette originale

### Erreurs de mapping corrigées

| Ancien ID (v1) | Problème | Nouveau ID (v2) |
|-----------------|----------|------------------|
| C01 (Cards Offres) | C01 = CTA Bannière/Lead Magnet, pas des cards produit | **P05** (Quelle offre choisir) |
| C08 (Cards Personas) | C08 = Fonctionnalité avec grille emoji, pas des personas | **C08 variant** (adapté personas) |
| C04 (Enseignants) | C04 n'existe pas dans le DS (Bio/Auteur = à créer) | **C05** (Enseignants) + **C18** (Testimonial) |
| P12 (Features) | P12 = grille "Inclus dans les formules" (contexte pricing) | **C08** (Fonctionnalité) pour l'aperçu |
| P13 (Ressources) | P13 = Bandeau stats, pas une grille de 6 détails | **C08** (Fonctionnalité) pour les stats détaillées |

### Problèmes d'ordre / structure

| Problème | Impact | Correction |
|----------|--------|------------|
| "Nos offres" en position 3 (avant de montrer le produit) | L'utilisateur voit les prix avant de comprendre la valeur | Déplacé en position 7 (après valeur + personas) |
| "Pour qui ?" après "Nos offres" | Incohérent : on segmente APRÈS avoir vendu | Déplacé en position 5 (avant les offres) |
| Stats dupliquées : Hero (25K, 4.8) + Bandeau P13 (25K, 500h, 20, 4.8) + section Ressources (500h, 20, 2000, 400) | Répétitif, dilue l'impact | P13 supprimé, stats hero et ressources différenciées |
| Pas de C06 Réassurance | Manque de trust près du pricing | Ajouté en position 8 (après offres) |
| Pas de P11 Comparaison | Pas de différenciation concurrentielle | Ajouté en position 10 (avant testimonials = preuve) |
| Manuel à 29€ | Prix validé = 24€ barré 29€ | Corrigé |
| Copyright 2024 | On est en 2026 | Corrigé |
| Aucun CTA sur les cards "Pour qui ?" | Opportunité de conversion perdue | CTA ajouté par persona |
| FAQ incomplète (3 réponses manquantes) | SEO et conversion affaiblis | Réponses complétées |

---

## Structure optimisée (ASCII)

```
┌─────────────────────────────────────────────────────────┐
│  O01 - HEADER                                           │
│  Logo | COURS | NOS OFFRES | PRÉPAS | RESSOURCES |      │
│  À PROPOS | [S'ABONNER] [SE CONNECTER]                  │
│  Sticky on scroll                                       │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #01 — H01 - HERO CONVERSION (variant Homepage)        │
│                                                         │
│  [Badge violet] École de droit en ligne                 │
│                                                         │
│  La plateforme complète pour                            │
│  réussir en droit                    ┌───────────────┐  │
│                                      │  Screenshot   │  │
│  Cours vidéo, fiches de révision...  │  plateforme   │  │
│                                      │  ecole.       │  │
│  [Découvrir nos offres →]            │  jurible.com  │  │
│  [Essayer gratuitement]              └───────────────┘  │
│                                                         │
│  ✓ Sans engagement  ✓ Accès immédiat  ✓ Paiement sécu  │
│                                                         │
│  25 000+        4.8/5         94%                       │
│  Étudiants      Note moy.    Réussite                   │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #02 — P09 - LOGOS / SOCIAL PROOF                       │
│                                                         │
│  Nos cours préparent les étudiants des meilleures       │
│  universités françaises                                 │
│                                                         │
│  [Paris 1] [Paris 2] [Nanterre] [Lyon 3] [Bordeaux]    │
│  [Aix-Marseille] [Strasbourg] [Clermont] [Côte d'Azur] │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #03 — C08 - APERÇU PLATEFORME (variant 4 features)    │
│  fond: bg-light #F8F8F8                                 │
│                                                         │
│  [Badge] Aperçu                                         │
│  Une plateforme pensée pour vous                        │
│  Interface intuitive, contenus de qualité, accès        │
│  illimité.                                              │
│                                                         │
│  ┌──────────┐ ┌──────────┐ ┌──────────┐ ┌──────────┐   │
│  │ 🎬       │ │ 📝       │ │ ✅       │ │ 📱       │   │
│  │ Cours    │ │ Fiches   │ │ QCM &    │ │ Acces-   │   │
│  │ vidéo HD │ │ révision │ │ Auto-    │ │ sible    │   │
│  │          │ │          │ │ éval.    │ │ partout  │   │
│  └──────────┘ └──────────┘ └──────────┘ └──────────┘   │
│                                                         │
│  ┌─────────────────────────────────────────────────┐    │
│  │  Screenshot ecole.jurible.com (interface cours) │    │
│  └─────────────────────────────────────────────────┘    │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #04 — C08 - RESSOURCES / CHIFFRES (variant 6 stats)   │
│  fond: white                                            │
│                                                         │
│  [Badge] Ressources                                     │
│  Des outils pensés pour votre réussite                  │
│                                                         │
│  ┌───────────┐ ┌───────────┐ ┌───────────┐             │
│  │ 500h+     │ │ 20        │ │ 2000+     │             │
│  │ Cours     │ │ Matières  │ │ QCM &     │             │
│  │ vidéo     │ │ L1→L3     │ │ Flashcard │             │
│  └───────────┘ └───────────┘ └───────────┘             │
│  ┌───────────┐ ┌───────────┐ ┌───────────┐             │
│  │ 400+      │ │ 45h+      │ │ 🤖        │             │
│  │ Annales   │ │ Méthodo-  │ │ Outils IA │             │
│  │ corrigées │ │ logie     │ │ inclus    │             │
│  └───────────┘ └───────────┘ └───────────┘             │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #05 — C08 variant - POUR QUI   ★ DÉPLACÉ (était #6)   │
│  fond: bg-light #F8F8F8                                 │
│                                                         │
│  [Badge] Pour qui ?                                     │
│  Jurible s'adapte à votre profil                        │
│                                                         │
│  ┌────────────┐ ┌────────────┐ ┌────────────┐ ┌──────┐ │
│  │ 📚         │ │ 📖         │ │ 🔄         │ │ 👨‍👩‍👧  │ │
│  │ Étudiants  │ │ L2-L3      │ │ Reprise    │ │      │ │
│  │ L1         │ │            │ │ d'études   │ │Parent│ │
│  │            │ │            │ │            │ │  s   │ │
│  │ [Voir L1→] │ │ [Voir →]   │ │ [Voir →]   │ │[→]  │ │
│  └────────────┘ └────────────┘ └────────────┘ └──────┘ │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #06 — P05 - NOS OFFRES            ★ DÉPLACÉ (était #3)│
│  fond: white                                            │
│                                                         │
│  [Badge] Nos offres                                     │
│  Choisissez la formule qui vous correspond              │
│                                                         │
│  ┌──────────────────────────────────────────────────┐   │
│  │ ★ POPULAIRE                      L'Académie      │   │
│  │ Accès complet à toute la         Jurible         │   │
│  │ plateforme...                                    │   │
│  │ ✓ 500h+ ✓ 20 matières ✓ 2000+ QCM ✓ 400+ ann.  │   │
│  │ À partir de 20€/mois    [Découvrir l'Académie →] │   │
│  └──────────────────────────────────────────────────┘   │
│                                                         │
│  ┌───────────────┐ ┌───────────────┐ ┌───────────────┐  │
│  │ Fiches PDF    │ │ Outils IA     │ │ Manuel Méthodo│  │
│  │ 19€/matière   │ │ dès 5€        │ │ 24€ (29€)     │  │
│  │ [Voir →]      │ │ [Voir →]      │ │ [Voir →]      │  │
│  └───────────────┘ └───────────────┘ └───────────────┘  │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #07 — C06 - RÉASSURANCE              ★ NOUVEAU         │
│  fond: bg-light #F8F8F8                                 │
│                                                         │
│  ⭐ 4.8/5   👥 +25 000 étudiants   🔒 Paiement        │
│  (590+ avis)                         sécurisé           │
│  🎓 Programme officiel              📱 Accès immédiat   │
│  (logo MEN + logos univs)                               │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #08 — P14 - STEPS / VOTRE PARCOURS                    │
│  fond: white                                            │
│                                                         │
│  [Badge] Comment ça marche                              │
│  Rejoins l'Académie en 4 étapes                         │
│                                                         │
│  ①──────────②──────────③──────────✓                     │
│  Choisis    Crée ton   Accède     Révise                │
│  ta formule compte     au contenu et réussis            │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #09 — P11 - COMPARAISON               ★ NOUVEAU       │
│  fond: bg-light #F8F8F8                                 │
│                                                         │
│  [Badge] Changement                                     │
│  Réviser autrement                                      │
│                                                         │
│  ┌─── Sans Jurible ───┐  ┌─── Avec Jurible ────┐       │
│  │ ✗ Cours incomplets │  │ ✓ Cours structurés  │       │
│  │ ✗ Méthodo floue    │  │ ✓ Méthodo multimédia│       │
│  │ ✗ Heures perdues   │  │ ✓ Tout au même      │       │
│  │ ✗ Stress permanent │  │   endroit, gain de  │       │
│  │ ✗ Aucune idée du   │  │   temps énorme      │       │
│  │   niveau réel      │  │ ✓ Sérénité          │       │
│  └────────────────────┘  │ ✓ QCM et flashcards │       │
│                          └──────────────────────┘       │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #10 — C05 + C18 - ÉQUIPE & TÉMOIGNAGES ENSEIGNANTS    │
│  fond: white                                            │
│                                                         │
│  [Photo de groupe 11 enseignants]                       │
│  Une équipe de professionnels diplômés                  │
│                                                         │
│  11 Enseignants │ 100% Master 2 │ 7+ ans exp. moy.     │
│                                                         │
│  ┌────────────┐ ┌────────────┐ ┌────────────┐ ┌──────┐ │
│  │ "Une grosse│ │ "Connaître │ │ "Le droit  │ │"Le   │ │
│  │ pression   │ │ les bases  │ │ pénal est  │ │cours │ │
│  │ pèse..."   │ │ du droit..."│ │ PARTOUT"  │ │d'IJ."│ │
│  │ — J.Ramsamy│ │ — R.B-L.   │ │ — M.Léonard│ │—Okpo│ │
│  └────────────┘ └────────────┘ └────────────┘ └──────┘ │
│                                                         │
│  ✓ Cours par des humains ✓ Expertise vérifiée ✓ Péda.  │
│  [Découvrir tous nos enseignants →]                     │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #11 — C18 - TÉMOIGNAGES ÉTUDIANTS                     │
│  fond: bg-light #F8F8F8                                 │
│                                                         │
│  [Badge] Témoignages                                    │
│  Ce que disent nos étudiants                            │
│  Rejoins les 25 000 étudiants qui nous font confiance   │
│  depuis 2018.                                           │
│                                                         │
│  ┌────────────────┐ ┌────────────────┐ ┌──────────────┐ │
│  │ ⭐⭐⭐⭐⭐        │ │ ⭐⭐⭐⭐⭐        │ │ ⭐⭐⭐⭐⭐      │ │
│  │ "J'ai révisé   │ │ "J'ai eu 16/20│ │ "19/20 au    │ │
│  │ mes partiels   │ │ alors que     │ │ partiel de   │ │
│  │ uniquement..."  │ │ j'avais 7/20" │ │ droit de la  │ │
│  │                │ │               │ │ famille !"   │ │
│  │ ✓ 12.55/20     │ │ ✓ De 7 à 16   │ │ ✓ 19/20      │ │
│  │ Manon B.       │ │ Karl M.       │ │ Jade B.      │ │
│  │ L1 Paris Assas │ │ L1 Droit      │ │ L1 Droit     │ │
│  └────────────────┘ └────────────────┘ └──────────────┘ │
│                                                         │
│  [Voir tous les avis →]                                 │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #12 — C07 - FAQ ACCORDÉON                             │
│  fond: white                                            │
│                                                         │
│  [Badge] FAQ                                            │
│  Questions fréquentes                                   │
│                                                         │
│  [▸] Quelle différence entre Académie et Fiches PDF ?   │
│  [▸] Est-ce que Jurible couvre ma matière ?              │
│  [▸] Puis-je essayer avant de m'engager ?               │
│  [▸] Comment accéder aux cours après inscription ?      │
│  [▸] Puis-je résilier à tout moment ?                   │
│                                                         │
│  [Voir toutes les questions →]                          │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  #13 — P10 - CTA FINAL                                 │
│  fond: gradient #B0001D → #7C3AED                       │
│                                                         │
│  Prêt à réussir vos études de droit ?                   │
│  Rejoignez les 25 000 étudiants qui ont transformé      │
│  leurs études avec Jurible.                             │
│                                                         │
│  [Découvrir nos offres →]  [Nous contacter]             │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  O02 - FOOTER                                           │
│  fond: #1A1A1A                                          │
│                                                         │
│  Jurible + baseline + réseaux + newsletter              │
│  Nos offres | Ressources | À propos | Contact | Niveaux │
│  CGV | Mentions légales | Confidentialité               │
│  © 2026 Jurible                                         │
└─────────────────────────────────────────────────────────┘
```

---

## Changements d'ordre vs maquette

| # | Section | Position maquette | Position v2 | Raison |
|---|---------|-------------------|-------------|--------|
| 1 | Header | 0 | 0 | — |
| 2 | Hero H01 | 1 | 1 | — |
| 3 | Logos P09 | 2 | 2 | — |
| 4 | **Nos offres** | **3** | **6** | **Trop tôt : l'utilisateur voit les prix avant de comprendre la valeur. Déplacé après la démonstration de valeur et la segmentation.** |
| 5 | Aperçu plateforme | 5 | 3 | Monter : montrer le produit immédiatement après la crédibilité |
| 6 | Ressources stats | 6 | 4 | Monte avec l'aperçu (bloc "valeur") |
| 7 | **Pour qui ?** | **4** | **5** | **Déplacé AVANT les offres : segmenter d'abord, vendre ensuite** |
| 8 | **C06 Réassurance** | **absent** | **7** | **AJOUTÉ : bloc de confiance après les offres = réduit l'hésitation** |
| 9 | Steps P14 | 8 | 8 | Légèrement remonté |
| 10 | **P11 Comparaison** | **absent** | **9** | **AJOUTÉ : différenciation concurrentielle avant les preuves sociales** |
| 11 | Équipe + enseignants | 7 | 10 | Descend légèrement (autorité avant témoignages) |
| 12 | Témoignages étudiants | 9 | 11 | — |
| 13 | **P13 Stats bandeau** | **10** | **supprimé** | **Redondant : mêmes chiffres que hero (25K, 500h, 20, 4.8). Remplacé par C06 réassurance et P11 comparaison.** |
| 14 | FAQ C07 | 11 | 12 | — |
| 15 | CTA Final P10 | 12 | 13 | — |
| 16 | Footer | 13 | 14 | — |

**Logique du funnel optimisé :**
```
ATTIRER  →  Hero + Logos
MONTRER  →  Aperçu + Ressources (montrer le produit, pas juste en parler)
CIBLER   →  Pour qui ? (l'utilisateur se reconnaît)
VENDRE   →  Nos offres + Réassurance (prix + confiance)
RASSURER →  Steps + Comparaison + Équipe + Témoignages
CONVERTIR→  FAQ (lever les objections) + CTA Final
```

---

## Table composants DS

| # | Section | Composant DS | ID exact | Variante | Fond |
|---|---------|-------------|----------|----------|------|
| 0 | Header | Header / Mega Menu | **O01** | Desktop + Mobile | white |
| 1 | Hero | Hero Conversion | **H01** | Variant 1 (Homepage) | white |
| 2 | Logos | Logos / Social Proof | **P09** | Chips universités | bg-light |
| 3 | Aperçu | Fonctionnalité | **C08** | Grille 4 features + screenshot | bg-light |
| 4 | Ressources | Fonctionnalité | **C08** | Grille 2×3 stats détaillées | white |
| 5 | Pour qui | Fonctionnalité | **C08** | Grille 4 personas + CTA | bg-light |
| 6 | Nos offres | Quelle offre choisir | **P05** | 1 card XL (Académie) + 3 cards SM | white |
| 7 | Réassurance | Bloc Réassurance | **C06** | Version complète (5 éléments) | bg-light |
| 8 | Steps | Steps / Comment ça marche | **P14** | 4 étapes + timeline | white |
| 9 | Comparaison | Comparaison Sans/Avec | **P11** | Variant 1 (2 colonnes) | bg-light |
| 10a | Équipe | Enseignants | **C05** | Photo groupe + 3 mini-stats | white |
| 10b | Citations enseignants | Testimonial | **C18** | Variant Hero (carousel ×4) | white |
| 11 | Témoignages étudiants | Testimonial | **C18** | Variant Standard (×3 cards) | bg-light |
| 12 | FAQ | FAQ Accordéon | **C07** | 5 questions + CTA "voir tout" | white |
| 13 | CTA Final | CTA Final | **P10** | Gradient + 2 CTA | gradient |
| 14 | Footer | Footer | **O02** | Desktop 5 colonnes / Mobile accordéon | dark |

---

## Détail section par section

### #01 — H01 Hero Conversion

**Composant** : `H01-hero-conversion` — Variant 1 (Homepage)

```
Structure :
├── Badge violet : "École de droit en ligne"
├── H1 : "La plateforme complète pour <span class="text-primary">réussir en droit</span>"
├── Sous-titre (Body Large) : "Cours vidéo, fiches de révision, annales corrigées, outils IA... Tout ce qu'il vous faut pour valider votre licence, au même endroit."
├── CTA group :
│   ├── Primary (A02 btn-primary LG) : "Découvrir nos offres →" → /nos-offres
│   └── Secondary (A02 btn-outline LG) : "Essayer gratuitement" → /inscription
├── Trust line (Body Small, text-muted) :
│   ├── ✓ Sans engagement
│   ├── ✓ Accès immédiat
│   └── ✓ Paiement sécurisé
├── Stats (3 colonnes) :
│   ├── "25 000+" — Étudiants
│   ├── "4.8/5" — Note moyenne
│   └── "94%" — Taux de réussite
└── Media : Screenshot/vidéo plateforme ecole.jurible.com
```

**Optimisations :**
- CTA secondary changé de "Voir la plateforme" → **"Essayer gratuitement"** (plus incitatif, implique une action concrète et gratuite)
- Stats avec compteur animé au scroll (intersection observer)
- Screenshot en format WebP, lazy-loaded, avec possibilité de play vidéo overlay
- Mobile : stats passent sous le screenshot, CTA pleine largeur

---

### #02 — P09 Logos / Social Proof

**Composant** : `P09-logos`

```
Structure :
├── Texte (H4, centré) : "Nos cours préparent les étudiants des meilleures universités françaises"
└── Chips (A02 tags) : Paris 1 | Paris 2 | Nanterre | Lyon 3 | Bordeaux | Aix-Marseille | Strasbourg | Clermont-Auvergne | Côte d'Azur
```

**Optimisations :**
- Garder tel quel, positionné idéalement juste après le hero
- Mobile : chips wrappent sur 3 lignes, scroll horizontal optionnel

---

### #03 — C08 Aperçu plateforme

**Composant** : `C08-fonctionnalite` — Variant "Aperçu produit"

```
Structure :
├── Badge violet : "Aperçu"
├── H2 : "Une plateforme pensée pour <span class="text-primary">vous</span>"
├── Sous-titre : "Interface intuitive, contenus de qualité, accès illimité."
├── Grid 4 features (2×2 desktop, 1 col mobile) :
│   ├── 🎬 "Cours vidéo HD" — "Explications claires par des enseignants passionnés, à regarder et revoir sans limite."
│   ├── 📝 "Fiches de révision" — "L'essentiel de chaque matière synthétisé pour des révisions efficaces."
│   ├── ✅ "QCM & Auto-évaluation" — "Testez vos connaissances et identifiez vos lacunes avant les examens."
│   └── 📱 "Accessible partout" — "Ordinateur, tablette, smartphone. Révisez où vous voulez, quand vous voulez."
└── Visuel pleine largeur : Screenshot ecole.jurible.com (interface de cours)
```

**Optimisations :**
- Ajout de la mention "Accessible partout" = rassure sur le format mobile (70% du trafic est mobile d'après docs/architecture-ecole.md)
- Screenshot cliquable pour agrandir (lightbox)

---

### #04 — C08 Ressources / Chiffres

**Composant** : `C08-fonctionnalite` — Variant "Stats détaillées"

```
Structure :
├── Badge violet : "Ressources"
├── H2 : "Des outils pensés pour votre <span class="text-primary">réussite</span>"
├── Sous-titre : "Tout ce qu'il vous faut pour comprendre, mémoriser et réussir vos examens."
└── Grid 6 cards (3×2 desktop, 2×3 tablet, 1 col mobile) :
    ├── "500h+" — Cours vidéo — "Le cours expliqué en vidéo pour mieux comprendre chaque notion."
    ├── "20" — Matières — "Toutes les matières fondamentales de L1 à L3 + Capacité."
    ├── "2000+" — QCM & Flashcards — "Testez vos connaissances et mémorisez efficacement."
    ├── "400+" — Annales corrigées — "Entraîne-toi sur des sujets d'examens réels avec corrections."
    ├── "45h+" — Méthodologie — "Maîtrise les exercices juridiques : cas pratique, dissertation, commentaire."
    └── "🤖" — Outils IA — "Générateurs intelligents pour vous aider dans vos exercices."
```

**Note** : Les chiffres (500h, 20, 2000, 400, 45h) sont **différents** des stats hero (25K, 4.8/5, 94%) = pas de redondance. Les stats hero = preuve sociale. Cette section = contenu concret.

---

### #05 — C08 variant Pour qui ?

**Composant** : `C08-fonctionnalite` — Variant "Personas"

```
Structure :
├── Badge violet : "Pour qui ?"
├── H2 : "Jurible s'adapte à votre <span class="text-primary">profil</span>"
├── Sous-titre : "Que vous débutiez ou que vous soyez en fin de licence, nous vous accompagnons."
└── Grid 4 cards (4 col desktop, 2×2 tablet, 1 col mobile) :
    ├── 📚 "Étudiants L1" — "Découvrez le droit avec des cours clairs et une méthodologie solide dès le départ."
    │   └── CTA link : "Voir les cours L1 →" → /cours/l1
    ├── 📖 "L2-L3" — "Approfondissez vos connaissances et préparez efficacement vos partiels."
    │   └── CTA link : "Voir les cours →" → /cours/l2
    ├── 🔄 "Reprise d'études" — "Remettez-vous à niveau à votre rythme avec des contenus accessibles 24h/24."
    │   └── CTA link : "Découvrir l'Académie →" → /academie
    └── 👨‍👩‍👧 "Parents" — "Offrez les meilleures ressources à votre enfant pour maximiser ses chances."
        └── CTA link : "Voir nos offres →" → /nos-offres
```

**Optimisations :**
- **CTA ajoutés sur chaque card** (absents de la maquette = conversion perdue)
- Chaque CTA pointe vers la page la plus pertinente pour le persona
- Hover : card légèrement surélevée (shadow MD → LG)

---

### #06 — P05 Nos Offres

**Composant** : `P05-quelle-offre-choisir` — Adapté en cards verticales

```
Structure :
├── Badge violet : "Nos offres"
├── H2 : "Choisissez la formule qui vous correspond"
├── Sous-titre : "Que vous cherchiez un accès complet ou des ressources ciblées, nous avons ce qu'il vous faut."
│
├── CARD XL — L'Académie Jurible (mise en avant) :
│   ├── Badge : "Populaire" (violet #EDE9FE + #7C3AED)
│   ├── Titre : "L'Académie Jurible"
│   ├── Description : "Accès complet à toute la plateforme..."
│   ├── Features :
│   │   ├── ✓ 500h+ de cours vidéo
│   │   ├── ✓ 20 matières (L1, L2, L3, Capacité)
│   │   ├── ✓ 2000+ QCM & Flashcards
│   │   └── ✓ 400+ annales corrigées
│   ├── Prix : "À partir de 20€/mois"
│   └── CTA (A02 btn-primary MD) : "Découvrir l'Académie →" → /academie
│
└── Grid 3 cards SM (égales) :
    ├── Fiches PDF :
    │   ├── Features : Téléchargement illimité, Imprimables, À l'unité
    │   ├── Prix : "19€/matière"
    │   └── CTA link : "Voir les fiches →" → /fiches-de-droit
    │
    ├── Outils IA :
    │   ├── Features : Fiches d'arrêt, Dissertation, Cas pratique
    │   ├── Prix : "Crédits à partir de 5€"
    │   └── CTA link : "Découvrir les outils →" → /suite-ia
    │
    └── Manuel Méthodologie :
        ├── Features : 4 exercices, Exemples corrigés, PDF
        ├── Prix : "24€" (barré "29€")
        └── CTA link : "Voir le manuel →" → /manuel-methodologie
```

**Optimisations :**
- **L'Académie en card XL** (pleine largeur, visuellement dominante) + 3 produits secondaires en row dessous = hiérarchie claire. Le produit principal (revenus récurrents) capte l'attention en premier
- **Manuel : prix corrigé** de "29€" à "24€ barré 29€" (prix validé)
- Les 3 cards secondaires ont des CTA links (pas des boutons) pour ne pas concurrencer le CTA Académie
- Hover sur toutes les cards

---

### #07 — C06 Réassurance ★ NOUVEAU

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

**Pourquoi c'est ajouté :**
- Positionné **juste après les offres/prix** = moment critique de la décision
- Le composant C06 existe déjà dans le DS et est recommandé pour "Homepage" et "Pages pricing" (voir le PNG C06)
- Réduit l'anxiété post-prix et pousse vers la conversion

---

### #08 — P14 Steps

**Composant** : `P14-steps` — 4 étapes

```
Structure :
├── Badge violet : "Comment ça marche"
├── H2 : "Rejoins l'Académie en <span class="text-primary">4 étapes</span>"
├── Sous-titre : "Un processus simple pour commencer à réviser efficacement dès aujourd'hui."
└── Timeline horizontale (desktop) / verticale (mobile) :
    ├── ① "Choisis ta formule" — "Sélectionne la durée d'abonnement qui correspond à tes besoins." — Emoji link : "6 mois = le + populaire"
    ├── ② "Crée ton compte" — "Inscris-toi en quelques clics. Paiement 100% sécurisé par Stripe."
    ├── ③ "Accède au contenu" — "500h+ de cours vidéo, fiches, QCM, flashcards... Tout est disponible 24h/24."
    └── ✓ "Révise et réussis" — "Prépare tes examens sereinement et valide ton année avec succès." — Badge : "94% de réussite"
```

**Optimisations :**
- Badge "Comment ça marche" (au lieu de "Votre parcours") = plus explicite, réduit la friction
- H2 reformulé avec "4 étapes" = ancrage mental de simplicité
- Step 4 = cercle vert (check) au lieu de numéro = aboutissement visuel
- Micro-données ajoutées (step 1 : "6 mois = le + populaire", step 4 : "94% de réussite")

---

### #09 — P11 Comparaison ★ NOUVEAU

**Composant** : `P11-comparaison` — Variant 1 (Sans / Avec)

```
Structure :
├── Badge violet : "Changement"
├── H2 : "Réviser <span class="text-primary">autrement</span>"
│
├── Colonne GAUCHE — "Sans Jurible" (fond neutre, icône ✗ rouge) :
│   ├── ✗ Cours incomplets ou difficiles à comprendre
│   ├── ✗ Méthodologie floue, incertitude aux examens
│   ├── ✗ Heures perdues à chercher les bonnes ressources
│   ├── ✗ Stress permanent et peur de l'échec
│   └── ✗ Aucune idée de ton niveau réel
│
└── Colonne DROITE — "Avec Jurible" (fond light, bordure primary, icône ✓ vert) :
    ├── ✓ Cours clairs et structurés par des pros
    ├── ✓ Méthodologie multimédia, confiance aux partiels
    ├── ✓ Tout au même endroit, gain de temps énorme
    ├── ✓ Sérénité : tu sais que tu es bien préparé
    └── ✓ QCM et flashcards pour évaluer ta progression
```

**Pourquoi c'est ajouté :**
- La comparaison "sans/avec" est un des patterns de conversion les plus efficaces en ed-tech
- Le composant P11 variant 1 existe déjà dans le DS (2 colonnes sans/avec)
- Positionné avant l'autorité (enseignants) et les témoignages = renforce le "pourquoi Jurible" juste avant les preuves
- Répond à l'objection implicite "Est-ce que ça vaut le coup ?"

---

### #10 — C05 + C18 Équipe & Témoignages enseignants

**Composants** : `C05-enseignants` + `C18-testimonial` (variant Hero)

```
Structure :
├── [BLOC ÉQUIPE — C05]
│   ├── Visuel : Photo de groupe des 11 enseignants
│   ├── H2 : "Une équipe de <span class="text-primary">professionnels diplômés</span>"
│   ├── Body : "Notre équipe pédagogique de 11 enseignants, avocats ou juristes..."
│   └── Stats (3) :
│       ├── "11" — Enseignants experts
│       ├── "100%" — Diplômés Master 2
│       └── "7+" — Années d'expérience moy.
│
├── [BLOC CITATIONS — C18 Hero ×4]
│   ├── Julie Ramsamy — "Une grosse pression pèse sur vos petites épaules !"
│   ├── Raphaël B-L. — "Connaître les bases du droit constitutionnel relève de la culture générale !"
│   ├── Megan Léonard — "Il faut prendre conscience que le droit pénal est PARTOUT"
│   └── Didier Okpo — "Le cours d'institutions juridictionnelles vous servira tout le long de vos études !"
│
├── Trust badges (3, inline) :
│   ├── ✓ Cours rédigés par des humains
│   ├── ✓ Expertise juridique vérifiée
│   └── ✓ Pédagogie éprouvée en université
│
└── CTA link : "Découvrir tous nos enseignants →" → /equipe
```

---

### #11 — C18 Témoignages étudiants

**Composant** : `C18-testimonial` — Variant Standard (cards)

```
Structure :
├── Badge violet : "Témoignages"
├── H2 : "Ce que disent nos <span class="text-primary">étudiants</span>"
├── Sous-titre : "Rejoins les 25 000 étudiants qui nous font confiance depuis 2018."
│
├── Grid 3 cards (3 col desktop, carousel mobile) :
│   ├── Manon B. — L1 Droit Paris Assas
│   │   ├── ⭐⭐⭐⭐⭐
│   │   ├── "J'ai révisé mes partiels uniquement avec vos fiches et j'ai validé mon année à 12.55/20. Je recommande à tous les L1 !"
│   │   └── Badge vert : "✓ Année validée"
│   │
│   ├── Karl M. — L1 Droit
│   │   ├── ⭐⭐⭐⭐⭐
│   │   ├── "J'ai eu 16/20 alors que j'avais eu 7/20 au galop. Je travaille à côté et j'ai appris uniquement avec vos fiches."
│   │   └── Badge vert : "✓ De 7 à 16/20"
│   │
│   └── Jade B. — L1 Droit
│       ├── ⭐⭐⭐⭐⭐
│       ├── "Grâce à votre méthodologie du cas pratique, j'ai obtenu 19/20 à mon partiel de droit de la famille !"
│       └── Badge vert : "✓ 19/20 au partiel"
│
└── CTA link : "Voir tous les avis →" → /avis
```

---

### #12 — C07 FAQ Accordéon

**Composant** : `C07-faq-accordeon`

```
Structure :
├── Badge violet : "FAQ"
├── H2 : "Questions fréquentes"
│
├── Accordéon (5 items) :
│
│   ├── "Quelle est la différence entre l'Académie et les Fiches PDF ?"
│   │   └── "L'Académie est un abonnement qui donne accès à TOUTE la plateforme : cours vidéo, fiches en ligne, QCM, flashcards, annales corrigées et méthodologie. Les Fiches PDF sont des achats à l'unité par matière (19€), téléchargeables et imprimables — idéales si vous voulez réviser hors connexion."
│   │
│   ├── "Est-ce que Jurible couvre ma matière / mon université ?"
│   │   └── "Jurible couvre les 20 matières fondamentales de L1 à L3 + Capacité en droit. Nos cours suivent le programme officiel enseigné dans toutes les universités françaises (Paris 1, Paris 2, Bordeaux, Lyon 3, Aix-Marseille, etc.). Vérifiez notre catalogue pour votre matière spécifique."
│   │
│   ├── "Puis-je essayer avant de m'engager ?"
│   │   └── "Oui ! Vous pouvez vous inscrire sans engagement et accéder à des contenus gratuits (extraits de cours, QCM découverte). L'abonnement Académie est sans engagement — vous pouvez résilier à tout moment depuis votre espace membre."
│   │
│   ├── "Comment accéder aux cours après mon inscription ?"
│   │   └── "C'est immédiat ! Dès votre paiement confirmé, vous accédez à tout le contenu de la plateforme ecole.jurible.com : cours vidéo, fiches, QCM, flashcards et annales. Vous pouvez commencer à réviser en moins de 2 minutes."
│   │
│   └── "Puis-je résilier à tout moment ?"
│       └── "Oui, l'abonnement Académie est sans engagement. Vous pouvez résilier en un clic depuis votre espace membre. Vous conservez l'accès jusqu'à la fin de votre période payée."
│
└── CTA link : "Voir toutes les questions →" → /faq
```

**Optimisations :**
- **5 questions** au lieu de 4 (ajout "Puis-je résilier ?" = objection clé avant conversion)
- **Toutes les réponses complétées** (3 manquaient dans la v1)
- Réponses orientées conversion : mettent en avant la facilité, le sans-engagement, l'immédiateté
- Schema.org FAQPage pour le SEO (rich snippets Google)

---

### #13 — P10 CTA Final

**Composant** : `P10-cta-final` — Variant Homepage

```
Structure :
├── Fond : gradient #B0001D → #7C3AED
├── H2 (blanc) : "Prêt à réussir vos études de droit ?"
├── Sous-titre (blanc, opacity 0.9) : "Rejoignez les 25 000 étudiants qui ont transformé leurs études avec Jurible."
├── CTA Primary (A02 btn-white LG) : "Découvrir nos offres →" → /nos-offres
└── CTA Secondary (A02 btn-outline-white LG) : "Nous contacter" → /contact
```

---

### O02 Footer

**Composant** : `O02-footer`

```
Structure :
├── Logo + baseline + réseaux sociaux + newsletter
├── Colonnes liens (5) :
│   ├── Nos offres : L'Académie | Fiches PDF | Outils IA | Manuel Méthodo
│   ├── Ressources : Blog | Guides gratuits | Méthodologie | Annales
│   ├── À propos : Notre projet | Nos enseignants | Avis étudiants | Contact
│   └── Niveaux : L1 Droit | L2 Droit | L3 Droit | Capacité
├── Légal : CGV | Mentions légales | Confidentialité
└── Copyright : © 2026 Jurible. Tous droits réservés.
```

**Correction** : Copyright mis à jour de 2024 → **2026**.

---

## Récapitulatif des optimisations

### Conversion

| # | Optimisation | Impact attendu | Composant |
|---|-------------|----------------|-----------|
| 1 | **Offres déplacées après la démonstration de valeur** (position 3→6) | L'utilisateur comprend ce qu'il achète avant de voir le prix | P05 |
| 2 | **"Pour qui ?" déplacé avant les offres** (position 4→5) | Segmentation → identification → meilleur taux de clic vers l'offre adaptée | C08 |
| 3 | **C06 Réassurance ajoutée après les offres** | Réduit l'anxiété post-prix, augmente le passage à l'action | C06 |
| 4 | **P11 Comparaison ajoutée** | Différenciation claire, répond à "pourquoi pas les manuels/gratuit ?" | P11 |
| 5 | **CTA sur les cards "Pour qui ?"** | Chaque persona a un chemin de conversion ciblé | C08 |
| 6 | **CTA secondary Hero : "Essayer gratuitement"** (au lieu de "Voir la plateforme") | Verbe d'action + gratuité = meilleur CTR | H01 |
| 7 | **Académie en card XL dominante** dans la section offres | Hiérarchie visuelle → le produit principal capte l'attention | P05 |
| 8 | **5e question FAQ : "Puis-je résilier ?"** | Lève la dernière objection avant le CTA final | C07 |
| 9 | **P13 stats bandeau supprimé** (redondant avec hero) | Page plus fluide, pas de répétition | — |

### UX

| # | Optimisation | Détail |
|---|-------------|--------|
| 1 | Alternance fond blanc / bg-light (#F8F8F8) | Rythme visuel, séparation claire des sections |
| 2 | Funnel logique ATTIRER→MONTRER→CIBLER→VENDRE→RASSURER→CONVERTIR | Parcours cognitif naturel |
| 3 | Mobile : carousel pour les témoignages, cards empilées, CTA pleine largeur | 70% du trafic est mobile |
| 4 | Stats hero animées au scroll | Engagement + perception de dynamisme |
| 5 | FAQ avec animation smooth (accordéon) | Micro-interaction fluide |

### SEO

| # | Optimisation | Détail |
|---|-------------|--------|
| 1 | H1 contient "réussir en droit" (intention cible) | Mot-clé principal dans le titre |
| 2 | Schema.org FAQPage sur la section FAQ | Rich snippets dans les SERP |
| 3 | Maillage interne renforcé | Cards personas → /cours/l1, /cours/l2. Cards offres → /academie, /fiches-de-droit, /suite-ia, /manuel-methodologie |
| 4 | Alt text sur tous les visuels | Screenshot, photos enseignants, logos universités |
| 5 | Contenu H2 avec termes sémantiques | "plateforme", "réussite", "profil", "formule", "étudiants" |

### UI (respect strict du DS)

| Règle DS | Appliquée |
|----------|-----------|
| Badges toujours violet (#EDE9FE + #7C3AED) | ✓ Tous les badges section |
| Pas de SVG checkmarks custom | ✓ Emojis natifs + puces standard |
| Typo Poppins uniquement | ✓ |
| Boutons primary = bordeaux #B0001D | ✓ |
| Boutons secondary = outline bordeaux | ✓ |
| Gradient limité aux accents premium | ✓ Uniquement P10 CTA Final |
| Border-radius cards = 12px (lg) | ✓ |
| Shadows = MD par défaut, LG on hover | ✓ |

---

## Notes pour le développeur

### Priorité d'implémentation

```
Phase 1 (structure) : O01 + H01 + P09 + O02
Phase 2 (contenu)   : C08 (×3 sections) + P05 + C07
Phase 3 (conversion): P14 + C18 (×2) + C05 + C06 + P11
Phase 4 (polish)    : P10 + animations + responsive final
```

### Comportements dynamiques

| Élément | Comportement |
|---------|-------------|
| O01 Header | Sticky on scroll, transparent → white au scroll |
| H01 Stats | Compteur animé (CountUp.js) triggered par IntersectionObserver |
| C07 FAQ | Accordéon avec `max-height` transition, un seul ouvert à la fois |
| C18 Testimonials | Carousel swipe sur mobile (3 slides), grid statique desktop |
| C05 Citations | Carousel autoplay 5s avec pause on hover |
| P14 Steps | Timeline animation progressive au scroll |
| Cards hover | `transform: translateY(-4px)` + shadow MD→LG, transition 200ms |

### Responsive breakpoints (du DS - P15)

| Breakpoint | Layout |
|-----------|--------|
| > 1200px | Grid 12 col, container 1140px |
| 768-1200px | Grid adapté, 2 colonnes max |
| < 768px | 1 colonne, CTA pleine largeur, carousel témoignages |

### Performance

- Images : format WebP, lazy-load (sauf hero = eager)
- Fonts : Poppins préchargée (400, 500, 600, 700)
- CLS : dimensions réservées pour images et screenshots
- LCP cible : < 2.5s (hero image optimisée)

---

## Contenu à compléter

- [x] Hero — Titre, sous-titre, badges, stats
- [x] Logos — 9 universités
- [x] Aperçu — 4 features
- [x] Ressources — 6 stats
- [x] Pour qui — 4 personas + CTA
- [x] Nos offres — 4 produits + prix validés
- [x] Réassurance — 5 éléments
- [x] Steps — 4 étapes
- [x] Comparaison — Sans/Avec
- [x] Équipe — Photo, stats, citations
- [x] Témoignages — 3 avec résultats
- [x] FAQ — 5 questions + réponses complètes
- [x] CTA Final
- [x] Footer (copyright 2026)
- [ ] Screenshot ecole.jurible.com (à capturer)
- [ ] Photo de groupe enseignants (à obtenir)
- [ ] Logos universités SVG (à obtenir)

---

*Template v2 optimisée — 6 février 2026*
*Changements majeurs : réordonnancement funnel, +2 sections (C06, P11), corrections mapping DS, prix mis à jour, FAQ complétée*
