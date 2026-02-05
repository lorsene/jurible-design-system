# Roadmap FSE WordPress

Plan d'implémentation du Design System dans WordPress Full Site Editing.

---

## Vue d'ensemble

| Phase | Nom | Statut | Priorité |
|-------|-----|--------|----------|
| 1 | Fondations | ✅ Terminé | P0 |
| 2 | Header + Footer | ✅ Terminé | P0 |
| 3 | Boutons + Atoms | ✅ Terminé | P0 |
| 4 | Cards + Organisms | 🔲 En cours | P1 |
| 5 | Hero sections | 🔲 À faire | P1 |
| 6 | Patterns + Templates | 🔲 À faire | P2 |

---

## Phase 1 : Fondations ✅

### Objectif
Configurer theme.json avec tous les tokens du DS.

### Livrables
- [x] theme.json avec couleurs
- [x] theme.json avec typographie
- [x] theme.json avec spacing
- [x] theme.json avec border-radius
- [x] theme.json avec shadows
- [x] Variables CSS globales
- [x] Reset CSS de base

### Fichiers concernés
```
theme/
├── theme.json
├── style.css
└── assets/css/
    ├── variables.css
    └── reset.css
```

---

## Phase 2 : Header + Footer ✅

### Objectif
Créer les templates parts pour header et footer.

### Livrables
- [x] Header desktop (mega menu)
- [x] Header mobile (hamburger)
- [x] Footer complet
- [x] Navigation responsive

### Fichiers concernés
```
theme/
├── parts/
│   ├── header.html
│   └── footer.html
└── assets/css/
    ├── header.css
    └── footer.css
```

---

## Phase 3 : Boutons + Atoms ✅

### Objectif
Implémenter les composants atomiques.

### Livrables
- [x] Boutons (primary, secondary, outline, ghost)
- [x] Boutons tailles (SM, MD, LG)
- [x] Inputs (text, textarea, select)
- [x] Checkboxes, radios, toggles
- [x] Dividers
- [x] Tags / Chips

### Fichiers concernés
```
theme/
└── assets/css/
    ├── buttons.css
    ├── inputs.css
    ├── dividers.css
    └── tags.css
```

---

## Phase 4 : Cards + Organisms 🔲

### Objectif
Créer les blocs réutilisables pour les cards et organisms.

### Livrables
- [ ] Bloc Card générique (avec variantes)
- [ ] C01 - CTA cards
- [ ] C05 - Card enseignant
- [ ] C06 - Card réassurance
- [ ] C07 - FAQ accordéon
- [ ] C08 - Card fonctionnalité
- [ ] C18 - Card testimonial
- [ ] O03 - Blog widgets
- [ ] O04 - Modals

### Priorisation Cards
| ID | Priorité | Raison |
|----|----------|--------|
| C07 | P0 | Utilisé sur 80% des pages |
| C06 | P0 | Homepage + landing |
| C18 | P0 | Social proof partout |
| C08 | P1 | Pages produit |
| C01 | P1 | Conversion |
| Autres | P2 | Usage ponctuel |

### Fichiers à créer
```
theme/
├── blocks/
│   ├── card/
│   ├── faq-accordion/
│   ├── testimonial/
│   └── modal/
└── patterns/
    ├── cards-reassurance.php
    └── cards-testimonials.php
```

---

## Phase 5 : Hero sections 🔲

### Objectif
Créer les 6 variantes de hero en blocs FSE.

### Livrables
- [ ] H01 - Hero Conversion
- [ ] H02 - Hero Archive
- [ ] H03 - Hero Produit
- [ ] H04 - Hero Simple
- [ ] H05 - Hero Article Blog v1
- [ ] H06 - Hero Article Blog v2

### Notes techniques
- Utiliser les block patterns
- Background images optimisées
- Responsive avec container queries si possible

### Fichiers à créer
```
theme/
├── patterns/
│   ├── hero-conversion.php
│   ├── hero-archive.php
│   ├── hero-produit.php
│   ├── hero-simple.php
│   ├── hero-article-v1.php
│   └── hero-article-v2.php
└── assets/css/
    └── hero.css
```

---

## Phase 6 : Patterns + Templates 🔲

### Objectif
Assembler les composants en patterns et templates de pages.

### Patterns à créer
- [ ] P01 - Paragraphe
- [ ] P02 - Bloc texte + image
- [ ] P05 - Quelle offre choisir
- [ ] P07 - Pricing Académie
- [ ] P09 - Logos / Social proof
- [ ] P10 - CTA Final
- [ ] P11 - Comparaison
- [ ] P12 - Features grid
- [ ] P13 - Stats
- [ ] P14 - Steps

### Templates de pages
- [ ] Template Homepage
- [ ] Template Landing produit
- [ ] Template Archive (blog, catalogue)
- [ ] Template Article blog
- [ ] Template Page simple (légal)

### Fichiers à créer
```
theme/
├── templates/
│   ├── front-page.html
│   ├── page-landing.html
│   ├── archive.html
│   ├── single.html
│   └── page.html
└── patterns/
    ├── section-features.php
    ├── section-stats.php
    ├── section-steps.php
    ├── section-cta-final.php
    └── ...
```

---

## Critères de validation

### Par composant
- [ ] Fidèle au design Figma
- [ ] Responsive (mobile, tablet, desktop)
- [ ] Accessible (WCAG 2.1 AA)
- [ ] Performant (CLS < 0.1, LCP < 2.5s)
- [ ] Éditable dans l'éditeur FSE

### Par phase
- [ ] Tous les composants validés
- [ ] Documentation mise à jour
- [ ] Tests sur staging
- [ ] Review design

---

## Ressources

- [WordPress Block Editor Handbook](https://developer.wordpress.org/block-editor/)
- [theme.json Reference](https://developer.wordpress.org/block-editor/reference-guides/theme-json-reference/)
- [Create Block Tool](https://developer.wordpress.org/block-editor/reference-guides/packages/packages-create-block/)
