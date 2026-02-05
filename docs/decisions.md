# Décisions de design

Ce document trace les décisions importantes prises pour le Design System Jurible.

---

## DS-001 : Couleur unique pour les badges/labels

**Date** : Janvier 2026
**Statut** : Adopté

### Contexte
Les badges et labels étaient utilisés avec différentes couleurs (vert, bleu, orange...) créant une incohérence visuelle.

### Décision
Tous les badges et labels utilisent **uniquement le violet clair** :
- Fond : `#EDE9FE`
- Texte : `#7C3AED`

### Conséquences
- Cohérence visuelle sur tout le site
- Le violet secondaire devient la couleur "informative"
- Les statuts (success, error, warning) restent sur les alertes, pas les badges

---

## DS-002 : Pas de SVG checkmarks custom pour les listes

**Date** : Janvier 2026
**Statut** : Adopté

### Contexte
Des checkmarks SVG custom étaient utilisés dans certaines listes, créant des problèmes de maintenance et d'accessibilité.

### Décision
Utiliser uniquement :
- Emojis natifs (✓, ✔️, ➡️, etc.)
- Puces standard du navigateur
- Icônes du set défini (Heroicons)

### Conséquences
- Meilleure accessibilité
- Maintenance simplifiée
- Cohérence entre les composants

---

## DS-003 : Police unique Poppins

**Date** : Décembre 2025
**Statut** : Adopté

### Contexte
Le site utilisait plusieurs polices (Poppins, Inter, system fonts).

### Décision
**Poppins** (Google Fonts) pour tout :
- Titres : Bold (700) et Semi-bold (600)
- Corps : Regular (400)
- Labels/Boutons : Medium (500)

### Conséquences
- Chargement optimisé (une seule famille)
- Identité visuelle renforcée
- Styles typographiques simplifiés

---

## DS-004 : Gradient limité aux accents premium

**Date** : Janvier 2026
**Statut** : Adopté

### Contexte
Le gradient bordeaux → violet était surexploité.

### Décision
Le gradient `#B0001D → #7C3AED` est réservé à :
- Badges "Premium" / "Nouveau"
- Hover sur certains CTAs
- Éléments décoratifs ponctuels

**Interdit** sur :
- Fonds de sections entières
- Textes courants
- Bordures

### Conséquences
- Impact visuel préservé car rare
- Meilleure lisibilité générale

---

## DS-005 : Nomenclature des fichiers

**Date** : Février 2026
**Statut** : Adopté

### Contexte
Les fichiers du DS avaient des noms incohérents.

### Décision
Format : `[ID]-nom-composant.[ext]`

- **ID** : Préfixe catégorie + numéro (T01, A02, C15...)
- **nom** : kebab-case, descriptif
- **ext** : .html (code) ou .png (visuel)

### Catégories
| Préfixe | Catégorie |
|---------|-----------|
| T | Tokens |
| A | Atoms |
| M | Molecules |
| O | Organisms |
| C | Cards |
| H | Hero |
| P | Patterns |
| V | Visuels |

---

## DS-006 : Stack technique FSE

**Date** : Novembre 2025
**Statut** : Adopté

### Contexte
Choix entre Elementor, Divi, Bricks, ou WordPress FSE natif.

### Décision
**WordPress Full Site Editing** (FSE) avec :
- theme.json pour les tokens
- Blocs natifs + blocs custom
- Pas de page builder tiers

### Raisons
- Performance optimale
- Pérennité (standard WordPress)
- Contrôle total du markup
- Pas de vendor lock-in

### Conséquences
- Courbe d'apprentissage plus élevée
- Développement initial plus long
- Maintenance long-terme simplifiée

---

## DS-007 : Tailles de boutons standardisées

**Date** : Janvier 2026
**Statut** : Adopté

### Contexte
Boutons avec des paddings et tailles de police variables.

### Décision
3 tailles uniquement :

| Taille | Padding | Font |
|--------|---------|------|
| SM | 8px 16px | 14px |
| MD | 10px 20px | 14px |
| LG | 12px 24px | 16px |

### Conséquences
- Cohérence sur tous les boutons
- Composants plus prévisibles
- Responsive simplifié

---

## Décisions en attente

### DS-008 : Dark mode (à discuter)
- Faut-il un dark mode pour l'école ?
- Complexité vs. valeur ajoutée

### DS-009 : Animations (à discuter)
- Définir les transitions standard
- Micro-interactions sur les cards
