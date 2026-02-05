# Jurible Design System

> Source de vérité pour le design system de Jurible (ex-AideauxTD / Jurilab)

## Présentation

| | |
|---|---|
| **Site principal** | [jurible.com](https://jurible.com) |
| **Plateforme e-learning** | [ecole.jurible.com](https://ecole.jurible.com) |
| **Anciens noms** | AideauxTD, Jurilab |
| **Stack** | WordPress FSE + Thrive Apprentice + SureCart + FluentCommunity |
| **Figma** | _Lien à ajouter_ |

---

## Tokens de référence

### Couleurs

| Token | Hex | Usage |
|-------|-----|-------|
| `primary` / bordeaux | `#B0001D` | CTA, liens, accents principaux |
| `secondary` / violet | `#7C3AED` | Badges, labels, accents secondaires |
| `text-dark` | `#1A1A1A` | Titres, corps de texte principal |
| `text-gray` | `#4A4A4A` | Texte secondaire, body small |
| `text-muted` | `#9CA3AF` | Captions, placeholders |
| `bg-light` | `#F8F8F8` | Fonds de sections alternées |
| `white` | `#FFFFFF` | Fonds principaux |
| `success` | `#16A34A` | Statuts positifs, confirmations |
| `warning` | `#F59E0B` | Alertes, en cours |
| `error` | `#DC2626` | Erreurs, suppressions |
| `gradient` | `#B0001D → #7C3AED` | Accents premium |

### Typographie

**Police** : Poppins (Google Fonts)

| Style | Desktop | Mobile | Weight | Line Height | Letter Spacing |
|-------|---------|--------|--------|-------------|----------------|
| H1 | 48px | 32px | 700 Bold | 120% | -1px |
| H2 | 40px | 28px | 700 Bold | 120% | -0.5px |
| H3 | 30px | 20px | 600 Semi | 140% | -0.5px |
| H4 | 20px | 20px | 600 Semi | 140% | 0 |
| Body Large | 18px | 18px | 400 Regular | 160% | 0 |
| Body Regular | 16px | 16px | 400 Regular | 160% | 0 |
| Body Bold | 16px | 16px | 700 Bold | 160% | 0 |
| Body Small | 14px | 14px | 400 Regular | 150% | 0 |
| Caption | 12px | 12px | 400 Regular | 140% | 0 |
| Label | 12px | 12px | 500 Medium | 140% | 0.5px |
| Button | 14px | 14px | 500 Medium | 140% | 0.5px |

### Spacing

| Token | Valeur |
|-------|--------|
| `xs` | 8px |
| `sm` | 16px |
| `md` | 24px |
| `lg` | 32px |
| `xl` | 48px |
| `2xl` | 64px |
| `3xl` | 96px |

### Border Radius

| Token | Valeur | Usage |
|-------|--------|-------|
| `xs` | 4px | Petits éléments |
| `sm` | 6px | Tags, badges |
| `md` | 8px | Boutons, inputs |
| `lg` | 12px | Cards, alertes, images |
| `xl` | 16px | Grands containers |
| `full` | 9999px | Chips, pills, avatars |

### Shadows

| Token | Valeur |
|-------|--------|
| `XS` | `0 1px 2px rgba(0,0,0,0.05)` |
| `SM` | `0 1px 3px rgba(0,0,0,0.1), 0 1px 2px rgba(0,0,0,0.06)` |
| `MD` | `0 4px 6px rgba(0,0,0,0.07), 0 2px 4px rgba(0,0,0,0.06)` |
| `LG` | `0 10px 15px rgba(0,0,0,0.1), 0 4px 6px rgba(0,0,0,0.05)` |
| `XL` | `0 20px 25px rgba(0,0,0,0.1), 0 10px 10px rgba(0,0,0,0.04)` |

### Badges / Labels

**Toujours en violet clair :**
- Fond : `#EDE9FE`
- Texte : `#7C3AED`
- Pas d'autres couleurs de badges

### Boutons

| Taille | Padding V | Padding H | Font |
|--------|-----------|-----------|------|
| SM | 8px | 16px | 14px |
| MD | 10px | 20px | 14px |
| LG | 12px | 24px | 16px |

### Listes / Puces

Emojis ou puces prédéfinies du DS, **jamais de SVG checkmarks custom**.

---

## Inventaire des composants

### Tokens (01-tokens/)

| ID | Nom | HTML | PNG | FSE |
|----|-----|:----:|:---:|:---:|
| T01 | Colors | ✓ | ✓ | ✓ |
| T02 | Spacing & Radius | — | — | ✓ |
| T03 | Typography | ✓ | ✓ | ✓ |
| T04 | Foundation | ✓ | ✓ | ✓ |
| T05 | Shadows | ✓ | ✓ | ✓ |
| T06 | Medias | ✓ | ✓ | ✓ |

### Atoms (02-atoms/)

| ID | Nom | HTML | PNG | FSE |
|----|-----|:----:|:---:|:---:|
| A01 | Divider | ✓ | ✓ | ✓ |
| A02 | Buttons (Tags, Chips, Nav Dots) | ✓ | ✓ | ✓ |
| A03 | Icônes & Emojis | ✓ | ✓ | ✓ |
| A04 | Inputs | ✓ | ✓ | ✓ |

### Molecules (03-molecules/)

| ID | Nom | HTML | PNG | FSE |
|----|-----|:----:|:---:|:---:|
| M01 | Alerts | ✓ | ✓ | ✓ |
| M02 | Breadcrumb | ✓ | ✓ | ✓ |
| M03 | Pagination | ✓ | ✓ | ✓ |
| M04 | Tabs | ✓ | ✓ | ✓ |
| M05 | Progress Indicator | ✓ | ✓ | ✓ |

### Organisms (04-organisms/)

| ID | Nom | HTML | PNG | FSE |
|----|-----|:----:|:---:|:---:|
| O01 | Header / Mega Menu | ✓ | ✓ | ✓ |
| O02 | Footer | ✓ | ✓ | ✓ |
| O03 | Blog Components | ✓ | ✓ | — |
| O04 | Modals | ✓ | ✓ | — |
| O05 | Prose / WYSIWYG | ✓ | ✓ | — |

### Cards (05-cards/)

| ID | Nom | HTML | PNG | FSE |
|----|-----|:----:|:---:|:---:|
| C01 | CTA (Bannière, Lead Magnet, Slide-in, Sticky, Toast) | ✓ | ✓ | — |
| C02 | Widget Blog | ✓ | ✓ | — |
| C03 | Article Blog | ✓ | ✓ | — |
| C04 | Bio / Auteur | — | — | — |
| C05 | Enseignants | ✓ | ✓ | — |
| C06 | Réassurance | ✓ | ✓ | — |
| C07 | FAQ Accordéon | ✓ | ✓ | — |
| C08 | Fonctionnalité | ✓ | ✓ | — |
| C09 | Contenu / Cours | ✓ | ✓ | — |
| C10 | Solution | ✓ | ✓ | — |
| C11 | Pain Points | ✓ | ✓ | — |
| C12 | Pricing Fiches PDF | ✓ | ✓ | — |
| C13 | Pricing Prépa | ✓ | ✓ | — |
| C14 | Pricing Comparatif | ✓ | ✓ | — |
| C15 | Pricing Suite IA | ✓ | ✓ | — |
| C16 | Pricing Formule Réussite | ✓ | ✓ | — |
| C17 | Pricing Sélecteur Durée | ✓ | ✓ | — |
| C18 | Testimonial | ✓ | ✓ | — |
| C19 | Catalogue Cours | ✓ | ✓ | — |

### Hero (06-hero/)

| ID | Nom | HTML | PNG | FSE |
|----|-----|:----:|:---:|:---:|
| H01 | Hero Conversion | ✓ | ✓ | — |
| H02 | Hero Archive | ✓ | ✓ | — |
| H03 | Hero Produit | ✓ | ✓ | — |
| H04 | Hero Simple | ✓ | ✓ | — |
| H05 | Hero Article Blog v1 | ✓ | ✓ | — |
| H06 | Hero Article Blog v2 | ✓ | ✓ | — |

### Patterns (07-patterns/)

| ID | Nom | HTML | PNG | FSE |
|----|-----|:----:|:---:|:---:|
| P01 | Paragraphe | ✓ | ✓ | — |
| P02 | Bloc texte + image | ✓ | ✓ | — |
| P03 | Offre Suite IA | ✓ | ✓ | — |
| P04 | CTA Académie | ✓ | ✓ | — |
| P05 | Quelle offre choisir | ✓ | ✓ | — |
| P06 | Produits complémentaires | ✓ | ✓ | — |
| P07 | Pricing Académie | ✓ | ✓ | — |
| P08 | Bloc méthode | ✓ | ✓ | — |
| P09 | Logos / Social Proof | ✓ | ✓ | — |
| P10 | CTA Final | ✓ | ✓ | — |
| P11 | Comparaison | ✓ | ✓ | — |
| P12 | Features | ✓ | ✓ | — |
| P13 | Stats / Chiffres clés | ✓ | ✓ | — |
| P14 | Steps | ✓ | ✓ | — |
| P15 | Grid | ✓ | ✓ | — |
| P16 | Forms | ✓ | ✓ | — |

### Visuels (08-visuels/)

| ID | Nom | Fichier |
|----|-----|---------|
| V01 | Illustrations | — |
| V02 | Mockups | — |

---

## Architecture des sites

### Ancien site (aideauxtd.com + ecole.aideauxtd.com)

- **~150-200 pages** au total
- Pages hub par support : QCM de droit, Flashcards droit, Fiches vidéos, Annales corrigées
- Pages support × matière : ~20 par type (QCM droit constitutionnel, QCM droit civil, etc.)
- 4 générateurs IA
- Pages méthodologie (commentaire d'arrêt, cas pratique, dissertation, fiche d'arrêt)
- Redirection 301 vers les nouveaux slugs

### Nouveau jurible.com

- **Menu** : Cours | Nos offres | Prépas | Ressources | À propos
- **~35 pages** + pages support × matière (~80+)
- Templates réutilisables pour les landing pages

### Nouveau ecole.jurible.com

- **Menu** : Accueil | Cours | Outils IA | Communauté
- **~20 écrans**
- **Stack** : Thrive Apprentice + FluentCommunity

---

## Roadmap FSE WordPress

| Phase | Statut | Contenu |
|-------|--------|---------|
| 1 | ✅ | Fondations (theme.json, tokens) |
| 2 | ✅ | Header + Footer |
| 3 | ✅ | Boutons + Atoms |
| 4 | 🔲 | Cards + Organisms |
| 5 | 🔲 | Hero sections |
| 6 | 🔲 | Patterns + Templates de pages |

---

## Conventions

### Nommage des fichiers

```
[ID]-nom-composant.[ext]
```

Exemples :
- `C07-faq-accordeon.html`
- `H01-hero-conversion.png`

### Nommage CSS

BEM : `.block__element--modifier`

### Règles de design

| Élément | Règle |
|---------|-------|
| **Labels / Badges** | Toujours violet clair (`#EDE9FE` fond + `#7C3AED` texte) |
| **Puces** | Emojis ou format prédéfini, jamais de SVG custom |
| **Boutons primaires** | Bordeaux `#B0001D` |
| **Boutons secondaires** | Outline bordeaux ou gris |

---

## Structure du repo

```
jurible-design-system/
├── README.md                    ← Ce fichier (source de vérité)
├── CHANGELOG.md                 ← Historique des modifications
├── assets/
│   ├── 01-tokens/
│   ├── 02-atoms/
│   ├── 03-molecules/
│   ├── 04-organisms/
│   ├── 05-cards/
│   ├── 06-hero/
│   ├── 07-patterns/
│   └── 08-visuels/
├── docs/
│   ├── architecture-ancien-site.md
│   ├── architecture-nouveau-site.md
│   ├── architecture-ecole.md
│   ├── decisions.md
│   └── roadmap-fse.md
└── tracker/
    └── jurible-ds-tracker-v2.xlsx
```

---

## Liens utiles

- [Figma](#) _(à compléter)_
- [WordPress FSE Documentation](https://developer.wordpress.org/block-editor/how-to-guides/themes/global-settings-and-styles/)
- [Thrive Apprentice](https://thrivethemes.com/apprentice/)
- [SureCart](https://surecart.com/)
- [FluentCommunity](https://fluentcommunity.co/)

---

_Dernière mise à jour : Février 2026_
