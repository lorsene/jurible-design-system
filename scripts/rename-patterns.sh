#!/bin/bash
# ============================================================
# Script de renommage des patterns PHP — Jurible
# Généré le 9 février 2026
# 
# USAGE: cd /themes/jurible && bash rename-patterns.sh
#
# CE QUE FAIT CE SCRIPT :
# 1. Crée les 7 sous-dossiers dans patterns/
# 2. Déplace et renomme les 57 fichiers existants
# 3. Met à jour les slugs dans chaque fichier PHP
#
# CE QUE CE SCRIPT NE TOUCHE PAS :
# - Les blocs custom React (plugin jurible-blocks-react)
# - Les tokens (theme.json)
# - Les template parts (header, footer)
#
# PRÉREQUIS : Faire un backup ou un commit git avant de lancer
# ============================================================

set -e

PATTERNS_DIR="patterns"

echo "🚀 Début du renommage des patterns Jurible..."
echo ""

# ---- ÉTAPE 1 : Créer les sous-dossiers ----
echo "📁 Création des sous-dossiers..."
mkdir -p "$PATTERNS_DIR/hero"
mkdir -p "$PATTERNS_DIR/contenu"
mkdir -p "$PATTERNS_DIR/commerce"
mkdir -p "$PATTERNS_DIR/confiance"
mkdir -p "$PATTERNS_DIR/marketing"
mkdir -p "$PATTERNS_DIR/equipe"
mkdir -p "$PATTERNS_DIR/structure"
echo "   ✅ 7 dossiers créés"
echo ""

# ---- ÉTAPE 2 : Déplacer et renommer les fichiers ----
echo "📦 Déplacement des fichiers..."

rename_pattern() {
    local old="$1"
    local new="$2"
    local old_slug="$3"
    local new_slug="$4"
    
    if [ -f "$PATTERNS_DIR/$old" ]; then
        mv "$PATTERNS_DIR/$old" "$PATTERNS_DIR/$new"
        # Mettre à jour le slug dans le fichier
        sed -i "s|Slug: jurible/$old_slug|Slug: jurible/$new_slug|g" "$PATTERNS_DIR/$new"
        echo "   ✅ $old → $new"
    else
        echo "   ⚠️  INTROUVABLE: $old"
    fi
}

# --- HERO (15) ---
echo ""
echo "── HERO ──"
rename_pattern "H01-hero-conversion-homepage.php" "hero/01-conversion-homepage.php" "h01-hero-conversion-homepage" "hero-01-conversion-homepage"
rename_pattern "H01-hero-conversion-academie.php" "hero/02-conversion-academie.php" "h01-hero-conversion-academie" "hero-02-conversion-academie"
rename_pattern "H01-hero-conversion-prepa.php" "hero/03-conversion-prepa.php" "h01-hero-conversion-prepa" "hero-03-conversion-prepa"
rename_pattern "H01-hero-conversion-suite-ia.php" "hero/04-conversion-suite-ia.php" "h01-hero-conversion-suite-ia" "hero-04-conversion-suite-ia"
rename_pattern "H02-hero-archive-blog.php" "hero/05-archive-blog.php" "h02-hero-archive-blog" "hero-05-archive-blog"
rename_pattern "H02-hero-archive-cours.php" "hero/06-archive-cours.php" "h02-hero-archive-cours" "hero-06-archive-cours"
rename_pattern "H02-hero-archive-fiches.php" "hero/07-archive-fiches.php" "h02-hero-archive-fiches" "hero-07-archive-fiches"
rename_pattern "H02-hero-archive-search.php" "hero/08-archive-search.php" "h02-hero-archive-search" "hero-08-archive-search"
rename_pattern "H03-hero-produit-cours.php" "hero/09-produit-cours.php" "h03-hero-produit-cours" "hero-09-produit-cours"
rename_pattern "H03-hero-produit-support.php" "hero/10-produit-support.php" "h03-hero-produit-support" "hero-10-produit-support"
rename_pattern "H04-hero-simple-about.php" "hero/11-simple-about.php" "h04-hero-simple-about" "hero-11-simple-about"
rename_pattern "H04-hero-simple-contact.php" "hero/12-simple-contact.php" "h04-hero-simple-contact" "hero-12-simple-contact"
rename_pattern "H04-hero-simple-faq.php" "hero/13-simple-faq.php" "h04-hero-simple-faq" "hero-13-simple-faq"
rename_pattern "H04-hero-simple-legal.php" "hero/14-simple-legal.php" "h04-hero-simple-legal" "hero-14-simple-legal"
rename_pattern "H05-hero-article.php" "hero/15-article.php" "h05-hero-article" "hero-15-article"

