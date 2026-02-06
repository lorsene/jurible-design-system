# T-SUITE-IA-HUB

> Landing page générale de la Suite IA. Page catalogue des 4 outils.
> URL : `/suite-ia`
> Objectif : Présenter les outils et convertir vers l'essai gratuit ou l'achat de crédits

## Infos produit

| Formule | Prix | Crédits | Détails |
|---------|------|---------|---------|
| Essai gratuit | 0€ | 3 crédits | Aucune CB requise |
| Standard (Populaire) | 5€ | 30 crédits | ~20 devoirs, sans expiration |
| Pro (-30%) | 17€ | 100 crédits | ~70 devoirs, sans expiration |
| Abonnés Académie | Gratuit | 10 crédits/mois | Renouvelés, cumulables |

## Coût par outil

| Outil | Crédits |
|-------|---------|
| Fiche d'arrêt | 1 crédit |
| Cas pratique | 1 à 3 crédits |
| Dissertation | 3 crédits |
| Commentaire d'arrêt | 3 crédits |

## Structure (8 sections)

```
O01 - HEADER
├── Logo Jurible (lien → /)
├── Menu : ACADÉMIE | PRÉPAS | OUTILS IA | FICHES
├── CTA : "Essayer gratuitement"
├── Se connecter
└── Sticky on scroll

────────────────────────────────────────────────────────────

H01 - HERO
├── Badge : "Intelligence Artificielle"
├── Titre H1 : "Les Générateurs IA les plus utilisés par les étudiants en droit"
├── Sous-titre : "Gagnez des heures sur vos TD grâce à nos outils IA spécialisés en droit. Fiches d'arrêt, dissertations, cas pratiques et commentaires générés en quelques secondes, conformes à la méthodologie universitaire."
│
├── CTA Primary : "Essayer gratuitement"
├── CTA Secondary : "Voir les offres" → #pricing
│
├── Note : "🎁 3 crédits offerts pour tester • Aucune carte bancaire requise"
│
└── Trust bar :
    ├── "4,6/5 sur Trustpilot"
    ├── "25 000+ étudiants aidés"
    ├── "Créé par des profs de droit"
    └── "Hébergement français sécurisé"

────────────────────────────────────────────────────────────

P03 - 4 OUTILS DISPONIBLES
├── Badge : "4 outils disponibles"
├── Titre : "Tous vos exercices juridiques automatisés"
├── Sous-titre : "Un seul système de crédits pour tous les outils. Utilisez-les selon vos besoins."
│
└── Grid 4 cards outils :
    │
    ├── 📄 GÉNÉRATEUR DE FICHE D'ARRÊT :
    │   ├── Badge : "1 crédit par fiche"
    │   ├── Titre : "Générateur de Fiche d'Arrêt"
    │   ├── Description : "Transformez n'importe quel arrêt en fiche parfaitement structurée en 10 secondes."
    │   ├── Bullet points :
    │   │   ├── ✓ Structure parfaite : faits, procédure, problème, solution
    │   │   ├── ✓ Toutes les juridictions (Cass., CE, CC...)
    │   │   └── ✓ Idéal pour préparer vos TD ou vous auto-corriger
    │   └── CTA : "Découvrir l'outil →" → /suite-ia/fiche-arret
    │
    ├── ✍️ GÉNÉRATEUR DE DISSERTATION :
    │   ├── Badge : "3 crédits par dissertation"
    │   ├── Titre : "Générateur de Dissertation"
    │   ├── Description : "Obtenez un plan détaillé et une dissertation structurée sur n'importe quel sujet juridique."
    │   ├── Bullet points :
    │   │   ├── ✓ Plan en deux parties, deux sous-parties
    │   │   ├── ✓ Introduction avec accroche et problématique
    │   │   └── ✓ Arguments juridiques sourcés
    │   └── CTA : "Découvrir l'outil →" → /suite-ia/dissertation
    │
    ├── ⚖️ GÉNÉRATEUR DE CAS PRATIQUE :
    │   ├── Badge : "1 à 3 crédits selon la taille"
    │   ├── Titre : "Générateur de Cas Pratique"
    │   ├── Description : "Résolvez vos cas pratiques avec la méthodologie syllogistique attendue en fac."
    │   ├── Bullet points :
    │   │   ├── ✓ Méthodologie syllogistique complète
    │   │   ├── ✓ Qualification juridique des faits
    │   │   └── ✓ Application du droit aux faits de l'espèce
    │   └── CTA : "Découvrir l'outil →" → /suite-ia/cas-pratique
    │
    └── 📝 GÉNÉRATEUR DE COMMENTAIRE D'ARRÊT :
        ├── Badge : "3 crédits par commentaire"
        ├── Titre : "Générateur de Commentaire d'Arrêt"
        ├── Description : "Analysez et commentez n'importe quel arrêt avec un plan structuré et des arguments solides."
        ├── Bullet points :
        │   ├── ✓ Fiche d'arrêt + commentaire complet
        │   ├── ✓ Plan thématique en deux parties
        │   └── ✓ Analyse critique de la décision
        └── CTA : "Découvrir l'outil →" → /suite-ia/commentaire-arret

────────────────────────────────────────────────────────────

C09 - COMMENT FONCTIONNENT LES CRÉDITS
├── Titre : "Comment fonctionnent les crédits ?"
├── Description : "Un système simple et flexible : achetez des crédits une seule fois, utilisez-les sur tous nos outils IA quand vous en avez besoin. Pas d'abonnement, pas d'engagement."
│
├── Bullet points :
│   ├── ✓ Crédits universels — Valables sur les 4 générateurs
│   ├── ✓ Sans expiration — Vos crédits n'expirent jamais
│   └── ✓ Rechargez quand vous voulez — Pas d'abonnement
│
└── Tableau crédits :
    │
    │ Outil                │ Crédits nécessaires │
    │ ──────────────────── │ ─────────────────── │
    │ 📄 Fiche d'arrêt     │ 1 crédit            │
    │ ⚖️ Cas pratique      │ 1 à 3 crédits       │
    │ ✍️ Dissertation      │ 3 crédits           │
    │ 📝 Commentaire d'arrêt│ 3 crédits          │

────────────────────────────────────────────────────────────

C10 - CAS D'USAGE
├── Badge : "Cas d'usage"
├── Titre : "Comment utiliser nos générateurs ?"
├── Sous-titre : "Plusieurs façons d'exploiter ces outils pour booster vos résultats"
│
└── Grid 3 cards :
    │
    ├── ⚡ Préparer vos TD rapidement :
    │   └── "Générez vos exercices en quelques minutes et gardez du temps pour comprendre le fond du droit."
    │
    ├── ✅ Vous auto-corriger :
    │   └── "Rédigez votre travail, puis comparez avec la version IA pour identifier ce que vous avez oublié."
    │
    └── 📚 Réviser avant les partiels :
        └── "Constituez rapidement une banque d'exercices corrigés pour vos révisions intensives."

────────────────────────────────────────────────────────────

C15 - PRICING (id="pricing")
├── Badge : "Nos offres"
├── Titre : "Choisissez votre pack de crédits"
├── Sous-titre : "Un seul achat, tous les outils. Crédits valables sans limite de durée."
│
├── Cards pricing (×3) :
│   │
│   ├── ESSAI GRATUIT :
│   │   ├── Badge : "3 crédits offerts"
│   │   ├── Prix : "0€"
│   │   ├── Note : "Pour découvrir les outils"
│   │   ├── Inclus :
│   │   │   ├── ✓ Accès aux 4 générateurs
│   │   │   ├── ✓ 3 fiches d'arrêt OU 1 dissertation
│   │   │   ├── ✓ Sauvegarde automatique
│   │   │   └── ✓ Aucune carte bancaire requise
│   │   └── CTA : "Commencer gratuitement"
│   │
│   ├── STANDARD (Badge "Populaire") :
│   │   ├── Badge : "30 crédits"
│   │   ├── Prix : "5€"
│   │   ├── Note : "soit 0,17€ par crédit"
│   │   ├── Inclus :
│   │   │   ├── ✓ Accès aux 4 générateurs
│   │   │   ├── ✓ ~20 devoirs
│   │   │   ├── ✓ Sauvegarde illimitée
│   │   │   └── ✓ Crédits sans expiration
│   │   └── CTA : "Acheter 30 crédits"
│   │
│   └── PRO :
│       ├── Badge : "100 crédits"
│       ├── Prix : "17€"
│       ├── Note : "soit 0,17€ par crédit (-30%)"
│       ├── Inclus :
│       │   ├── ✓ Accès aux 4 générateurs
│       │   ├── ✓ ~70 devoirs
│       │   ├── ✓ Sauvegarde illimitée
│       │   └── ✓ Crédits sans expiration
│       └── CTA : "Acheter 100 crédits"
│
└── Note abonnés : "🎁 Abonné à l'Académie ? Vous bénéficiez de 10 crédits IA offerts inclus dans votre abonnement. En savoir plus →"

────────────────────────────────────────────────────────────

P10 - CTA FINAL
├── Fond : Dégradé bordeaux → violet
├── Titre : "Prêt à gagner des heures sur vos TD ?"
├── Sous-titre : "Rejoignez les 25 000 étudiants qui utilisent Jurible pour réussir leur licence de droit."
├── CTA Primary : "Essayer gratuitement"
└── CTA Secondary : "Voir les offres"

────────────────────────────────────────────────────────────

O02 - FOOTER
├── Logo + Baseline : "La plateforme de référence pour réussir vos études de droit. Plus de 25 000 étudiants nous font confiance."
│
├── Colonnes (4) :
│   ├── Formations : L'Académie, Prépas, Fiches
│   ├── Outils IA : Fiche d'arrêt, Dissertation, Cas pratique, Commentaire
│   ├── À propos : L'équipe, Témoignages, Contact
│   └── Légal : CGV, Confidentialité, Mentions légales
│
├── Réseaux : Instagram, LinkedIn, YouTube
│
└── Copyright : "© 2025 Jurible. Tous droits réservés."
```

