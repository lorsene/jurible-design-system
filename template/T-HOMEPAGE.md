# T-HOMEPAGE

> Page d'accueil et landing principale de Jurible. Objectif : conversion vers les offres (principalement Académie).
> URL : `/`

## Objectifs de la page

- **Clarté** : Comprendre ce qu'est Jurible en moins de 10 secondes
- **Confiance** : Prouver la crédibilité (stats, témoignages, enseignants, universités)
- **Conversion** : Guider vers l'offre adaptée (Académie principalement)
- **SEO** : Page pilier pour le référencement "cours droit en ligne", "réussir licence droit"

## Structure

```
O01 - HEADER
├── Logo Jurible (lien → /)
├── Menu : COURS | FORMULES | RESSOURCES | À PROPOS
├── CTA : [S'ABONNER] [SE CONNECTER]
└── Comportement : Sticky on scroll

────────────────────────────────────────────────────────────

H01 - HERO CONVERSION
├── Badge : "École de droit en ligne"
├── Titre H1 : "La plateforme complète pour réussir en droit"
├── Sous-titre : "Cours vidéo, fiches de révision, annales corrigées, outils IA... Tout ce qu'il vous faut pour valider votre licence, au même endroit."
├── CTA Primary : "Découvrir nos offres →" → /nos-offres
├── CTA Secondary : "Voir la plateforme" → scroll ou démo
├── Badges réassurance (inline sous CTA) :
│   ├── ✓ Sans engagement
│   ├── ✓ Accès immédiat
│   └── ✓ Paiement sécurisé
├── Stats sociales (3 chiffres) :
│   ├── "25 000+" — Étudiants
│   ├── "4.8/5" — Note moyenne
│   └── "94%" — Taux de réussite
└── Visuel : Screenshot ou vidéo de la plateforme ecole.jurible.com

────────────────────────────────────────────────────────────

P09 - TRUST BAR (Logos universités)
├── Titre : "Nos cours préparent les étudiants des meilleures universités françaises"
└── Logos (6) :
    ├── Paris 1 Sorbonne
    ├── Paris 2 Assas
    ├── Paris Nanterre
    ├── Lyon 3
    ├── Bordeaux
    └── Aix-Marseille

────────────────────────────────────────────────────────────

[SECTION] NOS OFFRES
├── Badge : "Nos offres"
├── Titre section : "Choisissez la formule qui vous correspond"
├── Sous-titre : "Que vous cherchiez un accès complet ou des ressources ciblées, nous avons ce qu'il vous faut."
│
└── Grid 4 cards produits :
    │
    ├── CARD 1 - L'Académie Jurible (Badge "Populaire") :
    │   ├── Description : "Accès complet à toute la plateforme : cours vidéo, fiches, QCM, flashcards, annales corrigées et méthodologie."
    │   ├── Liste :
    │   │   ├── ✓ 500h+ de cours vidéo
    │   │   ├── ✓ 20 matières (L1, L2, L3, Capacité)
    │   │   ├── ✓ 2000+ QCM & Flashcards
    │   │   └── ✓ 400+ annales corrigées
    │   ├── Prix : "À partir de 20€ /mois"
    │   └── CTA : "Découvrir l'Académie →"
    │
    ├── CARD 2 - Fiches PDF :
    │   ├── Description : "Fiches de révision téléchargeables et imprimables. Parfait pour réviser hors connexion ou surligner."
    │   ├── Liste :
    │   │   ├── ✓ Téléchargement illimité
    │   │   ├── ✓ Imprimables
    │   │   └── ✓ Achat à l'unité par matière
    │   ├── Prix : "19€ /matière"
    │   └── CTA : "Voir les fiches →"
    │
    ├── CARD 3 - Outils IA :
    │   ├── Description : "Générateurs intelligents pour créer des fiches d'arrêt, plans de dissertation, cas pratiques corrigés..."
    │   ├── Liste :
    │   │   ├── ✓ Générateur de fiches d'arrêt
    │   │   ├── ✓ Aide à la dissertation
    │   │   └── ✓ Correction de cas pratique
    │   ├── Prix : "Crédits à partir de 5€"
    │   └── CTA : "Découvrir les outils →"
    │
    └── CARD 4 - Manuel Méthodologie :
        ├── Description : "Guide complet de méthodologie juridique : commentaire d'arrêt, dissertation, cas pratique, fiche d'arrêt."
        ├── Liste :
        │   ├── ✓ 4 exercices fondamentaux
        │   ├── ✓ Exemples corrigés
        │   └── ✓ PDF téléchargeable
        ├── Prix : "29€ achat unique"
        └── CTA : "Voir le manuel →"

────────────────────────────────────────────────────────────

[SECTION] POUR QUI ?
├── Badge : "Pour qui ?"
├── Titre section : "Jurible s'adapte à votre profil"
├── Sous-titre : "Que vous débutiez ou que vous soyez en fin de licence, nous vous accompagnons."
│
└── Grid 4 cards personas :
    │
    ├── Étudiants L1 :
    │   └── "Découvrez le droit avec des cours clairs et une méthodologie solide dès le départ."
    │
    ├── L2-L3 :
    │   └── "Approfondissez vos connaissances et préparez efficacement vos partiels."
    │
    ├── Reprise d'études :
    │   └── "Remettez-vous à niveau à votre rythme avec des contenus accessibles 24h/24."
    │
    └── Parents :
        └── "Offrez les meilleures ressources à votre enfant pour maximiser ses chances."

────────────────────────────────────────────────────────────

[SECTION] APERÇU PLATEFORME
├── Badge : "Aperçu"
├── Titre section : "Une plateforme pensée pour vous"
├── Sous-titre : "Interface intuitive, contenus de qualité, accès illimité."
│
├── Grid 4 features :
│   │
│   ├── Cours vidéo HD :
│   │   └── "Explications claires par des enseignants passionnés, à regarder et revoir sans limite."
│   │
│   ├── Fiches de révision :
│   │   └── "L'essentiel de chaque matière synthétisé pour des révisions efficaces."
│   │
│   ├── QCM & Auto-évaluation :
│   │   └── "Testez vos connaissances et identifiez vos lacunes avant les examens."
│   │
│   └── Accessible partout :
│       └── "Ordinateur, tablette, smartphone. Révisez où vous voulez, quand vous voulez."
│
└── Visuel : Screenshot de la plateforme ecole.jurible.com (interface de cours)

────────────────────────────────────────────────────────────

[SECTION] RESSOURCES (Stats détaillées)
├── Badge : "Ressources"
├── Titre section : "Des outils pensés pour votre réussite"
├── Sous-titre : "Tout ce qu'il vous faut pour comprendre, mémoriser et réussir vos examens."
│
└── Grid 6 cards stats :
    │
    ├── 500h+ Cours vidéo :
    │   └── "Le cours expliqué en vidéo pour mieux comprendre chaque notion."
    │
    ├── 20 Matières :
    │   └── "Toutes les matières fondamentales de L1 à L3 + Capacité."
    │
    ├── 2000+ QCM & Flashcards :
    │   └── "Testez vos connaissances et mémorisez efficacement."
    │
    ├── 400+ Annales corrigées :
    │   └── "Entraîne-toi sur des sujets d'examens réels avec corrections."
    │
    ├── 45h+ Méthodologie :
    │   └── "Maîtrise les exercices juridiques : cas pratique, dissertation, commentaire."
    │
    └── Outils IA :
        └── "Générateurs intelligents pour vous aider dans vos exercices."

────────────────────────────────────────────────────────────

[SECTION] ÉQUIPE ENSEIGNANTS
├── Titre section : "Une équipe de professionnels diplômés"
├── Sous-titre : "Notre équipe pédagogique de 11 enseignants, avocats ou juristes (chacun est titulaire d'un master 2 dans la matière concernée), assure avec pédagogie la qualité du contenu des cours en vidéos. Ils mettent ainsi à votre disposition toutes les clés de la réussite !"
├── Visuel : Photo de groupe des 11 enseignants
│
├── Stats (3) :
│   ├── "11" — Enseignants experts
│   ├── "100%" — Diplômés Master 2
│   └── "7+" — Années d'expérience moy.
│
├── Citations enseignants (carousel 4) :
│   │
│   ├── Julie Ramsamy :
│   │   ├── Citation : "Une grosse pression pèse sur vos petites épaules !"
│   │   └── Bio : "Avocate en droit public et chargée d'enseignement à l'université en droit administratif"
│   │
│   ├── Raphaël Briguet-Lamarre :
│   │   ├── Citation : "Connaître les bases du droit constitutionnel relève de la culture générale !"
│   │   └── Bio : "Avocat de formation et ex chargé d'enseignement à l'université de Nice"
│   │
│   ├── Megan Léonard :
│   │   ├── Citation : "Il faut prendre conscience que le droit pénal est PARTOUT"
│   │   └── Bio : "Doctorante et chargée d'enseignement à l'université"
│   │
│   └── Didier Okpo :
│       ├── Citation : "Le cours d'institutions juridictionnelles vous servira tout le long de vos études !"
│       └── Bio : "Avocat en droit fiscal, fondateur de la chaîne YouTube Point Fiscal"
│
├── Badges confiance :
│   ├── ✓ Cours rédigés par des humains
│   ├── ✓ Expertise juridique vérifiée
│   └── ✓ Pédagogie éprouvée en université
│
└── CTA : "Découvrir tous nos enseignants →" → /nos-enseignants

────────────────────────────────────────────────────────────

[SECTION] VOTRE PARCOURS (Steps)
├── Badge : "Votre parcours"
├── Titre section : "Comment Jurible vous accompagne"
├── Sous-titre : "De la découverte à la réussite, on est là à chaque étape."
│
└── 4 Steps :
    │
    ├── Step 1 : "Découvrez"
    │   └── "Explorez nos offres et trouvez celle qui correspond à vos besoins."
    │
    ├── Step 2 : "Apprenez"
    │   └── "Suivez les cours vidéo, lisez les fiches, comprenez les concepts."
    │
    ├── Step 3 : "Entraînez-vous"
    │   └── "QCM, flashcards, annales : testez et renforcez vos connaissances."
    │
    └── Step 4 (✓) : "Réussissez"
        └── "Arrivez serein aux examens et validez votre année avec succès."

────────────────────────────────────────────────────────────

[SECTION] TÉMOIGNAGES
├── Badge : "Témoignages"
├── Titre section : "Ce que disent nos étudiants"
├── Sous-titre : "Rejoins les 25 000 étudiants qui nous font confiance depuis 2018."
│
├── Cards témoignages (×3) :
│   │
│   ├── Manon B. — L1 Droit Paris Assas :
│   │   ├── Citation : "J'ai révisé mes partiels uniquement avec vos fiches et j'ai validé mon année à 12.55/20. Je recommande à tous les L1 !"
│   │   └── Badge : "✓ Année validée"
│   │
│   ├── Karl M. — L1 Droit :
│   │   ├── Citation : "J'ai eu 16/20 à mon partiel alors que j'avais eu 7/20 au galop. Je travaille à côté et j'ai appris uniquement avec vos fiches."
│   │   └── Badge : "✓ De 7 à 16/20"
│   │
│   └── Jade B. — L1 Droit :
│       ├── Citation : "Grâce à votre méthodologie du cas pratique, j'ai obtenu 19/20 à mon partiel de droit de la famille !"
│       └── Badge : "✓ 19/20 au partiel"
│
└── CTA : "Voir tous les avis →" → /avis

────────────────────────────────────────────────────────────

P13 - STATS BANDEAU
├── Fond : Dégradé bordeaux/violet
├── Stat 1 : "25 000+" — Étudiants formés
├── Stat 2 : "500h+" — Cours vidéo
├── Stat 3 : "20" — Matières
└── Stat 4 : "4.8/5" — Note moyenne

────────────────────────────────────────────────────────────

[SECTION] FAQ
├── Badge : "FAQ"
├── Titre section : "Questions fréquentes"
│
└── Accordéons (×4 + lien) :
    │
    ├── "Quelle est la différence entre l'Académie et les Fiches PDF ?"
    │   └── "L'Académie est un abonnement qui donne accès à toute la plateforme : cours vidéo, fiches en ligne, QCM, flashcards, annales corrigées. Les Fiches PDF sont des achats à l'unité par matière, téléchargeables et imprimables."
    │
    ├── "Est-ce que Jurible couvre ma matière / mon université ?"
    │   └── [Réponse à compléter]
    │
    ├── "Puis-je essayer avant de m'engager ?"
    │   └── [Réponse à compléter]
    │
    └── "Comment accéder aux cours après mon inscription ?"
        └── [Réponse à compléter]
│
└── CTA : "Voir toutes les questions →" → /faq

────────────────────────────────────────────────────────────

P10 - CTA FINAL
├── Fond : Dégradé bordeaux/violet
├── Titre : "Prêt à réussir vos études de droit ?"
├── Sous-titre : "Rejoignez les 25 000 étudiants qui ont transformé leurs études avec Jurible."
├── CTA Primary : "Découvrir nos offres →" → /nos-offres
└── CTA Secondary : "Nous contacter" → /contact

────────────────────────────────────────────────────────────

O02 - FOOTER
├── Logo + Baseline : "La plateforme de référence pour réussir vos études de droit. Cours, fiches, exercices et méthodologie."
│
├── Colonnes liens (5) :
│   │
│   ├── Nos offres :
│   │   ├── L'Académie
│   │   ├── Fiches PDF
│   │   ├── Outils IA
│   │   └── Manuel Méthodo
│   │
│   ├── Ressources :
│   │   ├── Blog
│   │   ├── Guides gratuits
│   │   ├── Méthodologie
│   │   └── Annales
│   │
│   ├── À propos :
│   │   ├── Notre projet
│   │   ├── Nos enseignants
│   │   ├── Avis étudiants
│   │   └── Contact
│   │
│   └── Niveaux :
│       ├── L1 Droit
│       ├── L2 Droit
│       ├── L3 Droit
│       └── Capacité
│
├── Légal : CGV | Mentions légales | Confidentialité
└── Copyright : © 2024 Jurible. Tous droits réservés.
```

