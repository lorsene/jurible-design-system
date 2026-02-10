# 📋 BRIEF DEV — Templates WordPress FSE

> **Pour** : Dev WordPress FSE
> **De** : Laura
> **Date** : Février 2026
> **Objectif** : Créer les 8 templates dans `/themes/jurible/templates/`
> **Prérequis** : Les template parts `parts/header.html` et `parts/footer.html` doivent exister

---

## CONTEXTE — C'EST QUOI UN TEMPLATE ?

Un template = un fichier `.html` dans `/templates/` qui définit la **structure technique** d'un type de page. Il assemble :
- Un **header** (template part)
- Une **zone de contenu** (avec un layout spécifique)
- Un **footer** (template part)

Le contenu réel (quels patterns, dans quel ordre) est géré dans l'éditeur WordPress, PAS dans le template. Le template définit juste le cadre.

### Rappel des largeurs theme.json

| Variable | Valeur | Usage |
|---|---|---|
| `contentSize` | 880px | Texte courant (paragraphes, titres) |
| `wideSize` | 1140-1200px | Mises en page (colonnes, grilles) |
| Full width | 100% | Fonds de section (alignement `full`) |

Les blocs choisissent leur largeur via les alignements WordPress :
- Pas d'alignement → `contentSize` (880px)
- `alignwide` → `wideSize` (1140px)
- `alignfull` → 100% de la fenêtre

---

## LES 8 TEMPLATES

### Vue d'ensemble

| # | Fichier | Layout | Rôle | Pages concernées |
|---|---|---|---|---|
| 1 | `index.html` | default | Fallback obligatoire | Toute page sans template |
| 2 | `front-page.html` | default | Homepage | Page d'accueil uniquement |
| 3 | `page.html` | default | Pages full-width | Académie, Prépa, Nos Offres, Contact, Enseignants... |
| 4 | `page-texte.html` | constrained 880px | Pages texte pur | CGV, Mentions légales, Confidentialité |
| 5 | `single.html` | constrained 880px | Article de blog | Tous les articles |
| 6 | `archive.html` | default | Archive blog | Blog, catégories, tags |
| 7 | `404.html` | default | Page erreur | URLs introuvables |
| 8 | `search.html` | default | Résultats recherche | Page de recherche |

### Pourquoi 2 templates de pages ?

**`page.html` (layout: default)** — Les patterns gèrent eux-mêmes leur largeur. Un hero va en `full`, une grille pricing en `wide`, un texte en `contentSize`. C'est le template pour toutes les pages de conversion, produits et institutionnelles.

**`page-texte.html` (layout: constrained 880px)** — Force TOUT le contenu dans un conteneur de 880px. Impossible de sortir en full-width même par accident. Pour les pages de texte juridique uniquement (CGV, Mentions, Confidentialité).

---

## CODE DE CHAQUE TEMPLATE

### 1. `index.html` — Fallback

Template par défaut obligatoire. Affiche une grille d'articles.

```html
<!-- wp:template-part {"slug":"header","area":"header"} /-->

<!-- wp:group {"tagName":"main","layout":{"type":"constrained"}} -->
<main class="wp-block-group">

    <!-- wp:query {"queryId":1,"query":{"perPage":10,"pages":0,"offset":0,"postType":"post","order":"desc","orderBy":"date","inherit":true}} -->
    <div class="wp-block-query">

        <!-- wp:post-template {"layout":{"type":"grid","columnCount":3}} -->

            <!-- wp:group {"style":{"spacing":{"padding":{"top":"var:preset|spacing|s","bottom":"var:preset|spacing|s"}}},"layout":{"type":"constrained"}} -->
            <div class="wp-block-group">
                <!-- wp:post-featured-image {"isLink":true,"style":{"border":{"radius":"8px"}}} /-->
                <!-- wp:post-title {"isLink":true,"level":3} /-->
                <!-- wp:post-excerpt {"moreText":"Lire la suite →"} /-->
                <!-- wp:post-date {"format":"j F Y"} /-->
            </div>
            <!-- /wp:group -->

        <!-- /wp:post-template -->

        <!-- wp:query-pagination {"layout":{"type":"flex","justifyContent":"center"}} -->
            <!-- wp:query-pagination-previous /-->
            <!-- wp:query-pagination-numbers /-->
            <!-- wp:query-pagination-next /-->
        <!-- /wp:query-pagination -->

    </div>
    <!-- /wp:query -->

</main>
<!-- /wp:group -->

<!-- wp:template-part {"slug":"footer","area":"footer"} /-->
```

---