# --- CONTENU (14) ---
echo ""
echo "── CONTENU ──"
rename_pattern "P01-paragraphe-standard.php" "contenu/01-paragraphe-standard.php" "p01-paragraphe-standard" "contenu-01-paragraphe-standard"
rename_pattern "P01-paragraphe-card.php" "contenu/02-paragraphe-card.php" "p01-paragraphe-card" "contenu-02-paragraphe-card"
rename_pattern "P01-paragraphe-gris.php" "contenu/03-paragraphe-gris.php" "p01-paragraphe-gris" "contenu-03-paragraphe-gris"
rename_pattern "P01-paragraphe-minimal.php" "contenu/04-paragraphe-minimal.php" "p01-paragraphe-minimal" "contenu-04-paragraphe-minimal"
rename_pattern "P02-texte-image.php" "contenu/05-texte-image.php" "p02-texte-image" "contenu-05-texte-image"
rename_pattern "P02-image-texte.php" "contenu/06-image-texte.php" "p02-image-texte" "contenu-06-image-texte"
rename_pattern "P02-texte-video.php" "contenu/07-texte-video.php" "p02-texte-video" "contenu-07-texte-video"
rename_pattern "C09-contenu-chiffre.php" "contenu/08-chiffres-cles.php" "c09-contenu-chiffre" "contenu-08-chiffres-cles"
rename_pattern "C09-contenu-matieres.php" "contenu/09-grille-matieres.php" "c09-contenu-matieres" "contenu-09-grille-matieres"
rename_pattern "C09-contenu-programme.php" "contenu/10-programme.php" "c09-contenu-programme" "contenu-10-programme"
rename_pattern "C09-contenu-sommaire.php" "contenu/11-sommaire.php" "c09-contenu-sommaire" "contenu-11-sommaire"
rename_pattern "C09-contenu-stats-sommaire.php" "contenu/12-stats-sommaire.php" "c09-contenu-stats-sommaire" "contenu-12-stats-sommaire"
rename_pattern "P13-stats.php" "contenu/13-stats.php" "p13-stats" "contenu-13-stats"
rename_pattern "P08-bloc-methode.php" "contenu/14-methode-onglets.php" "p08-bloc-methode" "contenu-14-methode-onglets"

# --- COMMERCE (8 existants) ---
echo ""
echo "── COMMERCE ──"
rename_pattern "P07-pricing-academie.php" "commerce/01-pricing-academie.php" "p07-pricing-academie" "commerce-01-pricing-academie"
rename_pattern "P03-offre-suite-ia.php" "commerce/02-offre-suite-ia.php" "p03-offre-suite-ia" "commerce-02-offre-suite-ia"
rename_pattern "P04-cta-academie.php" "commerce/03-cta-cross-sell.php" "p04-cta-academie" "commerce-03-cta-cross-sell"
rename_pattern "P05-quelle-offre-choisir.php" "commerce/04-quelle-offre.php" "p05-quelle-offre-choisir" "commerce-04-quelle-offre"
rename_pattern "P06-produits-complementaires.php" "commerce/05-produits-complementaires.php" "p06-produits-complementaires" "commerce-05-produits-complementaires"
rename_pattern "P10-cta-final-basique.php" "commerce/06-cta-final-basique.php" "p10-cta-final-basique" "commerce-06-cta-final-basique"
rename_pattern "P10-cta-final-promo.php" "commerce/07-cta-final-promo.php" "p10-cta-final-promo" "commerce-07-cta-final-promo"
rename_pattern "P10-cta-final-urgence.php" "commerce/08-cta-final-urgence.php" "p10-cta-final-urgence" "commerce-08-cta-final-urgence"

# --- CONFIANCE (4 existants) ---
echo ""
echo "── CONFIANCE ──"
rename_pattern "C06-reassurance-full.php" "confiance/01-reassurance-full.php" "c06-reassurance-full" "confiance-01-reassurance-full"
rename_pattern "C06-reassurance-minimal.php" "confiance/02-reassurance-minimal.php" "c06-reassurance-minimal" "confiance-02-reassurance-minimal"
rename_pattern "P09-trust-bar.php" "confiance/03-logos-partenaires.php" "p09-trust-bar" "confiance-03-logos-partenaires"
rename_pattern "C07-faq-accordeon.php" "confiance/04-faq.php" "c07-faq-accordeon" "confiance-04-faq"