## Optimisation appliquée

| Section maquette | Position finale | Modification |
|------------------|-----------------|--------------|
| Hero | 1 | ✅ Aucune — parfait |
| Trust bar | 2 | ✅ Aucune — parfait |
| Nos offres | 3 | ✅ Aucune — bien placé |
| Pour qui ? | 4 | ✅ Aucune — identification |
| Aperçu plateforme | 5 | ✅ Aucune |
| Ressources | 6 | ✅ Aucune |
| Équipe enseignants | 7 | ✅ Aucune |
| Votre parcours | 8 | ✅ Aucune |
| Témoignages | 9 | ✅ Aucune |
| Stats bandeau | 10 | ✅ Aucune |
| FAQ | 11 | ✅ Aucune — avant CTA final |
| CTA Final | 12 | ✅ Aucune |
| Footer | 13 | ✅ Aucune |

> **Note** : La structure de ta maquette était déjà très bien optimisée pour la conversion. Aucune modification majeure nécessaire.

## Composants utilisés

| ID | Composant | Obligatoire | Notes |
|----|-----------|-------------|-------|
| O01 | Header | ✅ Oui | Sticky, 4 items menu + 2 CTA |
| H01 | Hero Conversion | ✅ Oui | Badge + stats + screenshot |
| P09 | Logos universités | ✅ Oui | 6 logos |
| C01 | Cards Offres | ✅ Oui | ×4 produits (Académie, Fiches, IA, Manuel) |
| C08 | Cards Personas | ✅ Oui | ×4 (L1, L2-L3, Reprise, Parents) |
| P12 | Section Features | ✅ Oui | ×4 features + screenshot |
| P13 | Section Ressources | ✅ Oui | ×6 stats détaillées |
| C04 | Section Enseignants | ✅ Oui | Photo groupe + citations + stats |
| P14 | Steps Parcours | ✅ Oui | ×4 étapes |
| C18 | Témoignages | ✅ Oui | ×3 avec résultats concrets |
| P13 | Stats Bandeau | ✅ Oui | Fond gradient, 4 stats |
| C07 | FAQ Accordéon | ✅ Oui | 4 questions + lien |
| P10 | CTA Final | ✅ Oui | Fond gradient, 2 CTA |
| O02 | Footer | ✅ Oui | 5 colonnes + légal |

