# Architecture - Ancien site (aideauxtd.com)

## Vue d'ensemble

- **Domaines** : aideauxtd.com + ecole.aideauxtd.com
- **Total pages** : ~150-200 pages
- **Statut** : En cours de migration vers jurible.com

## Structure des pages

### Pages Hub (par type de support)

| Page | URL | Contenu |
|------|-----|---------|
| QCM de droit | `/qcm-droit/` | Hub avec liste de toutes les matières |
| Flashcards droit | `/flashcards-droit/` | Hub avec liste de toutes les matières |
| Fiches vidéos | `/fiches-videos/` | Hub avec liste de toutes les matières |
| Annales corrigées | `/annales-corrigees/` | Hub avec liste de toutes les matières |

### Pages Support × Matière (~80 pages)

Chaque combinaison support + matière a sa landing page :

- QCM droit constitutionnel
- QCM droit civil
- QCM droit pénal
- Flashcards droit des obligations
- Flashcards droit administratif
- etc.

**~20 matières × 4 supports = ~80 pages**

### Pages Générateurs IA (4 pages)

| Générateur | Description |
|------------|-------------|
| Générateur de cas pratique | IA qui génère des cas pratiques |
| Générateur de dissertation | IA qui génère des sujets de dissertation |
| Générateur de commentaire d'arrêt | IA qui analyse des arrêts |
| Générateur de fiche d'arrêt | IA qui crée des fiches d'arrêt |

### Pages Méthodologie (~10 pages)

- Comment faire un commentaire d'arrêt
- Comment faire un cas pratique
- Comment faire une dissertation juridique
- Comment faire une fiche d'arrêt
- etc.

### Pages Légales & Utilitaires

- Mentions légales
- CGV / CGU
- Politique de confidentialité
- Contact
- À propos

## Redirections 301

Toutes les anciennes URLs doivent rediriger vers les nouvelles :

```
aideauxtd.com/qcm-droit/ → jurible.com/qcm-droit/
aideauxtd.com/qcm-droit-constitutionnel/ → jurible.com/cours/qcm-droit-constitutionnel/
```

## Notes techniques

- Stack : WordPress + Elementor (ancien)
- Migration vers WordPress FSE en cours
- SEO : conserver le jus des backlinks via 301