### 2. `front-page.html` — Homepage

Page d'accueil. Le contenu est géré dans l'éditeur de la page définie dans Réglages > Lecture > Page d'accueil statique.

```html
<!-- wp:template-part {"slug":"header","area":"header"} /-->

<!-- wp:group {"tagName":"main","layout":{"type":"default"}} -->
<main class="wp-block-group">

    <!-- wp:post-content {"layout":{"type":"default"}} /-->

</main>
<!-- /wp:group -->

<!-- wp:template-part {"slug":"footer","area":"footer"} /-->
```

> Le `post-content` en `layout: default` laisse chaque bloc/pattern choisir sa propre largeur (full, wide, content). C'est le brief 03 (Construction de Pages) qui détaillera quels patterns utiliser.

---

### 3. `page.html` — Pages full-width

Template pour toutes les pages sauf les pages texte. Structurellement identique à `front-page.html` — WordPress les distingue automatiquement (front-page = page d'accueil, page = les autres).

```html
<!-- wp:template-part {"slug":"header","area":"header"} /-->

<!-- wp:group {"tagName":"main","layout":{"type":"default"}} -->
<main class="wp-block-group">

    <!-- wp:post-content {"layout":{"type":"default"}} /-->

</main>
<!-- /wp:group -->

<!-- wp:template-part {"slug":"footer","area":"footer"} /-->
```

> **Quand l'utiliser** : Académie, Prépa, Fiches Hub, Suite IA Hub, Nos Offres, Contact, Enseignants, Notre Projet, Avis, Guide Gratuit, Cours Matière, Cours Niveau... Toutes les pages qui ont des sections full-width (hero, bandes colorées, etc.).

---

### 4. `page-texte.html` — Pages texte pur

Template avec contenu contraint à 880px. Pour les pages de texte juridique.

```html
<!-- wp:template-part {"slug":"header","area":"header"} /-->

<!-- wp:group {"tagName":"main","style":{"spacing":{"padding":{"top":"var:preset|spacing|xl","bottom":"var:preset|spacing|xl"}}},"layout":{"type":"constrained","contentSize":"880px"}} -->
<main class="wp-block-group">

    <!-- wp:post-title {"level":1} /-->

    <!-- wp:group {"style":{"spacing":{"blockGap":"var:preset|spacing|xs","margin":{"bottom":"var:preset|spacing|l"}}},"layout":{"type":"flex","flexWrap":"nowrap"}} -->
    <div class="wp-block-group">
        <!-- wp:paragraph {"style":{"typography":{"fontSize":"14px"},"color":{"text":"var:preset|color|text-muted"}}} -->
        <p>Dernière mise à jour : </p>
        <!-- /wp:paragraph -->
    </div>
    <!-- /wp:group -->

    <!-- wp:post-content {"layout":{"type":"constrained","contentSize":"880px"}} /-->

</main>
<!-- /wp:group -->

<!-- wp:template-part {"slug":"footer","area":"footer"} /-->
```

> **Quand l'utiliser** : CGV, Mentions légales, Politique de confidentialité. Le rédacteur sélectionne ce template dans l'éditeur WordPress (panneau latéral > Modèle > Page texte).

---

### 5. `single.html` — Article de blog

Template pour un article individuel. Contenu à 880px avec métadonnées (auteur, date, catégorie) et patterns en bas (bio auteur + articles liés).

```html
<!-- wp:template-part {"slug":"header","area":"header"} /-->

<!-- wp:group {"tagName":"main","layout":{"type":"default"}} -->
<main class="wp-block-group">

    <!-- wp:group {"layout":{"type":"constrained","contentSize":"880px"},"style":{"spacing":{"padding":{"top":"var:preset|spacing|xl","bottom":"var:preset|spacing|l"}}}} -->
    <div class="wp-block-group">

        <!-- wp:group {"style":{"spacing":{"blockGap":"var:preset|spacing|xs"}},"layout":{"type":"flex","flexWrap":"nowrap"}} -->
        <div class="wp-block-group">
            <!-- wp:post-terms {"term":"category","style":{"typography":{"fontSize":"13px","fontStyle":"normal","fontWeight":"500"}}} /-->
            <!-- wp:paragraph {"style":{"typography":{"fontSize":"13px"},"color":{"text":"var:preset|color|text-muted"}}} -->
            <p>·</p>
            <!-- /wp:paragraph -->
            <!-- wp:post-date {"format":"j F Y","style":{"typography":{"fontSize":"13px"},"color":{"text":"var:preset|color|text-muted"}}} /-->
        </div>
        <!-- /wp:group -->

        <!-- wp:post-title {"level":1,"style":{"spacing":{"margin":{"top":"var:preset|spacing|s","bottom":"var:preset|spacing|m"}}}} /-->

        <!-- wp:group {"layout":{"type":"flex","flexWrap":"nowrap","verticalAlignment":"center"},"style":{"spacing":{"blockGap":"var:preset|spacing|xs","margin":{"bottom":"var:preset|spacing|l"}}}} -->
        <div class="wp-block-group">
            <!-- wp:avatar {"size":40,"isLink":true,"style":{"border":{"radius":"50px"}}} /-->
            <!-- wp:post-author-name {"isLink":true,"style":{"typography":{"fontSize":"14px"}}} /-->
        </div>
        <!-- /wp:group -->

        <!-- wp:post-featured-image {"style":{"border":{"radius":"12px"},"spacing":{"margin":{"bottom":"var:preset|spacing|l"}}}} /-->

        <!-- wp:post-content {"layout":{"type":"constrained","contentSize":"880px"}} /-->

        <!-- wp:group {"style":{"spacing":{"padding":{"top":"var:preset|spacing|l"}}},"layout":{"type":"flex","flexWrap":"wrap"}} -->
        <div class="wp-block-group">
            <!-- wp:post-terms {"term":"post_tag","style":{"typography":{"fontSize":"13px"}}} /-->
        </div>
        <!-- /wp:group -->

    </div>
    <!-- /wp:group -->

    <!-- wp:separator {"style":{"spacing":{"margin":{"top":"var:preset|spacing|l","bottom":"var:preset|spacing|l"}}},"className":"is-style-default"} -->
    <hr class="wp-block-separator has-alpha-channel-opacity is-style-default"/>
    <!-- /wp:separator -->

    <!-- wp:pattern {"slug":"jurible/equipe-05-bio-auteur"} /-->

    <!-- wp:pattern {"slug":"jurible/structure-04-articles-lies"} /-->

</main>
<!-- /wp:group -->

<!-- wp:template-part {"slug":"footer","area":"footer"} /-->
```

> **Patterns intégrés au template** :
> - [`equipe/05-bio-auteur`](../assets/patterns/equipe/05-bio-auteur.html) — Card bio de l'auteur (existant, renommé depuis C04)
> - [`structure/04-articles-lies`](../assets/patterns/structure/04-articles-lies.html) — 3 articles recommandés

---

### 6. `archive.html` — Archive blog

Template pour la page blog principale, les catégories et les tags. Query Loop en grille 3 colonnes avec pagination.

```html
<!-- wp:template-part {"slug":"header","area":"header"} /-->

<!-- wp:group {"tagName":"main","layout":{"type":"default"}} -->
<main class="wp-block-group">

    <!-- wp:pattern {"slug":"jurible/hero-05-archive-blog"} /-->

    <!-- wp:group {"layout":{"type":"constrained"},"style":{"spacing":{"padding":{"top":"var:preset|spacing|xl","bottom":"var:preset|spacing|xl"}}}} -->
    <div class="wp-block-group">

        <!-- wp:query {"queryId":1,"query":{"perPage":12,"pages":0,"offset":0,"postType":"post","order":"desc","orderBy":"date","inherit":true}} -->
        <div class="wp-block-query">

            <!-- wp:post-template {"layout":{"type":"grid","columnCount":3}} -->

                <!-- wp:group {"style":{"border":{"radius":"12px","width":"1px","color":"var:preset|color|border"},"spacing":{"padding":{"top":"0","bottom":"var:preset|spacing|s","left":"0","right":"0"}}},"backgroundColor":"white","layout":{"type":"constrained"}} -->
                <div class="wp-block-group">
                    <!-- wp:post-featured-image {"isLink":true,"style":{"border":{"radius":"12px 12px 0 0"}}} /-->
                    <!-- wp:group {"style":{"spacing":{"padding":{"left":"var:preset|spacing|s","right":"var:preset|spacing|s","top":"var:preset|spacing|s"},"blockGap":"var:preset|spacing|xs"}},"layout":{"type":"constrained"}} -->
                    <div class="wp-block-group">
                        <!-- wp:post-terms {"term":"category","style":{"typography":{"fontSize":"12px","fontWeight":"500"}}} /-->
                        <!-- wp:post-title {"isLink":true,"level":3,"style":{"typography":{"fontSize":"18px"}}} /-->
                        <!-- wp:post-excerpt {"excerptLength":20,"moreText":"","style":{"typography":{"fontSize":"14px"},"color":{"text":"var:preset|color|text-gray"}}} /-->
                        <!-- wp:post-date {"format":"j F Y","style":{"typography":{"fontSize":"12px"},"color":{"text":"var:preset|color|text-muted"}}} /-->
                    </div>
                    <!-- /wp:group -->
                </div>
                <!-- /wp:group -->

            <!-- /wp:post-template -->

            <!-- wp:query-no-results -->
                <!-- wp:paragraph {"align":"center","style":{"spacing":{"padding":{"top":"var:preset|spacing|xl","bottom":"var:preset|spacing|xl"}}}} -->
                <p class="has-text-align-center">Aucun article trouvé.</p>
                <!-- /wp:paragraph -->
            <!-- /wp:query-no-results -->

            <!-- wp:query-pagination {"layout":{"type":"flex","justifyContent":"center"},"style":{"spacing":{"margin":{"top":"var:preset|spacing|xl"}}}} -->
                <!-- wp:query-pagination-previous {"label":"← Précédent"} /-->
                <!-- wp:query-pagination-numbers /-->
                <!-- wp:query-pagination-next {"label":"Suivant →"} /-->
            <!-- /wp:query-pagination -->

        </div>
        <!-- /wp:query -->

    </div>
    <!-- /wp:group -->

</main>
<!-- /wp:group -->

<!-- wp:template-part {"slug":"footer","area":"footer"} /-->
```

> **Pattern intégré** : [`hero/05-archive-blog`](../assets/patterns/) — Hero archive avec titre "Blog" et barre de recherche (existant, renommé depuis H02).
> Le `"inherit":true` fait que WordPress filtre automatiquement par catégorie/tag sur les pages d'archive correspondantes.

---

### 7. `404.html` — Page erreur

```html
<!-- wp:template-part {"slug":"header","area":"header"} /-->

<!-- wp:group {"tagName":"main","layout":{"type":"default"}} -->
<main class="wp-block-group">

    <!-- wp:pattern {"slug":"jurible/structure-06-page-404"} /-->

</main>
<!-- /wp:group -->

<!-- wp:template-part {"slug":"footer","area":"footer"} /-->
```

> **Pattern intégré** : [`structure/06-page-404`](../assets/patterns/structure/06-page-404.html) — Page 404 avec gradient, message et liens suggérés.

---

### 8. `search.html` — Résultats de recherche

```html
<!-- wp:template-part {"slug":"header","area":"header"} /-->

<!-- wp:group {"tagName":"main","layout":{"type":"default"}} -->
<main class="wp-block-group">

    <!-- wp:group {"style":{"spacing":{"padding":{"top":"var:preset|spacing|xl","bottom":"var:preset|spacing|l"}}},"layout":{"type":"constrained"}} -->
    <div class="wp-block-group">
        <!-- wp:heading {"level":1} -->
        <h1>Résultats pour «&nbsp;<span id="search-query"></span>&nbsp;»</h1>
        <!-- /wp:heading -->
        <!-- wp:search {"label":"","placeholder":"Rechercher...","buttonText":"Rechercher","buttonPosition":"button-inside","buttonUseIcon":true} /-->
    </div>
    <!-- /wp:group -->

    <!-- wp:group {"layout":{"type":"constrained"},"style":{"spacing":{"padding":{"bottom":"var:preset|spacing|xl"}}}} -->
    <div class="wp-block-group">

        <!-- wp:query {"queryId":1,"query":{"perPage":10,"pages":0,"offset":0,"postType":"post","order":"desc","orderBy":"relevance","inherit":true}} -->
        <div class="wp-block-query">

            <!-- wp:post-template -->

                <!-- wp:group {"style":{"spacing":{"padding":{"top":"var:preset|spacing|s","bottom":"var:preset|spacing|s"},"blockGap":"var:preset|spacing|xs"},"border":{"bottom":{"color":"var:preset|color|border","width":"1px"}}},"layout":{"type":"constrained"}} -->
                <div class="wp-block-group">
                    <!-- wp:post-title {"isLink":true,"level":3,"style":{"typography":{"fontSize":"20px"}}} /-->
                    <!-- wp:post-excerpt {"excerptLength":30,"style":{"typography":{"fontSize":"14px"},"color":{"text":"var:preset|color|text-gray"}}} /-->
                    <!-- wp:post-date {"format":"j F Y","style":{"typography":{"fontSize":"13px"},"color":{"text":"var:preset|color|text-muted"}}} /-->
                </div>
                <!-- /wp:group -->

            <!-- /wp:post-template -->

            <!-- wp:query-no-results -->
                <!-- wp:group {"style":{"spacing":{"padding":{"top":"var:preset|spacing|xl","bottom":"var:preset|spacing|xl"}}},"layout":{"type":"constrained"}} -->
                <div class="wp-block-group">
                    <!-- wp:paragraph {"align":"center","style":{"typography":{"fontSize":"18px"}}} -->
                    <p class="has-text-align-center">Aucun résultat trouvé. Essayez avec d'autres mots-clés.</p>
                    <!-- /wp:paragraph -->
                    <!-- wp:buttons {"layout":{"type":"flex","justifyContent":"center"},"style":{"spacing":{"margin":{"top":"var:preset|spacing|m"}}}} -->
                    <div class="wp-block-buttons">
                        <!-- wp:button {"className":"is-style-outline"} -->
                        <div class="wp-block-button is-style-outline"><a class="wp-block-button__link wp-element-button" href="/">Retour à l'accueil</a></div>
                        <!-- /wp:button -->
                        <!-- wp:button -->
                        <div class="wp-block-button"><a class="wp-block-button__link wp-element-button" href="/cours">Voir nos cours</a></div>
                        <!-- /wp:button -->
                    </div>
                    <!-- /wp:buttons -->
                </div>
                <!-- /wp:group -->
            <!-- /wp:query-no-results -->

            <!-- wp:query-pagination {"layout":{"type":"flex","justifyContent":"center"},"style":{"spacing":{"margin":{"top":"var:preset|spacing|xl"}}}} -->
                <!-- wp:query-pagination-previous /-->
                <!-- wp:query-pagination-numbers /-->
                <!-- wp:query-pagination-next /-->
            <!-- /wp:query-pagination -->

        </div>
        <!-- /wp:query -->

    </div>
    <!-- /wp:group -->

</main>
<!-- /wp:group -->

<!-- wp:template-part {"slug":"footer","area":"footer"} /-->
```

---

## RÉSUMÉ

| # | Fichier | Layout | Patterns intégrés | Pages |
|---|---|---|---|---|
| 1 | `index.html` | constrained | — | Fallback |
| 2 | `front-page.html` | default (full-width) | — | Homepage |
| 3 | `page.html` | default (full-width) | — | Toutes pages sauf texte |
| 4 | `page-texte.html` | constrained 880px | — | CGV, Mentions, Confidentialité |
| 5 | `single.html` | constrained 880px | `equipe/05-bio-auteur` + `structure/04-articles-lies` | Articles blog |
| 6 | `archive.html` | default | `hero/05-archive-blog` | Blog, catégories, tags |
| 7 | `404.html` | default | `structure/06-page-404` | Page 404 |
| 8 | `search.html` | default | — | Recherche |

## TEMPLATE PARTS REQUIS

| Fichier | Rôle | Statut |
|---|---|---|
| `parts/header.html` | Header global (logo, nav, CTA) | À vérifier si existant |
| `parts/footer.html` | Footer global (liens, réseaux, copyright) | À vérifier si existant |

## PATTERNS RÉFÉRENCÉS

Les templates 5, 6 et 7 appellent directement des patterns. Vérifier que ces patterns existent avec les bons slugs :

| Slug | Pattern | Utilisé dans |
|---|---|---|
| `jurible/equipe-05-bio-auteur` | Card bio auteur | `single.html` |
| `jurible/structure-04-articles-lies` | 3 articles recommandés | `single.html` |
| `jurible/hero-05-archive-blog` | Hero archive blog | `archive.html` |
| `jurible/structure-06-page-404` | Page 404 complète | `404.html` |

## ORDRE DE CRÉATION

1. Vérifier que `parts/header.html` et `parts/footer.html` existent
2. Créer `index.html` (obligatoire, le thème ne fonctionne pas sans)
3. Créer `front-page.html` et `page.html`
4. Créer `page-texte.html`
5. Créer `single.html` (vérifier que les patterns bio-auteur et articles-lies existent)
6. Créer `archive.html` (vérifier que le pattern hero-archive-blog existe)
7. Créer `404.html` (vérifier que le pattern page-404 existe)
8. Créer `search.html`
9. Dans Réglages > Lecture : définir la page d'accueil statique

## SÉLECTION DU TEMPLATE PAR LE RÉDACTEUR

Quand on crée une page dans WordPress :
- Par défaut → `page.html` (full-width)
- Pour les pages légales → Panneau latéral > Modèle > **Page texte** → `page-texte.html`

Les articles utilisent automatiquement `single.html`. L'archive blog utilise automatiquement `archive.html`.