# --- MARKETING (11 existants) ---
echo ""
echo "── MARKETING ──"
rename_pattern "C11-pain-points-4.php" "marketing/01-pain-points-4.php" "c11-pain-points-4" "marketing-01-pain-points-4"
rename_pattern "C11-pain-points-6.php" "marketing/02-pain-points-6.php" "c11-pain-points-6" "marketing-02-pain-points-6"
rename_pattern "C08-fonctionnalite.php" "marketing/04-features-6.php" "c08-fonctionnalite" "marketing-04-features-6"
rename_pattern "C08-fonctionnalite-4.php" "marketing/05-features-4.php" "c08-fonctionnalite-4" "marketing-05-features-4"
rename_pattern "C08-fonctionnalite-detailed.php" "marketing/06-features-detailed.php" "c08-fonctionnalite-detailed" "marketing-06-features-detailed"
rename_pattern "P12-features.php" "marketing/07-features-incluses.php" "p12-features" "marketing-07-features-incluses"
rename_pattern "P14-steps.php" "marketing/08-steps.php" "p14-steps" "marketing-08-steps"
rename_pattern "P11a-comparaison-cards.php" "marketing/09-comparaison-cards.php" "p11a-comparaison-cards" "marketing-09-comparaison-cards"
rename_pattern "P11b-comparaison-avant-apres.php" "marketing/10-comparaison-avant-apres.php" "p11b-comparaison-avant-apres" "marketing-10-comparaison-avant-apres"
rename_pattern "P11c-comparaison-multi.php" "marketing/11-comparaison-multi.php" "p11c-comparaison-multi" "marketing-11-comparaison-multi"
rename_pattern "P11d-comparaison-dark.php" "marketing/12-comparaison-dark.php" "p11d-comparaison-dark" "marketing-12-comparaison-dark"

# --- EQUIPE (5 existants) ---
echo ""
echo "── EQUIPE ──"
rename_pattern "C05-enseignants-grille.php" "equipe/01-enseignants-grille.php" "c05-enseignants-grille" "equipe-01-enseignants-grille"
rename_pattern "C05-enseignants-specifique.php" "equipe/02-enseignant-matiere.php" "c05-enseignants-specifique" "equipe-02-enseignant-matiere"
rename_pattern "C05-enseignants-teaser.php" "equipe/03-enseignants-teaser.php" "c05-enseignants-teaser" "equipe-03-enseignants-teaser"
rename_pattern "C05-enseignants-video.php" "equipe/04-enseignants-video.php" "c05-enseignants-video" "equipe-04-enseignants-video"
rename_pattern "C04-bio-auteur.php" "equipe/05-bio-auteur.php" "c04-bio-auteur" "equipe-05-bio-auteur"

# ---- ÉTAPE 3 : Mettre à jour les catégories dans les headers PHP ----
echo ""
echo "🏷️  Mise à jour des catégories Gutenberg..."

update_category() {
    local dir="$1"
    local category="$2"
    for file in "$PATTERNS_DIR/$dir"/*.php; do
        if [ -f "$file" ]; then
            # Remplace la ligne Categories existante
            sed -i "s|Categories: .*|Categories: $category|g" "$file"
        fi
    done
    echo "   ✅ $dir → catégorie '$category'"
}

update_category "hero" "jurible-hero"
update_category "contenu" "jurible-contenu"
update_category "commerce" "jurible-commerce"
update_category "confiance" "jurible-confiance"
update_category "marketing" "jurible-marketing"
update_category "equipe" "jurible-equipe"
update_category "structure" "jurible-structure"

# ---- ÉTAPE 4 : Nettoyer les anciens fichiers ----
echo ""
echo "🧹 Nettoyage..."
# Supprimer les fichiers restants à la racine de patterns/ (ceux qui ont été déplacés)
# NE PAS supprimer les sous-dossiers ni les fichiers qu'on vient de créer
find "$PATTERNS_DIR" -maxdepth 1 -name "*.php" -type f -delete
echo "   ✅ Anciens fichiers à la racine supprimés"

# ---- RÉSUMÉ ----
echo ""
echo "============================================"
echo "✅ Renommage terminé !"
echo ""
echo "Structure finale :"
echo "  patterns/"
for dir in hero contenu commerce confiance marketing equipe structure; do
    count=$(find "$PATTERNS_DIR/$dir" -name "*.php" -type f 2>/dev/null | wc -l)
    echo "  ├── $dir/ ($count patterns)"
done
echo ""
echo "⚠️  IMPORTANT : Vérifier que les patterns"
echo "   s'affichent correctement dans Gutenberg"
echo "   avant de pusher en production."
echo "============================================"
