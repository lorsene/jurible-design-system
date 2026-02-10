# 📋 BRIEF DEV — Renommage Patterns + Création Nouveaux

> **Pour** : Dev WordPress FSE
> **De** : Laura
> **Date** : Février 2026
> **Objectif** : Aligner le naming des patterns PHP sur la structure Figma.
> Actuellement les fichiers sont nommés H01, P01, C04, etc.
> Ils doivent passer dans des sous-dossiers par catégorie avec un nouveau naming.

---

## PARTIE 1 — RENOMMAGE DES FICHIERS EXISTANTS

### Structure cible

```
themes/jurible/patterns/
├── hero/
├── contenu/
├── commerce/
├── confiance/
├── marketing/
├── equipe/
└── structure/
```

Chaque pattern garde son slug WordPress mis à jour.

---

### 🔵 HERO — 15 fichiers (renommage uniquement)

| Fichier actuel | → Nouveau fichier | Slug |
|---|---|---|
| `H01-hero-conversion-homepage.php` | `hero/01-conversion-homepage.php` | `jurible/hero-01-conversion-homepage` |
| `H01-hero-conversion-academie.php` | `hero/02-conversion-academie.php` | `jurible/hero-02-conversion-academie` |
| `H01-hero-conversion-prepa.php` | `hero/03-conversion-prepa.php` | `jurible/hero-03-conversion-prepa` |
| `H01-hero-conversion-suite-ia.php` | `hero/04-conversion-suite-ia.php` | `jurible/hero-04-conversion-suite-ia` |
| `H02-hero-archive-blog.php` | `hero/05-archive-blog.php` | `jurible/hero-05-archive-blog` |
| `H02-hero-archive-cours.php` | `hero/06-archive-cours.php` | `jurible/hero-06-archive-cours` |
| `H02-hero-archive-fiches.php` | `hero/07-archive-fiches.php` | `jurible/hero-07-archive-fiches` |
| `H02-hero-archive-search.php` | `hero/08-archive-search.php` | `jurible/hero-08-archive-search` |
| `H03-hero-produit-cours.php` | `hero/09-produit-cours.php` | `jurible/hero-09-produit-cours` |
| `H03-hero-produit-support.php` | `hero/10-produit-support.php` | `jurible/hero-10-produit-support` |
| `H04-hero-simple-about.php` | `hero/11-simple-about.php` | `jurible/hero-11-simple-about` |
| `H04-hero-simple-contact.php` | `hero/12-simple-contact.php` | `jurible/hero-12-simple-contact` |
| `H04-hero-simple-faq.php` | `hero/13-simple-faq.php` | `jurible/hero-13-simple-faq` |
| `H04-hero-simple-legal.php` | `hero/14-simple-legal.php` | `jurible/hero-14-simple-legal` |
| `H05-hero-article.php` | `hero/15-article.php` | `jurible/hero-15-article` |

---

### 🟢 CONTENU — 14 fichiers (renommage)

| Fichier actuel | → Nouveau fichier | Slug |
|---|---|---|
| `P01-paragraphe-standard.php` | `contenu/01-paragraphe-standard.php` | `jurible/contenu-01-paragraphe-standard` |
| `P01-paragraphe-card.php` | `contenu/02-paragraphe-card.php` | `jurible/contenu-02-paragraphe-card` |
| `P01-paragraphe-gris.php` | `contenu/03-paragraphe-gris.php` | `jurible/contenu-03-paragraphe-gris` |
| `P01-paragraphe-minimal.php` | `contenu/04-paragraphe-minimal.php` | `jurible/contenu-04-paragraphe-minimal` |
| `P02-texte-image.php` | `contenu/05-texte-image.php` | `jurible/contenu-05-texte-image` |
| `P02-image-texte.php` | `contenu/06-image-texte.php` | `jurible/contenu-06-image-texte` |
| `P02-texte-video.php` | `contenu/07-texte-video.php` | `jurible/contenu-07-texte-video` |
| `C09-contenu-chiffre.php` | `contenu/08-chiffres-cles.php` | `jurible/contenu-08-chiffres-cles` |
| `C09-contenu-matieres.php` | `contenu/09-grille-matieres.php` | `jurible/contenu-09-grille-matieres` |
| `C09-contenu-programme.php` | `contenu/10-programme.php` | `jurible/contenu-10-programme` |
| `C09-contenu-sommaire.php` | `contenu/11-sommaire.php` | `jurible/contenu-11-sommaire` |
| `C09-contenu-stats-sommaire.php` | `contenu/12-stats-sommaire.php` | `jurible/contenu-12-stats-sommaire` |
| `P13-stats.php` | `contenu/13-stats.php` | `jurible/contenu-13-stats` |
| `P08-bloc-methode.php` | `contenu/14-methode-onglets.php` | `jurible/contenu-14-methode-onglets` |

