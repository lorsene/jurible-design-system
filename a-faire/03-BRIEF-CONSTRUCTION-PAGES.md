# 📋 BRIEF DEV — Construction des Pages

> **Pour** : Dev WordPress FSE
> **De** : Laura
> **Date** : Février 2026
> **Objectif** : Assembler les patterns dans l'éditeur WordPress pour construire chaque page du site
> **Prérequis** : Brief 01 (patterns renommés/créés) + Brief 02 (templates créés)

---

## COMMENT UTILISER CE BRIEF

Chaque page = une liste ordonnée de patterns. Le dev :
1. Crée la page dans WordPress
2. Sélectionne le bon template (page.html, page-texte.html, etc.)
3. Insère les patterns dans l'ordre du tableau avec `<!-- wp:pattern {"slug":"jurible/xxx"} /-->`
4. Adapte le contenu texte (titres, descriptions, CTA) selon les indications

**Convention** : Chaque ligne = 1 pattern ou 1 bloc custom. Le slug est exact et correspond au brief 01.

---

## SOMMAIRE

### Pages de conversion (landing pages)
1. [Homepage](#1-homepage)
2. [Académie](#2-académie)
3. [Nos Offres](#3-nos-offres)
4. [Prépa](#4-prépa)

### Pages produits
5. [Fiches Hub](#5-fiches-hub)
6. [Fiches Pack (×4)](#6-fiches-pack)
7. [Fiches Matière (×22)](#7-fiches-matière)
8. [Suite IA Hub](#8-suite-ia-hub)
9. [Suite IA Outil (×4)](#9-suite-ia-outil)
10. [Manuel Méthodologie](#10-manuel-méthodologie)

### Pages cours
11. [Cours Matière (×22)](#11-cours-matière)
12. [Cours Méthodologie/Méthode (×8)](#12-cours-méthodologie)
13. [Cours Niveau (×4)](#13-cours-niveau)

### Blog
14. [Blog Archive](#14-blog-archive)
15. [Blog Catégorie (×N)](#15-blog-catégorie)
16. [Blog Article](#16-blog-article)

### Pages institutionnelles
17. [Enseignants](#17-enseignants)
18. [Notre Projet](#18-notre-projet)
19. [Contact](#19-contact)
20. [Avis](#20-avis)
21. [Guide Gratuit](#21-guide-gratuit)

### Pages simples
22. [Pages légales (×3)](#22-pages-légales)
23. [Page 404](#23-page-404)

---

## PAGES DE CONVERSION

---

### 1. Homepage

**URL** : `/`
**Template** : `front-page.html`
**Objectif** : Orienter le visiteur vers la bonne offre

| # | Section | Slug pattern | Responsive |
|---|---------|-------------|------------|
| 1 | Header | `parts/header` | Hamburger |
| 2 | Hero Conversion | `jurible/hero-01-conversion-homepage` | 1 CTA, vidéo sous texte, badges 2 lignes |
| 3 | Réassurance | `jurible/confiance-01-reassurance-full` | — |
| 4 | Logos universités | `jurible/confiance-03-logos-partenaires` | Scroll horizontal auto |
| 5 | Solution / Bénéfices | `jurible/marketing-03-solution` | Cards empilées |
| 6 | Ressources chiffrées | `jurible/contenu-08-chiffres-cles` | 4 → 2×2 |
| 7 | Pour qui — CTA | `jurible/commerce-04-quelle-offre` | Cards empilées |
| 8 | Pricing comparatif offres | `jurible/commerce-09-pricing-comparatif` | Cards empilées, Académie first |
| 9 | Réassurance (Trust bar) | `jurible/confiance-02-reassurance-minimal` | — |
| 10 | Steps | `jurible/marketing-08-steps` | Empilés verticalement |
| 11 | Comparaison | `jurible/marketing-09-comparaison-cards` | Empilées |
| 12 | Équipe / Citation | `jurible/equipe-06-citation` | Image au-dessus, texte centré |
| 13 | Témoignages | `jurible/confiance-05-temoignages` | Carousel swipe |
| 14 | FAQ | `jurible/confiance-04-faq` | — |
| 15 | CTA Final | `jurible/commerce-06-cta-final-basique` | — |
| 16 | Footer | `parts/footer` | Colonnes empilées |

**Notes contenu** :
- CTA Hero : "Découvrir nos offres" (pas "S'abonner" — on oriente, on ne vend pas)
- Section 7 : 4 profils (L1/L2/L3/Capacité ou Étudiant/Redoublant/Prépa/Professionnel) → chaque card renvoie vers le bon produit
- Section 11 : "Sans Jurible / Avec Jurible" (angle général, pas spécifique Académie)

---

### 2. Académie

**URL** : `/academie`
**Template** : `page.html`
**Objectif** : Vendre l'abonnement Académie — tous les CTA mènent au pricing ou au paiement

| # | Section | Slug pattern | Responsive |
|---|---------|-------------|------------|
| 1 | Header | `parts/header` | Hamburger |
| 2 | Hero + Vidéo | `jurible/hero-02-conversion-academie` | Vidéo sous texte, 1 CTA |
| 3 | Réassurance | `jurible/confiance-01-reassurance-full` | — |
| 4 | Logos | `jurible/confiance-03-logos-partenaires` | Scroll horizontal |
| 5 | Pain Points | `jurible/marketing-02-pain-points-6` | 6 → 2×3 |
| 6 | Solution | `jurible/marketing-03-solution` | Cards empilées |
| 7 | Features (6) | `jurible/marketing-04-features-6` | 6 → 2×3 → empilées |
| 8 | Méthode (onglets) | `jurible/contenu-14-methode-onglets` | Onglets scroll horizontal, vidéo full-width |
| 9 | Enseignants | `jurible/equipe-04-enseignants-video` | Carousel swipe |
| 10 | Matières | `jurible/contenu-09-grille-matieres` | 2 col → accordéon par niveau |
| 11 | Témoignages | `jurible/confiance-05-temoignages` | Carousel swipe |
| 12 | Comparaison | `jurible/marketing-09-comparaison-cards` | Empilées |
| 13 | Pricing | `jurible/commerce-01-pricing-academie` | Cards empilées, populaire en premier |
| 14 | Rappel features compact | `jurible/marketing-07-features-incluses` | — |
| 15 | Réassurance (bis) | `jurible/confiance-02-reassurance-minimal` | — |
| 16 | Steps | `jurible/marketing-08-steps` | Empilés verticalement |
| 17 | FAQ | `jurible/confiance-04-faq` | — |
| 18 | CTA Final | `jurible/commerce-06-cta-final-basique` | — |
| 19 | Footer | `parts/footer` | — |

**Notes contenu** :
- CTA Hero : "S'abonner" / "Voir les formules" → ancre #pricing
- Section 12 : "Sans l'Académie / Avec l'Académie" (spécifique, pas générique)
- Section 14 : Rappel compact des features juste sous le pricing pour rassurer avant le clic

---

### 3. Nos Offres

**URL** : `/nos-offres`
**Template** : `page.html`
**Objectif** : Aider l'utilisateur à choisir la bonne offre

| # | Section | Slug pattern | Responsive |
|---|---------|-------------|------------|
| 1 | Header | `parts/header` | Hamburger |
| 2 | Hero | `jurible/hero-11-simple-about` | — |
| 3 | Pricing comparatif | `jurible/commerce-09-pricing-comparatif` | Cards empilées, Académie first |
| 4 | Pour qui / Aide au choix | `jurible/commerce-04-quelle-offre` | Cards empilées |
| 5 | FAQ | `jurible/confiance-04-faq` | — |
| 6 | Réassurance | `jurible/confiance-02-reassurance-minimal` | — |
| 7 | CTA Final | `jurible/commerce-06-cta-final-basique` | — |
| 8 | Footer | `parts/footer` | — |

**Notes contenu** :
- Hero : "Trouvez la formule pour réussir en droit"
- Pas de témoignages/pain points — page utilitaire, pas de vente

---

### 4. Prépa

**URL** : `/prepa-pass-droit`
**Template** : `page.html`
**Objectif** : Vendre la Prépa PASS Droit (1 650€)

| # | Section | Slug pattern | Responsive |
|---|---------|-------------|------------|
| 1 | Header | `parts/header` | Hamburger |
| 2 | Hero | `jurible/hero-03-conversion-prepa` | Vidéo sous texte, 1 CTA |
| 3 | Pain Points | `jurible/marketing-01-pain-points-4` | 2×2 |
| 4 | Solution | `jurible/marketing-03-solution` | Cards empilées |
| 5 | Features (6) | `jurible/marketing-04-features-6` | 6 → 2×3 → empilées |
| 6 | Programme détaillé | `jurible/contenu-10-programme` | Accordéon |
| 7 | Enseignants (2 cards) | `jurible/equipe-04-enseignants-video` | 2 cards → empilées |
| 8 | Témoignages | `jurible/confiance-05-temoignages` | Carousel swipe |
| 9 | Comparaison dark | `jurible/marketing-12-comparaison-dark` | Empilées |
| 10 | Pricing | `jurible/commerce-11-pricing-prepa` | Card centrée |
| 11 | Réassurance | `jurible/confiance-02-reassurance-minimal` | — |
| 12 | FAQ | `jurible/confiance-04-faq` | — |
| 13 | CTA Final urgence | `jurible/commerce-08-cta-final-urgence` | — |
| 14 | Footer | `parts/footer` | — |

**Notes contenu** :
- CTA Hero : "S'inscrire" / "Voir le programme" → ancre #programme
- Section 9 : Comparaison dark "Sans préparation / Avec la Prépa Jurible"
- Section 13 : CTA urgence — "Places limitées", "Prochaine session : septembre 2026"

---

## PAGES PRODUITS

---

### 5. Fiches Hub

**URL** : `/fiches-de-droit`
**Template** : `page.html`
**Objectif** : Présenter l'offre Fiches PDF et orienter vers les packs/matières

| # | Section | Slug pattern | Responsive |
|---|---------|-------------|------------|
| 1 | Header | `parts/header` | Hamburger |
| 2 | Hero | `jurible/hero-07-archive-fiches` | 1 CTA |
| 3 | Réassurance | `jurible/confiance-01-reassurance-full` | — |
| 4 | Aperçu produit (mockup) | `jurible/contenu-05-texte-image` | Image sous texte |
| 5 | Features | `jurible/marketing-05-features-4` | 2×2 → empilées |
| 6 | Catalogue matières | `jurible/structure-05-catalogue-matieres` | 2 col → 1 col |
| 7 | Témoignages | `jurible/confiance-05-temoignages` | Carousel swipe |
| 8 | FAQ | `jurible/confiance-04-faq` | — |
| 9 | Réassurance | `jurible/confiance-02-reassurance-minimal` | — |
| 10 | Cross-sell Académie | `jurible/commerce-03-cta-cross-sell` | Cards empilées |
| 11 | CTA Final | `jurible/commerce-06-cta-final-basique` | — |
| 12 | Footer | `parts/footer` | — |

---

### 6. Fiches Pack

**URL** : `/fiches-de-droit/pack-l1`, `/pack-l2`, `/pack-l3`, `/pack-capacite` (×4)
**Template** : `page.html`
**Objectif** : Vendre un pack de fiches (135€)

| # | Section | Slug pattern | Responsive |
|---|---------|-------------|------------|
| 1 | Header | `parts/header` | Hamburger |
| 2 | Hero | `jurible/hero-10-produit-support` | Image sous texte |
| 3 | Réassurance | `jurible/confiance-01-reassurance-full` | — |
| 4 | Pain Points | `jurible/marketing-01-pain-points-4` | 2×2 |
| 5 | Solution | `jurible/marketing-03-solution` | Cards empilées |
| 6 | Aperçu produit (mockup) | `jurible/contenu-05-texte-image` | Image sous texte |
| 7 | Features | `jurible/marketing-05-features-4` | 2×2 → empilées |
| 8 | Catalogue matières du pack | `jurible/structure-05-catalogue-matieres` | 2 col → 1 col |
| 9 | Témoignages | `jurible/confiance-05-temoignages` | Carousel swipe |
| 10 | Pricing | `jurible/commerce-12-pricing-fiches` | Card centrée |
| 11 | FAQ | `jurible/confiance-04-faq` | — |
| 12 | Cross-sell Académie | `jurible/commerce-03-cta-cross-sell` | Cards empilées |
| 13 | CTA Final | `jurible/commerce-06-cta-final-basique` | — |
| 14 | Footer | `parts/footer` | — |

---

### 7. Fiches Matière

**URL** : `/fiches-de-droit/{matiere}` (×22)
**Template** : `page.html`
**Objectif** : Vendre une fiche individuelle (19€) — produit phare

| # | Section | Slug pattern | Responsive |
|---|---------|-------------|------------|
| 1 | Header | `parts/header` | Hamburger |
| 2 | Hero | `jurible/hero-10-produit-support` | Image sous texte |
| 3 | Pain Points | `jurible/marketing-01-pain-points-4` | 2×2 |
| 4 | Solution | `jurible/marketing-03-solution` | Cards empilées |
| 5 | Aperçu produit (mockup) | `jurible/contenu-05-texte-image` | Image sous texte |
| 6 | Features | `jurible/marketing-05-features-4` | 2×2 → empilées |
| 7 | Témoignages | `jurible/confiance-05-temoignages` | Carousel swipe |
| 8 | Pricing | `jurible/commerce-12-pricing-fiches` | Card centrée |
| 9 | FAQ | `jurible/confiance-04-faq` | — |
| 10 | Cross-sell | `jurible/commerce-03-cta-cross-sell` | Cards empilées |
| 11 | CTA Final | `jurible/commerce-06-cta-final-basique` | — |
| 12 | Footer | `parts/footer` | — |

**Notes contenu** :
- Cross-sell : pousse vers le Pack (économie) ou l'Académie (accès complet)

---

### 8. Suite IA Hub

**URL** : `/suite-ia`
**Template** : `page.html`
**Objectif** : Présenter les 4 outils IA et vendre des crédits

| # | Section | Slug pattern | Responsive |
|---|---------|-------------|------------|
| 1 | Header | `parts/header` | Hamburger |
| 2 | Hero | `jurible/hero-04-conversion-suite-ia` | 1 CTA |
| 3 | Réassurance | `jurible/confiance-01-reassurance-full` | — |
| 4 | Pain Points | `jurible/marketing-01-pain-points-4` | 2×2 |
| 5 | Solution | `jurible/marketing-03-solution` | Cards empilées |
| 6 | 4 outils (cards crédits) | `jurible/commerce-02-offre-suite-ia` | 2×2 → empilées |
| 7 | Démo outil phare (vidéo) | `jurible/contenu-07-texte-video` | Vidéo au-dessus |
| 8 | Témoignages | `jurible/confiance-05-temoignages` | Carousel swipe |
| 9 | Pricing | `jurible/commerce-10-pricing-suite-ia` | Cards empilées |
| 10 | FAQ | `jurible/confiance-04-faq` | — |
| 11 | CTA Final | `jurible/commerce-06-cta-final-basique` | — |
| 12 | Footer | `parts/footer` | — |

---

### 9. Suite IA Outil

**URL** : `/suite-ia/fiche-arret`, `/dissertation`, `/cas-pratique`, `/commentaire-arret` (×4)
**Template** : `page.html`
**Objectif** : Vendre un outil IA spécifique

| # | Section | Slug pattern | Responsive |
|---|---------|-------------|------------|
| 1 | Header | `parts/header` | Hamburger |
| 2 | Hero | `jurible/hero-10-produit-support` | Image sous texte |
| 3 | Pain Points | `jurible/marketing-01-pain-points-4` | 2×2 |
| 4 | Solution | `jurible/marketing-03-solution` | Cards empilées |
| 5 | Features de l'outil | `jurible/marketing-06-features-detailed` | 2×2 → empilées |
| 6 | Démo vidéo | `jurible/contenu-07-texte-video` | Vidéo au-dessus |
| 7 | Témoignages | `jurible/confiance-05-temoignages` | Carousel swipe |
| 8 | Pricing | `jurible/commerce-10-pricing-suite-ia` | Cards empilées |
| 9 | Cross-sell | `jurible/commerce-03-cta-cross-sell` | Cards empilées |
| 10 | FAQ | `jurible/confiance-04-faq` | — |
| 11 | CTA Final | `jurible/commerce-06-cta-final-basique` | — |
| 12 | Footer | `parts/footer` | — |

---

### 10. Manuel Méthodologie

**URL** : `/manuel-methodologie`
**Template** : `page.html`
**Objectif** : Présenter et vendre le Manuel (page SureCart pour le paiement)

| # | Section | Slug pattern | Responsive |
|---|---------|-------------|------------|
| 1 | Header | `parts/header` | Hamburger |
| 2 | Hero | `jurible/hero-10-produit-support` | Image sous texte |
| 3 | Pain Points | `jurible/marketing-01-pain-points-4` | 2×2 |
| 4 | Solution | `jurible/marketing-03-solution` | Cards empilées |
| 5 | Aperçu (mockup manuel) | `jurible/contenu-05-texte-image` | Image sous texte |
| 6 | Sommaire / Contenu | `jurible/contenu-11-sommaire` | — |
| 7 | Features | `jurible/marketing-05-features-4` | 2×2 → empilées |
| 8 | Témoignages | `jurible/confiance-05-temoignages` | Carousel swipe |
| 9 | Catalogue cours méthodologie | `jurible/contenu-09-grille-matieres` | 2 col → 1 col |
| 10 | CTA Final | `jurible/commerce-06-cta-final-basique` | — |
| 11 | Footer | `parts/footer` | — |

**Notes** : Le bouton d'achat/pricing est géré par SureCart (intégré dans le hero ou en sticky). Pas de pattern pricing dans ce template.

---

## PAGES COURS

---

### 11. Cours Matière

**URL** : `/cours/{matiere}` (×22)
**Template** : `page.html`
**Objectif** : Présenter un cours et convertir vers l'Académie

| # | Section | Slug pattern | Responsive |
|---|---------|-------------|------------|
| 1 | Header | `parts/header` | Hamburger |
| 2 | Hero matière | `jurible/hero-09-produit-cours` | Image sous texte |
| 3 | Réassurance | `jurible/confiance-01-reassurance-full` | — |
| 4 | Pain Points | `jurible/marketing-01-pain-points-4` | 2×2 |
| 5 | Solution | `jurible/marketing-03-solution` | Cards empilées |
| 6 | Aperçu contenu (onglets) | `jurible/contenu-14-methode-onglets` | Onglets scroll horizontal |
| 7 | Témoignages | `jurible/confiance-05-temoignages` | Carousel swipe |
| 8 | Stats + Sommaire | `jurible/contenu-12-stats-sommaire` | Stats 2×2, sommaire accordéon |
| 9 | Programme | `jurible/contenu-10-programme` | Accordéon |
| 10 | Enseignant (1 card) | `jurible/equipe-02-enseignant-matiere` | Card centrée |
| 11 | Ressources liées | `jurible/commerce-05-produits-complementaires` | Cards empilées |
| 12 | Réassurance | `jurible/confiance-02-reassurance-minimal` | — |
| 13 | CTA Inscription | `jurible/commerce-06-cta-final-basique` | — |
| 14 | Footer | `parts/footer` | — |

---

### 12. Cours Méthodologie / Méthode

**URL** : `/cours/{slug}` (×8 : fiche d'arrêt, dissertation, cas pratique, commentaire d'arrêt, commentaire de texte, mémoriser, code civil, réussir ses études)
**Template** : `page.html`
**Objectif** : Présenter une formation méthodologique et convertir vers l'Académie

| # | Section | Slug pattern | Responsive |
|---|---------|-------------|------------|
| 1 | Header | `parts/header` | Hamburger |
| 2 | Hero | `jurible/hero-09-produit-cours` | Image sous texte |
| 3 | Réassurance | `jurible/confiance-01-reassurance-full` | — |
| 4 | Pain Points | `jurible/marketing-01-pain-points-4` | 2×2 |
| 5 | Solution | `jurible/marketing-03-solution` | Cards empilées |
| 6 | Programme (modules) | `jurible/contenu-10-programme` | Accordéon |
| 7 | Extrait vidéo gratuit | `jurible/contenu-07-texte-video` | Vidéo au-dessus |
| 8 | Témoignages | `jurible/confiance-05-temoignages` | Carousel swipe |
| 9 | Comparaison avant/après | `jurible/marketing-10-comparaison-avant-apres` | Empilées |
| 10 | CTA cross-sell Académie | `jurible/commerce-03-cta-cross-sell` | — |
| 11 | Réassurance | `jurible/confiance-02-reassurance-minimal` | — |
| 12 | CTA Final | `jurible/commerce-06-cta-final-basique` | — |
| 13 | Footer | `parts/footer` | — |

**Différences vs Cours Matière** :
- Pas de bloc méthode-onglets (ces cours SONT la méthode)
- Pas d'enseignant unique
- Pas de stats-sommaire
- Programme remonté + extrait vidéo gratuit
- Comparaison avant/après ("Sans méthode / Avec la méthode Jurible")
- Cross-sell Académie au lieu de ressources liées

---

### 13. Cours Niveau

**URL** : `/cours/l1`, `/l2`, `/l3`, `/capacite` (×4)
**Template** : `page.html`
**Objectif** : Hub par niveau, orienter vers les cours et convertir vers l'Académie

| # | Section | Slug pattern | Responsive |
|---|---------|-------------|------------|
| 1 | Header | `parts/header` | Hamburger |
| 2 | Hero niveau | `jurible/hero-06-archive-cours` | — |
| 3 | Réassurance | `jurible/confiance-01-reassurance-full` | — |
| 4 | Pain Points | `jurible/marketing-01-pain-points-4` | 2×2 |
| 5 | Features (6) | `jurible/marketing-04-features-6` | 6 → 2×3 → empilées |
| 6 | Stats niveau | `jurible/contenu-13-stats` | 2×2 |
| 7 | Catalogue matières | `jurible/structure-05-catalogue-matieres` | 2 col → 1 col |
| 8 | Témoignages | `jurible/confiance-05-temoignages` | Carousel swipe |
| 9 | Réassurance | `jurible/confiance-02-reassurance-minimal` | — |
| 10 | CTA Inscription | `jurible/commerce-06-cta-final-basique` | — |
| 11 | Footer | `parts/footer` | — |

---

## BLOG

---

### 14. Blog Archive

**URL** : `/blog`
**Template** : `archive.html` (Query Loop automatique)
**Objectif** : Hub SEO — attirer du trafic et diriger vers les articles

| # | Section | Slug pattern | Responsive |
|---|---------|-------------|------------|
| 1 | Header | `parts/header` | Hamburger |
| 2 | Hero blog | `jurible/hero-05-archive-blog` | — |
| 3 | Article featured | `jurible/structure-02-article-featured` | Image au-dessus |
| 4 | Articles grille | `jurible/structure-03-articles-grid` | 3 col → 1 col |
| 5 | Texte SEO | `jurible/contenu-05-texte-image` | Image sous texte |
| 6 | Cross-sell Académie | `jurible/commerce-03-cta-cross-sell` | — |
| 7 | CTA Final | `jurible/commerce-06-cta-final-basique` | — |
| 8 | Footer | `parts/footer` | — |

**Note** : Les sections 3-4 sont gérées par la Query Loop dans le template `archive.html`. Le texte SEO et le cross-sell sont ajoutés après la boucle.

---

### 15. Blog Catégorie

**URL** : `/blog/{categorie}` (×N)
**Template** : `archive.html` (Query Loop filtrée automatiquement)
**Objectif** : SEO par catégorie — certaines très bien référencées (ex: "méthodologie juridique")

| # | Section | Slug pattern | Responsive |
|---|---------|-------------|------------|
| 1 | Header | `parts/header` | Hamburger |
| 2 | Hero catégorie | `jurible/hero-05-archive-blog` | — |
| 3 | Articles grille | `jurible/structure-03-articles-grid` | 3 col → 1 col |
| 4 | Texte SEO | `jurible/contenu-05-texte-image` | Image sous texte |
| 5 | Cross-sell Académie | `jurible/commerce-03-cta-cross-sell` | — |
| 6 | CTA Final | `jurible/commerce-06-cta-final-basique` | — |
| 7 | Footer | `parts/footer` | — |

**Notes contenu** :
- Texte SEO (#4) : contenu unique et long par catégorie (ex: 300-500 mots pour "méthodologie juridique"). Positionnement après la grille pour ne pas bloquer l'accès aux articles.

---

### 16. Blog Article

**URL** : `/blog/{slug}`
**Template** : `single.html` (layout 2 colonnes : contenu 880px + sidebar 300px)
**Objectif** : Contenu SEO + conversion douce

| # | Section | Slug pattern / bloc | Responsive |
|---|---------|-------------|------------|
| 1 | Header | `parts/header` | Hamburger |
| 2 | Meta + Titre + Auteur + Image | Géré par template `single.html` | — |
| — | **COLONNE GAUCHE (880px)** | | |
| 3 | Sommaire (TOC) | Bloc `jurible/sommaire` | Accordéon mobile |
| 4 | Contenu article | `core/paragraph`, `core/heading` | — |
| — | *Blocs inline dans le contenu :* | | |
| | — Information | Bloc `jurible/infobox` (variante info) | — |
| | — Attention | Bloc `jurible/alert` | — |
| | — À retenir | Bloc `jurible/infobox` (variante retenir) | — |
| | — Citation | Bloc `jurible/citation` | — |
| | — Définition | Bloc `jurible/infobox` (variante définition) | — |
| | — CTA inline | Bloc `jurible/cta-banner` | — |
| — | **COLONNE DROITE — SIDEBAR STICKY (300px)** | | Passe sous le contenu en mobile |
| 5 | Newsletter | Bloc `jurible/newsletter` | — |
| 6 | CTA Académie compact | `jurible/commerce-03-cta-cross-sell` | — |
| — | **PLEINE LARGEUR (après les 2 colonnes)** | | |
| 7 | Tags | Géré par template `single.html` | — |
| 8 | Bio auteur | `jurible/equipe-05-bio-auteur` | Card centrée |
| 9 | Articles liés | `jurible/structure-04-articles-lies` | 3 col → 1 col |
| 10 | Footer | `parts/footer` | — |

**Note importante** : Le template `single.html` doit être mis à jour pour supporter le layout 2 colonnes (voir brief 02 — mise à jour nécessaire). Le rédacteur insère les blocs inline (infobox, alert, citation, cta-banner) directement dans le contenu de l'article.

**Bloc `jurible/newsletter`** : Ce bloc custom existe dans `/plugins/jurible-blocks-react/src/` mais doit être vérifié qu'il fonctionne bien en sidebar (largeur 300px). Si nécessaire, le dev adapte le bloc pour qu'il soit responsive dans un conteneur étroit.

---

## PAGES INSTITUTIONNELLES

---

### 17. Enseignants

**URL** : `/enseignants`
**Template** : `page.html`
**Objectif** : Crédibilité — montrer QUI enseigne

| # | Section | Slug pattern | Responsive |
|---|---------|-------------|------------|
| 1 | Header | `parts/header` | Hamburger |
| 2 | Hero | `jurible/hero-11-simple-about` | — |
| 3 | Texte présentation | `jurible/contenu-05-texte-image` | Image sous texte |
| 4 | Grille enseignants | `jurible/equipe-01-enseignants-grille` | 3 col → 2 col → 1 col |
| 5 | Citation fondateur | `jurible/equipe-06-citation` | Image au-dessus |
| 6 | CTA Final | `jurible/commerce-06-cta-final-basique` | — |
| 7 | Footer | `parts/footer` | — |

---

### 18. Notre Projet

**URL** : `/notre-projet`
**Template** : `page.html`
**Objectif** : Raconter l'histoire de Jurible — crédibilité et confiance

| # | Section | Slug pattern | Responsive |
|---|---------|-------------|------------|
| 1 | Header | `parts/header` | Hamburger |
| 2 | Hero | `jurible/hero-11-simple-about` | — |
| 3 | Texte histoire / mission | `jurible/contenu-05-texte-image` | Image sous texte |
| 4 | Texte vision | `jurible/contenu-06-image-texte` | Image sous texte |
| 5 | Nos valeurs (cards) | `jurible/marketing-05-features-4` | 2×2 → empilées |
| 6 | Stats clés | `jurible/contenu-13-stats` | 2×2 |
| 7 | Enseignants teaser | `jurible/equipe-03-enseignants-teaser` | Cards empilées |
| 8 | Citation fondateur | `jurible/equipe-06-citation` | Image au-dessus |
| 9 | Témoignages | `jurible/confiance-05-temoignages` | Carousel swipe |
| 10 | CTA Final | `jurible/commerce-06-cta-final-basique` | — |
| 11 | Footer | `parts/footer` | — |

**Notes contenu** :
- Sections 3-4 : Alterner texte-image / image-texte pour le rythme visuel
- Les blocs paragraphes (contenu/01 à 04) peuvent être utilisés dans l'éditeur pour enrichir les sections texte
- Section 7 : Teaser avec CTA "Découvrir l'équipe" → `/enseignants`

---

### 19. Contact

**URL** : `/contact`
**Template** : `page.html`
**Objectif** : Permettre à l'utilisateur de nous contacter

| # | Section | Slug pattern | Responsive |
|---|---------|-------------|------------|
| 1 | Header | `parts/header` | Hamburger |
| 2 | Hero | `jurible/hero-12-simple-contact` | — |
| 3 | Formulaire contact | `jurible/structure-01-formulaire-contact` | Full-width |
| 4 | Réassurance | `jurible/confiance-02-reassurance-minimal` | — |
| 5 | FAQ | `jurible/confiance-04-faq` | — |
| 6 | Footer | `parts/footer` | — |

---

### 20. Avis

**URL** : `/avis`
**Template** : `page.html`
**Objectif** : Preuve sociale — afficher un maximum de témoignages

| # | Section | Slug pattern | Responsive |
|---|---------|-------------|------------|
| 1 | Header | `parts/header` | Hamburger |
| 2 | Hero | `jurible/hero-11-simple-about` | — |
| 3 | Stats clés | `jurible/contenu-13-stats` | 2×2 |
| 4 | Témoignages hero (meilleurs) | `jurible/confiance-05-temoignages` | Carousel swipe |
| 5 | Grille tous les avis | Grille de blocs `jurible/card-testimonial` | 3 col → 2 col → 1 col |
| 6 | Logos partenaires | `jurible/confiance-03-logos-partenaires` | Scroll horizontal |
| 7 | CTA Final | `jurible/commerce-06-cta-final-basique` | — |
| 8 | Footer | `parts/footer` | — |

**Notes** :
- Section 4 : Pattern témoignages classique (sélection des meilleurs, variante Hero)
- Section 5 : Grille libre de blocs `jurible/card-testimonial` (variante Standard) — le dev peut en mettre autant que nécessaire. Pas de limite.

---

### 21. Guide Gratuit

**URL** : `/guide-gratuit`
**Template** : `page.html`
**Objectif** : Capture de leads — téléchargement gratuit en échange d'un email

| # | Section | Slug pattern | Responsive |
|---|---------|-------------|------------|
| 1 | Header | `parts/header` | Hamburger |
| 2 | Hero | `jurible/hero-11-simple-about` | — |
| 3 | Aperçu guide (mockup) | `jurible/contenu-05-texte-image` | Image sous texte |
| 4 | Features (contenu du guide) | `jurible/marketing-05-features-4` | 2×2 → empilées |
| 5 | Témoignages | `jurible/confiance-05-temoignages` | Carousel swipe |
| 6 | Formulaire téléchargement | Bloc `jurible/newsletter` | Full-width |
| 7 | CTA Final | `jurible/commerce-06-cta-final-basique` | — |
| 8 | Footer | `parts/footer` | — |

**Notes** :
- Section 6 : Le bloc `jurible/newsletter` est utilisé comme formulaire de téléchargement (email + année d'études). Le dev adapte le bloc pour accepter un champ supplémentaire si nécessaire.

---

## PAGES SIMPLES

---

### 22. Pages légales

**URLs** : `/cgv`, `/mentions-legales`, `/politique-confidentialite` (×3)
**Template** : `page-texte.html` (contenu contraint à 880px)
**Objectif** : Conformité légale

Pas d'assemblage de patterns — le rédacteur écrit directement dans l'éditeur WordPress avec les blocs natifs et les variantes de paragraphes :

| Bloc | Usage |
|---|---|
| `core/heading` (H2, H3) | Titres de sections (Article 1, Article 2...) |
| `jurible/contenu-01-paragraphe-standard` | Texte courant |
| `jurible/contenu-02-paragraphe-card` | Encarts importants |
| `jurible/contenu-03-paragraphe-gris` | Sections de contexte |
| `jurible/contenu-04-paragraphe-minimal` | Texte léger |
| `core/list` | Listes d'items |

Le template `page-texte.html` gère automatiquement le header, footer et la contrainte à 880px.

---

### 23. Page 404

**URL** : Toute URL introuvable
**Template** : `404.html`
**Objectif** : Récupérer l'utilisateur perdu

Géré automatiquement par le template `404.html` qui appelle :

| # | Section | Slug pattern |
|---|---------|-------------|
| 1 | Header | `parts/header` |
| 2 | Page 404 | `jurible/structure-06-page-404` |
| 3 | Footer | `parts/footer` |

---

## ANNEXE — INVENTAIRE COMPLET DES SLUGS UTILISÉS

### Patterns (56 au total, 55 utilisés, 1 en réserve)

| Catégorie | Utilisés | En réserve |
|---|---|---|
| hero/ | 11 sur 15 | hero/08 (search), hero/13 (faq), hero/14 (legal), hero/15 (article) — gérés dans les templates |
| contenu/ | 12 sur 14 | — |
| commerce/ | 11 sur 12 | — |
| confiance/ | 5 sur 5 | — |
| marketing/ | 11 sur 12 | marketing/11-comparaison-multi (réserve) |
| equipe/ | 6 sur 6 | — |
| structure/ | 6 sur 6 | — |

### Blocs custom utilisés (hors patterns)

| Bloc | Pages |
|---|---|
| `jurible/card-testimonial` | Avis (grille tous les avis) |
| `jurible/sommaire` | Blog Article (TOC) |
| `jurible/infobox` | Blog Article (info, à retenir, définition) |
| `jurible/alert` | Blog Article (attention) |
| `jurible/citation` | Blog Article (citation) |
| `jurible/cta-banner` | Blog Article (CTA inline) |
| `jurible/newsletter` | Blog Article (sidebar), Guide Gratuit (formulaire) |

### Template parts

| Part | Pages |
|---|---|
| `parts/header` | Toutes les pages |
| `parts/footer` | Toutes les pages |
| `parts/header-minimal` | Pages SureCart/checkout (brief à venir) |
| `parts/footer-minimal` | Pages SureCart/checkout (brief à venir) |

---

## ⚠️ ACTIONS REQUISES AVANT CONSTRUCTION

1. **Brief 01 terminé** : Patterns renommés + 13 nouveaux créés
2. **Brief 02 terminé** : 8 templates créés (dont `single.html` mis à jour en 2 colonnes)
3. **Vérifier le bloc `jurible/newsletter`** : Doit fonctionner en sidebar 300px et accepter un champ "année d'études" en plus de l'email
4. **Pages SureCart** : Brief séparé à venir pour le checkout, tunnels Académie/Prépa, et pages e-commerce
