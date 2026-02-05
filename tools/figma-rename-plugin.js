// ============================================
// PLUGIN FIGMA - Renommage Design System Jurible
// ============================================
//
// COMMENT L'UTILISER :
// 1. Ouvre ton fichier Figma "Jurible - Design system"
// 2. Clique sur le logo Figma (en haut à gauche)
// 3. Va dans : Plugins > Development > New plugin...
// 4. Choisis "Figma design" puis clique "Next"
// 5. Donne un nom (ex: "Jurible Rename") et clique "Save as"
// 6. Un nouvel onglet s'ouvre avec l'éditeur de code
// 7. Dans le fichier "code.ts", supprime tout et colle ce code
// 8. Clique sur le bouton "Run" (triangle vert en bas)
// 9. Retourne sur ton fichier Figma : c'est renommé !
//
// ============================================

const renameMap = {
  // ===== TOKENS =====
  "Colors 🎨": "T01-colors",
  "Colors 🎨 ": "T01-colors",
  "Spacing ☄️": "T02-spacing",
  "Typography ✒️": "T03-typography",
  "Foundation": "T04-foundation",
  " Foundation": "T04-foundation",
  "Shadows 👻": "T05-shadows",
  "Medias": "T06-medias",

  // ===== ATOMS =====
  "Divider": "A01-divider",
  "Buttons 🔘": "A02-buttons",
  "Icones": "A03-icones-emojis",
  "Icones ": "A03-icones-emojis",
  "Inputs 🔗": "A04-inputs",

  // ===== MOLECULES =====
  "Alerts 📌": "M01-alerts",
  "Breadcrumb": "M02-breadcrumb",
  "Pagination": "M03-pagination",
  "Tabs": "M04-tabs",
  "Progress indicator 🛟": "M05-progress-indicator",

  // ===== ORGANISMS =====
  "Header": "O01-header",
  "Footer": "O02-footer",
  "Blog component": "O03-blog-components",
  "Modals": "O04-modals",
  " Modals": "O04-modals",
  "Prose": "O05-prose",

  // ===== CARDS =====
  "📎  CTA": "C01-cta",
  "📎 CTA": "C01-cta",
  "📎 Cards widgets blog": "C02-widget-blog",
  "📎 Cards widgets blog ": "C02-widget-blog",
  "📎 Cards article blog": "C03-article-blog",
  "📎 Cards bio auteur / prof": "C04-bio-auteur",
  "🆕 Cards enseignants": "C05-enseignants",
  "📎  Cards réassurance": "C06-reassurance",
  "📎 Cards réassurance": "C06-reassurance",
  "📎 Cards FAQ": "C07-faq-accordeon",
  "Cards fonctionnalité": "C08-fonctionnalite",
  "cards contenu": "C09-contenu-cours",
  "Cards solution / benefices": "C10-solution",
  "Cards pain points": "C11-pain-points",
  "Cards pricing - Fiches": "C12-pricing-fiches",
  "🆕 cards pricing - prepa": "C13-pricing-prepa",
  "Cards pricing - produits comparatif": "C14-pricing-comparatif",
  "Cards pricing - produits comparatif ": "C14-pricing-comparatif",
  "Cards pricing - Suite IA": "C15-pricing-suite-ia",
  "Cards pricing - formule reussite": "C16-pricing-formule-reussite",
  "Cards pricing - selecteur durée": "C17-pricing-selecteur-duree",
  "Cards pricing - selecteur durée ": "C17-pricing-selecteur-duree",
  "cards testimonial": "C18-testimonial",
  "cards catalogue cours": "C19-catalogue-cours",

  // ===== HERO =====
  "📎 ⚫ HERO": "⚫ HERO",
  "Hero conversion": "H01-hero-conversion",
  "Hero archive": "H02-hero-archive",
  "Hero produit": "H03-hero-produit",
  "Hero produit ": "H03-hero-produit",
  "Hero simple": "H04-hero-simple",
  "hero article blog 1 (simple)": "H05-hero-article-blog-v1",
  "hero article blog 2 (gradient)": "H06-hero-article-blog-v2",

  // ===== PATTERNS =====
  "🆕 Paragraphe simple": "P01-paragraphe",
  "🆕 Bloc texte + image/video": "P02-bloc-texte-image",
  "🆕 Bloc offre Suite IA": "P03-offre-suite-ia",
  "🆕 Bloc cta academie page fiche": "P04-cta-academie",
  "🆕 Bloc quelle offre choisir": "P05-quelle-offre-choisir",
  "🆕  Bloc produits complemtaires": "P06-produits-complementaires",
  "🆕 Bloc produits complemtaires": "P06-produits-complementaires",
  "🆕 Pricing académie + features": "P07-pricing-academie",
  "🆕 Bloc methode": "P08-bloc-methode",
  "📎 Logos universités": "P09-logos",
  "📎 Logos universités ": "P09-logos",
  "📎 Section CTA final": "P10-cta-final",
  "📎  Section comparaison": "P11-comparaison",
  "📎 Section comparaison": "P11-comparaison",
  "📎 Section Features": "P12-features",
  "📎 Section Features ": "P12-features",
  "📎 section stats": "P13-stats",
  "📎 Section steps": "P14-steps",
  "Grid system": "P15-grid",
  "Forms": "P16-forms",

  // ===== VISUELS =====
  "Branding 🩷": "V01-branding",
  "Illustrations": "V02-illustrations"
};

// ============================================
// FONCTION PRINCIPALE
// ============================================

let renamedCount = 0;
let skippedCount = 0;
const results: string[] = [];

// Parcourir toutes les pages du document
for (const page of figma.root.children) {
  const oldName = page.name;
  const newName = renameMap[oldName as keyof typeof renameMap];

  if (newName) {
    page.name = newName;
    results.push(`✓ "${oldName}" → "${newName}"`);
    renamedCount++;
  } else {
    skippedCount++;
  }
}

// Afficher le résultat dans Figma
figma.notify(`✅ ${renamedCount} pages renommées ! (${skippedCount} ignorées)`);

// Log détaillé dans la console (Dev Tools)
console.log("========================================");
console.log("   RENOMMAGE DESIGN SYSTEM JURIBLE");
console.log("========================================");
console.log("");
results.forEach(r => console.log(r));
console.log("");
console.log(`Total: ${renamedCount} renommées, ${skippedCount} ignorées`);
console.log("========================================");

// Fermer le plugin
figma.closePlugin(`${renamedCount} pages renommées avec succès !`);