---

### 🟠 COMMERCE — 12 fichiers (8 renommage + 4 nouveaux)

| Fichier actuel | → Nouveau fichier | Slug | Statut |
|---|---|---|---|
| `P07-pricing-academie.php` | `commerce/01-pricing-academie.php` | `jurible/commerce-01-pricing-academie` | Renommer |
| `P03-offre-suite-ia.php` | `commerce/02-offre-suite-ia.php` | `jurible/commerce-02-offre-suite-ia` | Renommer |
| `P04-cta-academie.php` | `commerce/03-cta-cross-sell.php` | `jurible/commerce-03-cta-cross-sell` | Renommer |
| `P05-quelle-offre-choisir.php` | `commerce/04-quelle-offre.php` | `jurible/commerce-04-quelle-offre` | Renommer |
| `P06-produits-complementaires.php` | `commerce/05-produits-complementaires.php` | `jurible/commerce-05-produits-complementaires` | Renommer |
| `P10-cta-final-basique.php` | `commerce/06-cta-final-basique.php` | `jurible/commerce-06-cta-final-basique` | Renommer |
| `P10-cta-final-promo.php` | `commerce/07-cta-final-promo.php` | `jurible/commerce-07-cta-final-promo` | Renommer |
| `P10-cta-final-urgence.php` | `commerce/08-cta-final-urgence.php` | `jurible/commerce-08-cta-final-urgence` | Renommer |
| — | `commerce/09-pricing-comparatif.php` | `jurible/commerce-09-pricing-comparatif` | 🆕 Créer (maquette fournie) |
| — | `commerce/10-pricing-suite-ia.php` | `jurible/commerce-10-pricing-suite-ia` | 🆕 Créer (maquette fournie) |
| — | `commerce/11-pricing-prepa.php` | `jurible/commerce-11-pricing-prepa` | 🆕 Créer (maquette fournie) |
| — | `commerce/12-pricing-fiches.php` | `jurible/commerce-12-pricing-fiches` | 🆕 Créer (maquette fournie) |

---

### 🟣 CONFIANCE — 5 fichiers (4 renommage + 1 nouveau)

| Fichier actuel | → Nouveau fichier | Slug | Statut |
|---|---|---|---|
| `C06-reassurance-full.php` | `confiance/01-reassurance-full.php` | `jurible/confiance-01-reassurance-full` | Renommer |
| `C06-reassurance-minimal.php` | `confiance/02-reassurance-minimal.php` | `jurible/confiance-02-reassurance-minimal` | Renommer |
| `P09-trust-bar.php` | `confiance/03-logos-partenaires.php` | `jurible/confiance-03-logos-partenaires` | Renommer |
| `C07-faq-accordeon.php` | `confiance/04-faq.php` | `jurible/confiance-04-faq` | Renommer |
| — | `confiance/05-temoignages.php` | `jurible/confiance-05-temoignages` | 🆕 Créer (maquette fournie) |

---

### 🔴 MARKETING — 12 fichiers (11 renommage + 1 nouveau)

| Fichier actuel | → Nouveau fichier | Slug | Statut |
|---|---|---|---|
| `C11-pain-points-4.php` | `marketing/01-pain-points-4.php` | `jurible/marketing-01-pain-points-4` | Renommer |
| `C11-pain-points-6.php` | `marketing/02-pain-points-6.php` | `jurible/marketing-02-pain-points-6` | Renommer |
| — | `marketing/03-solution.php` | `jurible/marketing-03-solution` | 🆕 Créer (maquette fournie) |
| `C08-fonctionnalite.php` | `marketing/04-features-6.php` | `jurible/marketing-04-features-6` | Renommer |
| `C08-fonctionnalite-4.php` | `marketing/05-features-4.php` | `jurible/marketing-05-features-4` | Renommer |
| `C08-fonctionnalite-detailed.php` | `marketing/06-features-detailed.php` | `jurible/marketing-06-features-detailed` | Renommer |
| `P12-features.php` | `marketing/07-features-incluses.php` | `jurible/marketing-07-features-incluses` | Renommer |
| `P14-steps.php` | `marketing/08-steps.php` | `jurible/marketing-08-steps` | Renommer |
| `P11a-comparaison-cards.php` | `marketing/09-comparaison-cards.php` | `jurible/marketing-09-comparaison-cards` | Renommer |
| `P11b-comparaison-avant-apres.php` | `marketing/10-comparaison-avant-apres.php` | `jurible/marketing-10-comparaison-avant-apres` | Renommer |
| `P11c-comparaison-multi.php` | `marketing/11-comparaison-multi.php` | `jurible/marketing-11-comparaison-multi` | Renommer |
| `P11d-comparaison-dark.php` | `marketing/12-comparaison-dark.php` | `jurible/marketing-12-comparaison-dark` | Renommer |