## Notes pour le dev

1. **Hero** : Stats animées (compteur), screenshot en lazy-load
2. **Cards Offres** : Hover effect, badge "Populaire" sur Académie
3. **Personas** : Hover pour agrandir la card
4. **Enseignants** : Carousel des citations avec autoplay
5. **Témoignages** : Badges de résultats mis en valeur (couleur)
6. **Stats bandeau** : Compteur animé au scroll
7. **FAQ** : Accordéon avec animation smooth
8. **Responsive** :
   - Mobile : Cards en colonne, carousel témoignages
   - Desktop : Grids 2-4 colonnes selon section
9. **Performance** : Hero image WebP, fonts préchargées, lazy-load images

## Contenu à compléter

- [x] Hero — Titre, sous-titre, badges ✅
- [x] Trust bar — Logos ✅
- [x] Nos offres — 4 cards complètes ✅
- [x] Pour qui — 4 personas ✅
- [x] Aperçu — 4 features ✅
- [x] Ressources — 6 stats ✅
- [x] Enseignants — Photo, citations, stats ✅
- [x] Parcours — 4 steps ✅
- [x] Témoignages — 3 témoignages avec résultats ✅
- [ ] FAQ — Réponses complètes pour questions 2, 3, 4
- [x] CTA Final ✅
- [x] Footer ✅

---

*Template mis à jour le 6 février 2026 avec contenu réel de la maquette*
