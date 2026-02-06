# T-SUITE-IA-OUTIL

> Landing page par outil IA. Page de vente spécifique à chaque générateur.
> URLs : `/suite-ia/fiche-arret`, `/suite-ia/dissertation`, `/suite-ia/cas-pratique`, `/suite-ia/commentaire-arret`
> Réutilisé : ×4 pages

## Variables dynamiques

| Variable | Fiche d'arrêt | Dissertation | Cas pratique | Commentaire |
|----------|---------------|--------------|--------------|-------------|
| `{outil}` | Fiche d'Arrêt | Dissertation | Cas Pratique | Commentaire d'Arrêt |
| `{outil_slug}` | fiche-arret | dissertation | cas-pratique | commentaire-arret |
| `{credits}` | 1 crédit | 3 crédits | 1 à 3 crédits | 3 crédits |
| `{temps}` | 10 secondes | 30 secondes | 30 secondes | 30 secondes |

## Structure (11 sections)

```
O01 - HEADER
├── Logo Jurible (lien → /)
├── Menu : ACADÉMIE | PRÉPAS | OUTILS IA | FICHES
├── CTA : "Essayer gratuitement"
├── Se connecter
└── Sticky on scroll

────────────────────────────────────────────────────────────

H03 - HERO PRODUIT
├── Badge : "Outil IA • {credits} par {outil}"
├── Titre H1 : "Générateur de {outil} intelligent"
├── Sous-titre : "Transformez n'importe quel arrêt en fiche parfaitement structurée en {temps}. Conforme à la méthodologie attendue en fac de droit."
│
├── CTA Primary : "Essayer gratuitement"
├── CTA Secondary : "Voir les offres" → #pricing
│
├── Note : "🎁 3 crédits offerts pour tester • Aucune carte bancaire requise"
│
├── Visuel : Screenshot de l'interface du générateur
│
├── Stats inline (3) :
│   ├── "Résultat en {temps}"
│   ├── "Méthodologie universitaire"
│   └── "Créé par des profs de droit"
│
└── Trust bar :
    ├── "4,6/5 sur Trustpilot"
    ├── "25 000+ étudiants aidés"
    ├── "Conforme méthodologie fac"
    └── "Hébergement français sécurisé"

────────────────────────────────────────────────────────────

C11 - PAIN POINTS
├── Badge : "Le problème"
├── Titre : "Vous perdez des heures sur chaque {outil} ?"
├── Sous-titre : "En tant qu'étudiant en droit, vous devez analyser plusieurs {outil}s chaque semaine pour vos TD..."
│
├── Grid 4 problèmes :
│   ├── ⏱️ "3-4 heures par {outil} en moyenne"
│   ├── ❓ "Difficulté à identifier les éléments clés"
│   ├── 😰 "Stress de mal structurer sa {outil}"
│   └── 📚 "Manque de temps pour réviser"
│
└── Note : "Notre générateur révolutionne votre façon de travailler"

────────────────────────────────────────────────────────────

C08 - FONCTIONNALITÉS
├── Badge : "Fonctionnalités"
├── Titre : "Pourquoi choisir notre générateur ?"
├── Sous-titre : "Une technologie de pointe au service de votre réussite"
│
└── Grid 6 features :
    │
    ├── ⚡ Génération rapide :
    │   └── "Obtenez votre {outil} complète en moins de {temps}. Notre IA analyse instantanément le texte et extrait tous les éléments essentiels."
    │
    ├── ✅ Structure parfaite :
    │   └── "Respecte à 100% la méthodologie attendue en fac de droit : faits, procédure, problème de droit, solution. Créé et validé par des enseignants."
    │
    ├── 🎓 IA spécialisée droit :
    │   └── "Notre IA est spécialement entraînée sur le corpus juridique français. Analyse contextuelle et compréhension nuancée des arrêts."
    │
    ├── 📱 Accessible partout :
    │   └── "Interface responsive optimisée pour tous vos appareils. Travaillez depuis votre ordinateur, tablette ou smartphone."
    │
    ├── 💾 Sauvegarde automatique :
    │   └── "Toutes vos {outil}s sont automatiquement sauvegardées et organisées par matière. Retrouvez-les instantanément pour vos révisions."
    │
    └── 🔒 Confidentialité garantie :
        └── "Hébergement français sécurisé et conformité RGPD respectée. Vos données restent privées et protégées."

────────────────────────────────────────────────────────────

P14 - COMMENT ÇA MARCHE
├── Badge : "Comment ça marche"
├── Titre : "3 étapes pour des {outil}s parfaites"
├── Sous-titre : "Un processus simple et efficace"
│
└── Steps (3) :
    │
    ├── Step 1 — Collez votre arrêt :
    │   ├── Screenshot : Interface de saisie
    │   └── Description : "Copiez-collez simplement le texte de votre arrêt depuis Légifrance, vos cours ou n'importe quelle source."
    │
    ├── Step 2 — L'IA analyse instantanément :
    │   ├── Screenshot : Analyse IA en cours
    │   └── Description : "Notre intelligence artificielle analyse l'arrêt en quelques secondes et génère automatiquement une {outil} structurée."
    │
    └── Step 3 — Récupérez et révisez :
        ├── Screenshot : {outil} générée
        └── Description : "Votre {outil} est automatiquement sauvegardée et organisée. Consultez-la dans votre espace pour vos révisions."

────────────────────────────────────────────────────────────

C10 - CAS D'USAGE
├── Badge : "Cas d'usage"
├── Titre : "Comment utiliser le générateur ?"
├── Sous-titre : "Plusieurs façons d'exploiter cet outil pour booster vos résultats"
│
└── Grid 4 cards :
    │
    ├── ⚡ Préparer vos TD rapidement :
    │   └── "Vous avez 3 arrêts à analyser pour demain ? Générez vos {outil}s en quelques minutes et gardez du temps pour comprendre le fond du droit."
    │
    ├── ✅ Vérifier et améliorer votre copie :
    │   └── "Vous avez rédigé votre {outil} vous-même ? Utilisez le générateur pour comparer et vérifier que vous n'avez rien oublié. Idéal pour s'auto-corriger avant de rendre son TD !"
    │
    ├── 📚 Réviser avant les partiels :
    │   └── "Constituez rapidement une banque de {outil}s essentielles pour vos révisions. Tout est sauvegardé et organisé par matière."
    │
    └── 🎓 Apprendre la méthodologie :
        └── "Débutant en droit ? Observez comment l'IA structure une {outil} pour intégrer les bons réflexes méthodologiques."

────────────────────────────────────────────────────────────

C18 - TÉMOIGNAGES
├── Badge : "Témoignages"
├── Titre : "Ils ont validé leurs partiels sans stress"
├── Sous-titre : "Plus de 25 000 étudiants font confiance à Jurible depuis 2018"
│
└── Cards témoignages (×3) :
    │
    ├── Luna — Étudiante en L1 :
    │   ├── Note : ⭐⭐⭐⭐⭐
    │   └── Citation : "Franchement, ça m'a beaucoup aidée cette année. Les fiches sont bien faites, je ne perds plus de temps à les faire moi-même. J'ai pu valider mon année !"
    │
    ├── Gaëtan — Étudiant en L2 :
    │   ├── Note : ⭐⭐⭐⭐⭐
    │   ├── Citation : "14/20 en droit pénal et 16/20 en droit administratif. Les supports sont excellents, j'ai tout ce qu'il me faut pour réviser depuis chez moi. Merci !"
    │   └── Badge : "14/20 et 16/20"
    │
    └── Irène — L1 validée avec mention :
        ├── Note : ⭐⭐⭐⭐⭐
        └── Citation : "J'ai validé ma L1 avec mention. Les cours sont clairs, bien structurés et très pédagogiques. Je suis convaincue que Jurible y a largement contribué."

────────────────────────────────────────────────────────────

C15 - PRICING (id="pricing")
├── Badge : "Nos offres"
├── Titre : "Choisissez votre pack de crédits"
├── Sous-titre : "1 {outil} = {credits} • Crédits valables sans limite de durée"
│
├── Cards pricing (×3) :
│   │
│   ├── ESSAI GRATUIT :
│   │   ├── Badge : "3 crédits offerts"
│   │   ├── Prix : "0€"
│   │   ├── Note : "Pour découvrir l'outil"
│   │   ├── Inclus :
│   │   │   ├── ✓ 3 {outil}s générées
│   │   │   ├── ✓ Méthodologie universitaire
│   │   │   ├── ✓ Sauvegarde automatique
│   │   │   └── ✓ Aucune carte bancaire requise
│   │   └── CTA : "Commencer gratuitement"
│   │
│   ├── STANDARD (Badge "Populaire") :
│   │   ├── Badge : "30 crédits"
│   │   ├── Prix : "5€"
│   │   ├── Note : "soit 0,17€ par {outil}"
│   │   ├── Inclus :
│   │   │   ├── ✓ 30 {outil}s générées
│   │   │   ├── ✓ Méthodologie universitaire
│   │   │   ├── ✓ Sauvegarde illimitée
│   │   │   └── ✓ Crédits sans expiration
│   │   └── CTA : "Acheter 30 crédits"
│   │
│   └── PRO :
│       ├── Badge : "100 crédits"
│       ├── Prix : "17€"
│       ├── Note : "soit 0,17€ par {outil} (-30%)"
│       ├── Inclus :
│       │   ├── ✓ 100 {outil}s générées
│       │   ├── ✓ Méthodologie universitaire
│       │   ├── ✓ Sauvegarde illimitée
│       │   └── ✓ Crédits sans expiration
│       └── CTA : "Acheter 100 crédits"
│
└── Note abonnés : "🎁 Abonné à l'Académie ? Vous bénéficiez de 10 crédits IA offerts inclus dans votre abonnement. En savoir plus →"

────────────────────────────────────────────────────────────

C07 - FAQ
├── Badge : "FAQ"
├── Titre : "Questions fréquentes"
│
└── Accordéons (6) :
    │
    ├── "Le générateur respecte-t-il vraiment la méthodologie juridique française ?"
    │   └── "Oui, absolument. Notre générateur a été conçu et validé par des enseignants en droit. Il respecte la structure attendue en fac : faits, procédure, thèses en présence, problème de droit, solution de la cour. Chaque {outil} générée suit cette méthodologie rigoureuse."
    │
    ├── "Puis-je utiliser les {outil}s générées pour mes examens et partiels ?"
    │   └── [Réponse à compléter]
    │
    ├── "Quelles matières juridiques sont supportées ?"
    │   └── [Réponse à compléter]
    │
    ├── "Le générateur peut-il remplacer l'apprentissage de la méthodologie ?"
    │   └── [Réponse à compléter]
    │
    ├── "Les crédits ont-ils une date d'expiration ?"
    │   └── [Réponse à compléter]
    │
    └── "Puis-je utiliser mes crédits sur d'autres générateurs ?"
        └── [Réponse à compléter]

────────────────────────────────────────────────────────────

P10 - CTA FINAL
├── Fond : Dégradé bordeaux → violet
├── Titre : "Prêt à gagner des heures sur vos {outil}s ?"
├── Sous-titre : "Rejoignez les 25 000 étudiants qui utilisent Jurible pour réussir leur licence de droit."
├── CTA Primary : "Essayer gratuitement"
└── CTA Secondary : "Voir les offres"

────────────────────────────────────────────────────────────

O02 - FOOTER
├── Logo + Baseline
├── Colonnes (4)
├── Réseaux
└── Copyright
```