## Composants utilisés

| ID | Composant DS | Section | Obligatoire |
|----|--------------|---------|-------------|
| O01 | Header / Navbar | Header | ✅ |
| H01 | Hero Conversion | Hero | ✅ |
| P03 | Bloc offre Suite IA | 4 outils | ✅ |
| C09 | Contenu | Crédits | ✅ |
| C10 | Solution / Bénéfices | Cas d'usage | ✅ |
| C15 | Pricing Suite IA | Pricing | ✅ |
| P10 | Section CTA Final | CTA Final | ✅ |
| O02 | Footer | Footer | ✅ |

## Notes techniques

1. **Cards outils** : Chaque card lie vers la page outil spécifique
2. **Tableau crédits** : Responsive, scroll horizontal sur mobile
3. **Note abonnés** : Lien vers /academie (cross-sell)
4. **Essai gratuit** : Pas de formulaire CB, juste inscription email

## SEO

- **H1** : "Les Générateurs IA les plus utilisés par les étudiants en droit"
- **Meta title** : "Suite IA Juridique | Générateurs Fiche d'arrêt, Dissertation, Cas pratique"
- **Meta description** : "Outils IA pour étudiants en droit : générez fiches d'arrêt, dissertations, cas pratiques en 10 secondes. 3 crédits offerts. Méthodologie universitaire."
- **Schema.org** : `SoftwareApplication` avec pricing

---

*Template créé le 6 février 2026 — Fidèle à la maquette landing_page_suite_ia_general.pdf*
