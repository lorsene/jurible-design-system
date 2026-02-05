# Plugin Figma - Renommage automatique

Ce plugin renomme automatiquement les 63 pages du Design System Jurible.

## Instructions pas à pas

### Étape 1 : Ouvrir Figma
Ouvre ton fichier **Jurible - Design system** dans Figma (app desktop ou navigateur).

### Étape 2 : Créer un nouveau plugin
1. Clique sur le **logo Figma** (coin supérieur gauche)
2. Va dans **Plugins** → **Development** → **New plugin...**
3. Choisis **"Figma design"**
4. Clique **"Next"**

### Étape 3 : Configurer le plugin
1. Donne un nom : `Jurible Rename`
2. Clique **"Save as"** et choisis un dossier (n'importe lequel)
3. Un nouvel onglet s'ouvre avec l'éditeur de code

### Étape 4 : Coller le code
1. Dans la sidebar gauche, clique sur **code.ts**
2. **Sélectionne tout** (Cmd+A) et **supprime**
3. Ouvre le fichier `figma-rename-plugin.js` (dans ce dossier)
4. **Copie tout le contenu** (Cmd+A puis Cmd+C)
5. **Colle** dans l'éditeur Figma (Cmd+V)

### Étape 5 : Exécuter
1. Clique sur le bouton **▶ Run** (en bas de l'éditeur)
2. Retourne sur l'onglet de ton fichier Figma
3. Tu verras une notification : **"✅ 63 pages renommées !"**

### Étape 6 : Vérifier
Regarde la sidebar gauche de Figma : toutes les pages sont maintenant nommées avec les IDs du Design System (T01, A02, C07, etc.)

---

## Résultat attendu

| Avant | Après |
|-------|-------|
| Colors 🎨 | T01-colors |
| Buttons 🔘 | A02-buttons |
| 📎 Cards FAQ | C07-faq-accordeon |
| Hero conversion | H01-hero-conversion |
| ... | ... |

---

## En cas de problème

### "Plugin not found"
→ Assure-toi d'avoir cliqué "Save as" à l'étape 3

### Rien ne se passe
→ Vérifie que tu as bien collé le code dans `code.ts` (pas `ui.html`)

### Certaines pages ne sont pas renommées
→ Normal ! Les séparateurs (⚫) et les pages de maquettes (🔴, 🟣) sont ignorés volontairement.

---

## Supprimer le plugin après usage

1. Figma > Plugins > Development > Manage plugins in development
2. Clique sur les "..." à côté de "Jurible Rename"
3. Sélectionne "Remove"