## Composants utilisés

| ID | Composant DS | Section | Obligatoire |
|----|--------------|---------|-------------|
| O01 | Header / Navbar | Header | ✅ |
| H03 | Hero Produit | Hero | ✅ |
| C11 | Pain Points | Problème | ✅ |
| C08 | Fonctionnalité (×6) | Features | ✅ |
| P14 | Section Steps | Comment ça marche | ✅ |
| C10 | Solution / Bénéfices | Cas d'usage | ✅ |
| C18 | Testimonial (×3) | Témoignages | ✅ |
| C15 | Pricing Suite IA | Pricing | ✅ |
| C07 | FAQ Accordéon | FAQ | ✅ |
| P10 | Section CTA Final | CTA Final | ✅ |
| O02 | Footer | Footer | ✅ |

## Notes techniques

1. **Variables dynamiques** : Remplacer {outil}, {credits}, {temps} selon la page
2. **Screenshots** : 3 captures d'écran de l'interface pour les steps
3. **Navigation** : Ajouter tabs vers les autres outils (recommandé)
4. **Note abonnés** : Lien vers /academie (cross-sell)

## SEO

- **H1** : "Générateur de {outil} intelligent"
- **Meta title** : "Générateur de {outil} IA | Jurible - Méthodologie juridique"
- **Meta description** : "Générez vos {outil}s en {temps}. IA spécialisée droit, méthodologie universitaire. 3 crédits offerts pour tester."
- **Schema.org** : `SoftwareApplication`

## Déclinaisons

| Page | URL | Crédits | Temps |
|------|-----|---------|-------|
| Fiche d'arrêt | `/suite-ia/fiche-arret` | 1 crédit | 10 sec |
| Dissertation | `/suite-ia/dissertation` | 3 crédits | 30 sec |
| Cas pratique | `/suite-ia/cas-pratique` | 1-3 crédits | 30 sec |
| Commentaire | `/suite-ia/commentaire-arret` | 3 crédits | 30 sec |

---

*Template créé le 6 février 2026 — Fidèle à la maquette landing_page_suite_ia_par_outils.pdf*