---

### ⚫ EQUIPE — 6 fichiers (5 renommage + 1 nouveau)

| Fichier actuel | → Nouveau fichier | Slug | Statut |
|---|---|---|---|
| `C05-enseignants-grille.php` | `equipe/01-enseignants-grille.php` | `jurible/equipe-01-enseignants-grille` | Renommer |
| `C05-enseignants-specifique.php` | `equipe/02-enseignant-matiere.php` | `jurible/equipe-02-enseignant-matiere` | Renommer |
| `C05-enseignants-teaser.php` | `equipe/03-enseignants-teaser.php` | `jurible/equipe-03-enseignants-teaser` | Renommer |
| `C05-enseignants-video.php` | `equipe/04-enseignants-video.php` | `jurible/equipe-04-enseignants-video` | Renommer |
| `C04-bio-auteur.php` | `equipe/05-bio-auteur.php` | `jurible/equipe-05-bio-auteur` | Renommer |
| — | `equipe/06-citation.php` | `jurible/equipe-06-citation` | 🆕 Créer (maquette fournie) |

---

### 🟤 STRUCTURE — 6 fichiers (tous nouveaux)

| Fichier actuel | → Nouveau fichier | Slug | Statut |
|---|---|---|---|
| — | `structure/01-formulaire-contact.php` | `jurible/structure-01-formulaire-contact` | 🆕 Créer (maquette fournie) |
| — | `structure/02-article-featured.php` | `jurible/structure-02-article-featured` | 🆕 Créer (maquette fournie) |
| — | `structure/03-articles-grid.php` | `jurible/structure-03-articles-grid` | 🆕 Créer (maquette fournie) |
| — | `structure/04-articles-lies.php` | `jurible/structure-04-articles-lies` | 🆕 Créer (maquette fournie) |
| — | `structure/05-catalogue-matieres.php` | `jurible/structure-05-catalogue-matieres` | 🆕 Créer (maquette fournie) |
| — | `structure/06-page-404.php` | `jurible/structure-06-page-404` | 🆕 Créer (maquette fournie) |

---

## PARTIE 2 — VÉRIFICATIONS APRÈS RENOMMAGE

### 2.1 Mettre à jour les slugs dans chaque fichier PHP

Chaque fichier pattern contient un header PHP avec le slug et la catégorie. Il faut mettre à jour les 2 :

```php
<?php
/**
 * Title: Hero Conversion Homepage
 * Slug: jurible/hero-01-conversion-homepage    ← METTRE À JOUR
 * Categories: jurible-hero                      ← METTRE À JOUR
 */
?>
```

**Nouvelles catégories WordPress** à enregistrer (remplacent les anciennes) :

| Catégorie | Label dans l'éditeur | Patterns concernés |
|---|---|---|
| `jurible-hero` | Heroes | hero/01 à hero/15 |
| `jurible-contenu` | Contenu | contenu/01 à contenu/14 |
| `jurible-commerce` | Commerce | commerce/01 à commerce/14 |
| `jurible-confiance` | Confiance | confiance/01 à confiance/05 |
| `jurible-marketing` | Marketing | marketing/01 à marketing/12 |
| `jurible-equipe` | Équipe | equipe/01 à equipe/06 |
| `jurible-structure` | Structure | structure/01 à structure/06 |

Ces catégories doivent être **déclarées dans `theme.json`** sous `settings.blocks.core/pattern.categories` ou via `register_block_pattern_category()` dans `functions.php`. Exemple :

```php
// Dans functions.php
register_block_pattern_category('jurible-hero', ['label' => 'Heroes']);
register_block_pattern_category('jurible-contenu', ['label' => 'Contenu']);
register_block_pattern_category('jurible-commerce', ['label' => 'Commerce']);
register_block_pattern_category('jurible-confiance', ['label' => 'Confiance']);
register_block_pattern_category('jurible-marketing', ['label' => 'Marketing']);
register_block_pattern_category('jurible-equipe', ['label' => 'Équipe']);
register_block_pattern_category('jurible-structure', ['label' => 'Structure']);
```

### 2.2 Mettre à jour les références dans les templates

Chercher dans tous les fichiers templates (`/templates/*.html`, `/parts/*.html`) les anciens slugs et les remplacer :

```bash
grep -rn "jurible/h01\|jurible/h02\|jurible/h03\|jurible/h04\|jurible/h05" templates/ parts/
grep -rn "jurible/p01\|jurible/p02\|jurible/p03\|jurible/p04" templates/ parts/
grep -rn "jurible/c04\|jurible/c05\|jurible/c06\|jurible/c07\|jurible/c08\|jurible/c09\|jurible/c11" templates/ parts/
```

---

## PARTIE 3 — RÉSUMÉ CHIFFRÉ

| Action | Nombre |
|---|---|
| Fichiers à **renommer** (déplacer dans sous-dossier + nouveau nom) | 43 |
| Fichiers **🆕 à créer** depuis maquettes HTML fournies | 13 |
| **Total patterns après migration** | 56 |
| Slugs à mettre à jour dans les headers PHP | 43 (tous les renommés) |
| Catégories WordPress à enregistrer | 7 |

---

## PARTIE 4 — DÉTAIL DES 13 NOUVEAUX PATTERNS

Les maquettes HTML de référence sont dans le repo : [`assets/patterns/`](../assets/patterns/). Le dev ouvre chaque maquette dans un navigateur pour voir le design exact, puis la convertit en pattern PHP WordPress FSE.

| # | Pattern | Maquette HTML (lien repo) | Ce qu'il fait |
|---|---|---|---|
| 1 | `commerce/09-pricing-comparatif` | [`assets/patterns/commerce/09-pricing-comparatif.html`](../assets/patterns/commerce/09-pricing-comparatif.html) | Tableau 3 col (Essentiel/Intégral/Sur-mesure) |
| 2 | `commerce/10-pricing-suite-ia` | [`assets/patterns/commerce/10-pricing-suite-ia.html`](../assets/patterns/commerce/10-pricing-suite-ia.html) | Cards Minos + bandeau essai gratuit 3 crédits |
| 3 | `commerce/11-pricing-prepa` | [`assets/patterns/commerce/11-pricing-prepa.html`](../assets/patterns/commerce/11-pricing-prepa.html) | PASS DROIT hero large + card solo |
| 4 | `commerce/12-pricing-fiches` | [`assets/patterns/commerce/12-pricing-fiches.html`](../assets/patterns/commerce/12-pricing-fiches.html) | Pack 2 col + grille fiches unité |
| 5 | `confiance/05-temoignages` | [`assets/patterns/confiance/05-temoignages.html`](../assets/patterns/confiance/05-temoignages.html) | Témoignages hero featured + grille 4 cards |
| 6 | `marketing/03-solution` | [`assets/patterns/marketing/03-solution.html`](../assets/patterns/marketing/03-solution.html) | Section bénéfices avec icônes + features |
| 7 | `equipe/06-citation` | [`assets/patterns/equipe/06-citation.html`](../assets/patterns/equipe/06-citation.html) | Citation fondateur hero 2 col + centrée |
| 8 | `structure/01-formulaire-contact` | [`assets/patterns/structure/01-formulaire-contact.html`](../assets/patterns/structure/01-formulaire-contact.html) | Page contact 2 col (infos + formulaire) |
| 9 | `structure/02-article-featured` | [`assets/patterns/structure/02-article-featured.html`](../assets/patterns/structure/02-article-featured.html) | Article blog mis en avant |
| 10 | `structure/03-articles-grid` | [`assets/patterns/structure/03-articles-grid.html`](../assets/patterns/structure/03-articles-grid.html) | Grille 3 col + tags couleurs |
| 11 | `structure/04-articles-lies` | [`assets/patterns/structure/04-articles-lies.html`](../assets/patterns/structure/04-articles-lies.html) | 3 cards articles recommandés |
| 12 | `structure/05-catalogue-matieres` | [`assets/patterns/structure/05-catalogue-matieres.html`](../assets/patterns/structure/05-catalogue-matieres.html) | Grille matières L1/L2/L3 |
| 13 | `structure/06-page-404` | [`assets/patterns/structure/06-page-404.html`](../assets/patterns/structure/06-page-404.html) | Page 404 avec gradient + liens |

---

## 🎨 RAPPEL DS

| Token | Valeur |
|---|---|
| Typo | Poppins — H1 48px/700 · H2 40px/700 · H3 30px/600 · H4 20px/600 |
| Body | Large 18px · Regular 16px · Small 14px · Caption 12px |
| Bordeaux | #B0001D |
| Violet | #7C3AED |
| Gradient | 135deg bordeaux → violet |
| Labels/badges | TOUJOURS violet clair (#EDE9FE + #7C3AED) |
| Texte | Dark #1A1A1A · Gray #4A4A4A · Muted #9CA3AF |
| Sections | Padding 80px desktop / 48px mobile · max-width 1080px |
| Boutons | SM 8px 16px · MD 10px 20px · LG 12px 24px · Font 14px/500/0.5px |
| Puces | Emojis ou format DS prédéfini, jamais de SVG checkmarks custom |
