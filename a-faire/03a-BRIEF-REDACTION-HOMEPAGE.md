# 📝 BRIEF RÉDACTION — Homepage jurible.com (v2)

> **Objectif** : Contenu textuel de chaque section, prêt à copier-coller dans WordPress
> **Charte éditoriale** : Vouvoiement, ton sérieux mais accessible, jamais infantilisant, vocabulaire juridique vulgarisé
> **Positionnement Homepage** : Page généraliste, de présentation et d'orientation. Doit rediriger vers les bonnes offres. Ne vend pas directement un produit, présente Jurible comme solution globale.

---

## Différence Homepage vs Landing Académie

| | Homepage | Page Académie |
|---|---|---|
| **Objectif** | Présenter Jurible, orienter vers la bonne offre | Vendre l'abonnement Académie |
| **Ton** | Inspirant, rassurant, "bienvenue" | Persuasif, orienté conversion |
| **CTA principal** | "Découvrir nos offres" / "Trouver ma formule" | "Rejoindre l'Académie" / "Commencer maintenant" |
| **Pricing** | Comparatif des offres (vue d'ensemble) | Détail des formules Académie (durées, prix) |
| **Pain points** | Légers, orientés identification | Appuyés, orientés urgence |
| **Preuve sociale** | Chiffres globaux (25 000 étudiants, 5 ans) | Témoignages spécifiques sur les résultats |

---

## SECTION 1 — Header
**Pattern** : `parts/header`
**Contenu** : Géré par le template part, pas de rédaction nécessaire.

---

## SECTION 2 — Hero Conversion Homepage
**Pattern** : `jurible/hero-01-conversion-homepage`

| Slot | Contenu |
|------|---------|
| **Badge** | `La plateforme n°1 des étudiants en droit` |
| **Titre H1** | `Réussissez votre licence de droit` |
| **Sous-titre** | `Jurible accompagne plus de 25 000 étudiants avec des cours complets, des outils innovants et un accompagnement par des enseignants en droit.` |
| **Preuve sociale** | `★★★★★ 4.7/5 · Plus de 25 000 étudiants accompagnés` |
| **CTA principal** | `Découvrir nos offres` → `/nos-offres/` |
| **CTA secondaire** | `Découvrir l'Académie` → `/academie/` |
| **Mentions sous CTA** | `Par des enseignants en droit · Accès immédiat · Depuis 2018` |
| **Visuel** | Mockup dashboard idéalisé (style Stripe) — Prototype HTML fourni (`hero-dashboard-mockup.html`). Composant visuel seul (sans le texte hero) à insérer dans le slot visuel du pattern. Dashboard avec sidebar matières, stats progression, cours en lecture + 3 cards flottantes (QCM, Flashcard, Note 15/20). Animations : parallax souris, scroll-triggered, compteurs animés. À peaufiner avec le dev. |

---

## SECTION 3 — Réassurance Full
**Pattern** : `jurible/confiance-01-reassurance-full`

| Slot | Contenu |
|------|---------|
| **Item 1 — Icône** | ⭐ |
| **Item 1 — Texte** | `Note Excellent sur les avis vérifiés` |
| **Item 2 — Icône** | 🎓 |
| **Item 2 — Texte** | `Cours conformes aux programmes universitaires` |
| **Item 3 — Icône** | 📚 |
| **Item 3 — Texte** | `Plus de 7 ans d'expérience auprès des étudiants en droit` |

---

## SECTION 4 — Logos Universités Partenaires
**Pattern** : `jurible/confiance-03-logos-partenaires`

| Slot | Contenu |
|------|---------|
| **Titre** | `Nos contenus sont conformes aux programmes de` |
| **Logos (11)** | Paris I Panthéon-Sorbonne, Paris II Panthéon-Assas, Nanterre, Lyon III Jean Moulin, Bordeaux, Aix-Marseille, Strasbourg, Paris-Saclay, Clermont-Auvergne, Côte d'Azur, UBO |

> ✅ Logos fournis (ZIP `Logos_universite_s.zip` — 11 fichiers PNG).

---

## SECTION 5 — Solution / Bénéfices (4 cards, fond gris)
**Pattern** : `jurible/marketing-03-solution-4-gris`

| Slot | Contenu |
|------|---------|
| **Titre section** | `Tout ce dont vous avez besoin pour réussir` |
| **Sous-titre section** | `Une plateforme complète qui s'adapte à votre rythme et à vos objectifs.` |
| **Card 1 — Icône** | 📹 |
| **Card 1 — Titre** | `Des cours complets en vidéo` |
| **Card 1 — Description** | `Des centaines d'heures de cours couvrant toutes les matières fondamentales, dispensés par des enseignants qualifiés.` |
| **Card 2 — Icône** | 📄 |
| **Card 2 — Titre** | `Des fiches de révision détaillées` |
| **Card 2 — Description** | `60 à 80 pages par matière, rédigées par des professionnels du droit et conformes aux programmes officiels.` |
| **Card 3 — Icône** | 🧠 |
| **Card 3 — Titre** | `Des outils d'entraînement` |
| **Card 3 — Description** | `QCM, flashcards, annales corrigées et exercices méthodologiques pour vous préparer efficacement.` |
| **Card 4 — Icône** | 🤖 |
| **Card 4 — Titre** | `L'intelligence artificielle au service du droit` |
| **Card 4 — Description** | `Générez des fiches d'arrêt, dissertations, cas pratiques et commentaires en quelques clics.` |

---

## SECTION 6 — Ressources Chiffrées
**Pattern** : `jurible/contenu-08-chiffres-cles`

| Slot | Contenu |
|------|---------|
| **Titre section** | `Jurible en chiffres` |
| **Chiffre 1** | `25 000+` |
| **Label 1** | `Étudiants accompagnés` |
| **Chiffre 2** | `1 200+` |
| **Label 2** | `Vidéos de cours` |
| **Chiffre 3** | `11` |
| **Label 3** | `Enseignants diplômés` |
| **Chiffre 4** | `21` |
| **Label 4** | `Matières couvertes` |

> ✅ Durée totale confirmée via Bunny : 1 217 vidéos, 216h20 de contenu. On affiche le nombre de vidéos (plus impactant que "200+ heures").
> 💡 "7 ans d'expérience / Depuis 2018" est présent dans : mentions sous CTA hero (#2), et peut être renforcé dans la réassurance (#3) ou le CTA final (#15).

---

## SECTION 7 — Pour qui / Quelle offre
**Pattern** : `jurible/commerce-04-quelle-offre`

| Slot | Contenu |
|------|---------|
| **Titre section** | `Quelle offre est faite pour vous ?` |
| **Sous-titre section** | `Chaque étudiant a des besoins différents. Trouvez la formule adaptée à votre situation.` |
| **Card 1 — Badge** | `Le plus populaire` |
| **Card 1 — Titre** | `L'Académie` |
| **Card 1 — Description** | `Accès illimité à tous les cours, fiches, QCM, flashcards et annales de votre niveau. L'accompagnement complet.` |
| **Card 1 — CTA** | `Découvrir l'Académie` → `/academie/` |
| **Card 2 — Titre** | `Les Fiches à l'unité` |
| **Card 2 — Description** | `Besoin d'une seule matière ? Nos fiches détaillées sont disponibles à l'achat individuel.` |
| **Card 2 — CTA** | `Voir les fiches` → `/fiches/` |
| **Card 3 — Titre** | `La Suite IA` |
| **Card 3 — Description** | `Générez vos exercices juridiques avec l'intelligence artificielle : fiches d'arrêt, dissertations, cas pratiques.` |
| **Card 3 — CTA** | `Découvrir la Suite IA` → `/suite-ia/` |
| **Card 4 — Titre** | `Les Prépas` |
| **Card 4 — Description** | `Un programme intensif avec suivi personnalisé pour préparer votre L1 ou votre reprise d'études de droit dans les meilleures conditions.` |
| **Card 4 — CTA** | `En savoir plus` → `/prepas/` |

---

## SECTION 8 — Pricing Comparatif (vue d'ensemble)
**Pattern** : `jurible/commerce-09-pricing-comparatif-homepage`

| Slot | Contenu |
|------|---------|
| **Titre section** | `Comparez nos formules` |
| **Sous-titre section** | `Choisissez l'accompagnement qui correspond à vos objectifs et à votre budget.` |

> ⚠️ Le contenu du tableau comparatif (features, prix, etc.) dépend de la structure exacte du pattern SureCart/pricing. Laura : à valider avec les prix finaux lors de l'intégration.

**Données pricing connues :**
- Académie : 1 mois (29€) / 3 mois (78€) / 6 mois (140€) / 1 an (240€) ⭐
- Fiches : à l'unité ~19€
- Suite IA : 5€/20 crédits, 17€/100 crédits
- Prépas : 1 650€

---

## SECTION 9 — Trust Bar (Réassurance minimale)
**Pattern** : `jurible/confiance-02-reassurance-minimal`

| Slot | Contenu |
|------|---------|
| **Item 1** | `✓ Paiement 100% sécurisé` |
| **Item 2** | `✓ Accès immédiat après inscription` |
| **Item 3** | `✓ Résiliation simple en 1 clic` |
| **Item 4** | `✓ Support réactif sous 24h` |

---

## SECTION 10 — Steps (Comment ça marche)
**Pattern** : `jurible/marketing-08-steps`

| Slot | Contenu |
|------|---------|
| **Titre section** | `Comment ça marche ?` |
| **Sous-titre section** | `En 3 étapes, accédez à l'ensemble de nos ressources.` |
| **Step 1 — Numéro** | `1` |
| **Step 1 — Titre** | `Choisissez votre formule` |
| **Step 1 — Description** | `Sélectionnez l'offre adaptée à votre niveau et à vos objectifs : Académie, Fiches ou Suite IA.` |
| **Step 2 — Numéro** | `2` |
| **Step 2 — Titre** | `Créez votre compte` |
| **Step 2 — Description** | `Inscription en 2 minutes. Accédez immédiatement à votre espace personnel sur ecole.jurible.com.` |
| **Step 3 — Numéro** | `3` |
| **Step 3 — Titre** | `Progressez à votre rythme` |
| **Step 3 — Description** | `Suivez vos cours, révisez avec les fiches et QCM, et préparez vos examens sereinement.` |

---

## SECTION 11 — Comparaison (Avec vs Sans Jurible)
**Pattern** : `jurible/marketing-09-comparaison-cards`

| Slot | Contenu |
|------|---------|
| **Titre section** | `Avec ou sans Jurible ?` |
| **Colonne gauche — Titre** | `❌ Sans Jurible` |
| **Colonne gauche — Item 1** | `Cours magistraux difficiles à suivre` |
| **Colonne gauche — Item 2** | `Fiches de révision incomplètes ou inexistantes` |
| **Colonne gauche — Item 3** | `Méthodologie floue, pas de correction personnalisée` |
| **Colonne gauche — Item 4** | `Stress et isolement avant les examens` |
| **Colonne gauche — Item 5** | `Résultats incertains malgré les efforts` |
| **Colonne droite — Titre** | `✅ Avec Jurible` |
| **Colonne droite — Item 1** | `Cours en vidéo clairs, à revoir autant que nécessaire` |
| **Colonne droite — Item 2** | `Fiches détaillées de 60 à 80 pages par matière` |
| **Colonne droite — Item 3** | `Méthodologie guidée, exercices corrigés, aide personnalisée` |
| **Colonne droite — Item 4** | `Communauté d'étudiants et support des enseignants` |
| **Colonne droite — Item 5** | `Des milliers d'étudiants ont validé leur année avec Jurible` |

---

## SECTION 12 — Enseignants Vidéo
**Pattern** : `jurible/equipe-04-enseignants-video`

> ⚠️ Ce pattern affiche une grille de 4 cards enseignants avec : citation, photo, nom, titre, bouton vidéo, lien vers le cours. Voir capture de référence.

| Slot | Contenu |
|------|---------|
| **Badge** | `🧑‍🏫 Notre équipe` |
| **Titre section** | `Une équipe de **professionnels diplômés**` |
| **Sous-titre** | `Nos 11 enseignants — avocats, doctorants et chargés d'enseignement — sont tous titulaires d'un Master 2 minimum et vous transmettent les clés de la réussite.` |
| **Card 1 — Citation** | `"Une grosse pression pèse sur vos petites épaules !"` |
| **Card 1 — Nom** | `Julie Ramsamy` |
| **Card 1 — Titre** | `AVOCATE EN DROIT PUBLIC ET CHARGÉE D'ENSEIGNEMENT` |
| **Card 1 — Lien** | `Voir le cours de Droit administratif →` |
| **Card 2 — Citation** | `"Connaître les bases du droit constitutionnel relève de la culture générale !"` |
| **Card 2 — Nom** | `Raphaël Briguet-Lamarre` |
| **Card 2 — Titre** | `AVOCAT DE FORMATION, EX CHARGÉ D'ENSEIGNEMENT` |
| **Card 2 — Lien** | `Voir le cours de Droit constitutionnel →` |
| **Card 3 — Citation** | `"Il faut prendre conscience que le droit pénal est PARTOUT"` |
| **Card 3 — Nom** | `Megan Léonard` |
| **Card 3 — Titre** | `DOCTORANTE ET CHARGÉE D'ENSEIGNEMENT` |
| **Card 3 — Lien** | `Voir le cours de Droit pénal →` |
| **Card 4 — Citation** | `"Le cours d'institutions juridictionnelles vous servira tout le long de vos études !"` |
| **Card 4 — Nom** | `Didier Okpo` |
| **Card 4 — Titre** | `AVOCAT EN DROIT FISCAL, FONDATEUR "POINT FISCAL"` |
| **Card 4 — Lien** | `Voir le cours d'Institutions juridictionnelles →` |
| **CTA bas** | `Découvrir tous nos enseignants →` → `/enseignants/` |

---

## SECTION 13 — Témoignages
**Pattern** : `jurible/confiance-05-temoignages`

| Slot | Contenu |
|------|---------|
| **Titre section** | `Ce que nos étudiants en pensent` |
| **Sous-titre** | `Plus de 25 000 étudiants nous font confiance. Voici leurs retours.` |

**Témoignage 1 :**
| Champ | Contenu |
|-------|---------|
| **Note** | ★★★★★ |
| **Texte** | `Cette année, j'ai validé ma L1 de droit avec mention, et je suis convaincue que mon abonnement a largement contribué à cette réussite. En tant qu'étudiante internationale, le français n'étant pas ma langue maternelle, les cours clairs et bien structurés m'ont énormément aidée.` |
| **Source** | Avis Trustpilot vérifié |

**Témoignage 2 :**
| Champ | Contenu |
|-------|---------|
| **Note** | ★★★★★ |
| **Texte** | `Étudiant en 1ère année, mes résultats aux galops d'essai sont plus que concluants : 14/20 en Droit civil et 17/20 en Droit constitutionnel !` |
| **Source** | Avis Trustpilot vérifié |

**Témoignage 3 :**
| Champ | Contenu |
|-------|---------|
| **Note** | ★★★★★ |
| **Texte** | `À deux doigts d'abandonner ses études, notre petite fille a finalement pu obtenir ses examens du premier semestre à l'université de Bordeaux. Grâce aux cours, elle a repris confiance en ses capacités.` |
| **Source** | Avis Trustpilot vérifié (jacques THABUIS, parent) |

**Témoignage 4 :**
| Champ | Contenu |
|-------|---------|
| **Note** | ★★★★★ |
| **Texte** | `Je suis membre de cette académie depuis ma L1 et je vais rejoindre un master l'année prochaine. Vos fiches, vos conseils, vos vidéos, votre accompagnement m'ont permis de gagner en confiance. Un prof m'avait dit : "Vous devriez faire autre chose, vous n'avez pas le niveau." Force est de constater que j'ai pu lui prouver qu'il avait tort.` |
| **Source** | Avis Trustpilot vérifié |

> ✅ 4 vrais avis Trustpilot sélectionnés. Mix : étudiante internationale + notes concrètes + parent + parcours L1→Master. Laura : vérifier que la republication de ces avis (paraphrasés) est OK.

---

## SECTION 14 — FAQ
**Pattern** : `jurible/confiance-04-faq`

| Slot | Contenu |
|------|---------|
| **Titre section** | `Questions fréquentes` |

**Q1 : Jurible est-il adapté à mon université ?**
> Nos cours couvrent les programmes officiels des matières fondamentales de licence de droit, qui sont très largement communs à l'ensemble des universités françaises. Il peut cependant exister de légères différences dans la structure des cours ou l'approfondissement de certains thèmes selon les enseignants. C'est pourquoi nous vous conseillons toujours de compléter nos ressources avec vos cours magistraux. Si vous constatez qu'un point important manque, contactez-nous : nous mettons régulièrement à jour nos contenus.

**Q2 : Les fiches suffisent-elles pour réviser ?**
> Nos fiches de 60 à 80 pages par matière sont très complètes et couvrent l'intégralité du programme officiel. Elles peuvent se suffire à elles-mêmes dans la grande majorité des cas. Nous recommandons toutefois de les compléter avec vos cours magistraux, car chaque enseignant peut insister sur des points différents.

**Q3 : Puis-je essayer gratuitement avant de m'abonner ?**
> Oui. Chaque matière propose un extrait gratuit comprenant une vidéo de 15 minutes, une fiche PDF et 10 questions QCM. Aucune inscription n'est nécessaire pour y accéder.

**Q4 : Comment fonctionne l'abonnement ?**
> L'Académie propose plusieurs durées : 1, 3, 6 ou 12 mois. Les formules 3, 6 et 12 mois sont payées en une fois et offrent des réductions significatives. La formule mensuelle est sans engagement et résiliable à tout moment. On déteste les abonnements compliqués à résilier : chez Jurible, tout se fait en un clic depuis votre espace personnel, sans appel ni justification.

**Q5 : Qui sont les enseignants ?**
> Nos contenus sont rédigés et dispensés par 11 enseignants : avocats, doctorants et chargés d'enseignement universitaire, tous titulaires d'un Master 2 minimum. Leurs noms, parcours et profils LinkedIn sont accessibles sur notre page Enseignants — une transparence rare dans notre secteur.

**Q6 : Est-ce que je peux faire mes TD avec l'IA ?**
> La Suite IA est un excellent outil pour comprendre la méthodologie et vous entraîner. Elle génère des exercices complets (fiches d'arrêt, dissertations, cas pratiques, commentaires) qui suivent la méthodologie attendue en fac de droit. Vous pouvez tout à fait l'utiliser comme base de travail pour vos TD. Attention cependant : chaque enseignant a ses attentes spécifiques, et il reste indispensable de personnaliser vos copies avec vos propres analyses et vos cours. La Suite IA est un point de départ solide, pas un copier-coller.

**Q7 : En quoi consistent les Prépas ?**
> Nos Prépas sont des programmes intensifs et personnalisés, spécialement conçus pour les étudiants qui préparent leur entrée en L1 ou qui sont en reprise d'études. Elles incluent l'accès complet à l'Académie, un suivi individualisé avec un enseignant, des corrections de copies et un programme de travail structuré. C'est notre formule la plus accompagnante.

**Q8 : La méthodologie enseignée est-elle conforme aux attentes de la fac ?**
> Oui. Notre méthodologie (commentaire d'arrêt, cas pratique, dissertation, fiche d'arrêt) a été créée et validée par des enseignants en droit qui sont ou ont été chargés d'enseignement en université. Même si chaque correcteur peut avoir de petites spécificités, les fondamentaux méthodologiques que nous enseignons sont ceux qui sont attendus dans l'ensemble des facultés de droit françaises.

---

## SECTION 15 — CTA Final
**Pattern** : `jurible/commerce-06-cta-final-basique`

| Slot | Contenu |
|------|---------|
| **Titre** | `Prêt à réussir votre licence de droit ?` |
| **Sous-titre** | `Rejoignez les 25 000+ étudiants qui font confiance à Jurible.` |
| **CTA principal** | `Découvrir nos offres` → `/nos-offres/` |
| **Mention** | `Par des enseignants en droit · Accès immédiat` |

---

## SECTION 16 — Footer
**Pattern** : `parts/footer`
**Contenu** : Géré par le template part, pas de rédaction nécessaire.

---

## DONNÉES À CONFIRMER PAR LAURA

| Donnée | Valeur dans le brief | Statut |
|--------|---------------------|--------|
| Nombre d'étudiants | 25 000+ | ✅ Confirmé |
| Note avis vérifiés | 4.7/5 (ne pas mentionner Trustpilot) | ✅ Confirmé (123 avis) |
| Stat recommandation | ~~98%~~ → **SUPPRIMÉE** (stat non sourcée) | ⚠️ Remplacée — voir section 11 |
| Nombre de matières | 21 | ✅ Confirmé |
| Contenus pédagogiques | 2 300+ (dire "contenus pédagogiques" pas "leçons") | ✅ Confirmé |
| Vidéos | 1 217 vidéos / 216h20 de contenu | ✅ Confirmé via Bunny |
| Nombre d'enseignants | 11 | ✅ Confirmé |
| Universités (11 logos) | Paris I Panthéon-Sorbonne, Paris II Panthéon-Assas, Nanterre, Lyon III Jean Moulin, Bordeaux, Aix-Marseille, Strasbourg, Paris-Saclay, Clermont-Auvergne, Côte d'Azur, UBO | ✅ Logos fournis |
| Prix Académie | 29€/78€/140€/240€ | ✅ Confirmé |
| Prix Fiches unitaires | ~19€ | ✅ Confirmé |
| Prix Suite IA | 5€/20 crédits, 17€/100 | ✅ Confirmé |
| Prix Prépas | 1 650€ | ✅ Confirmé |
| Témoignages | 4 vrais avis Trustpilot sélectionnés | ✅ Voir section 13 |
| Visuel hero | Mockup dashboard interactif (prototype HTML livré) | ✅ À peaufiner avec dev |
| Photos enseignants | Raphaël Briguet-Lamarre, Maître Ramsamy, Megan Leonard, Maître Okpo | ✅ Fournies (ZIP) |



---

## CHANGELOG v1 → v2

| Section | Modification |
|---------|-------------|
| #2 Hero | Supprimé "chaque année". Remplacé "suivi personnalisé" par "accompagnement par des enseignants en droit". Note 4.7/5 sans mention Trustpilot. CTA secondaire → "Découvrir l'Académie" (vers page Académie). Mentions : "Par des enseignants en droit · Accès immédiat · Depuis 2018" |
| #7 Card Prépas | Description mise à jour : "préparer votre L1 ou votre reprise d'études de droit" |
| #9 Trust bar | Supprimé "Satisfait ou remboursé". Remplacé par "Résiliation simple en 1 clic" + "Support réactif sous 24h" |
| #11 Comparaison | Stat "98% recommandent" → remplacée par "Des milliers d'étudiants ont validé leur année avec Jurible" (pas de stat inventée) |
| #12 Enseignants | Pattern corrigé : `equipe-04-enseignants-video` avec grille 4 cards (citations + photos + vidéos + liens cours). Contenu exact repris de la maquette |
| #13 Témoignages | 4 vrais extraits Trustpilot sélectionnés (mix L1/parent/distance) |
| #14 FAQ Q1 | Plus vague sur le nombre d'universités. Ajout nuance sur la structure des cours + méthodologie |
| #14 FAQ Q4 | Clarification : formules 3/6/12 mois payées en une fois. Insistance sur la simplicité de résiliation |
| #14 FAQ Q5 | Ajout : noms + LinkedIn accessibles (transparence rare) |
| #14 FAQ Q6 | Reformulée "Puis-je faire mes TD avec l'IA ?". Réponse nuancée : oui comme base, non comme copier-coller |
| #14 FAQ Q7 | Nouvelle question sur les Prépas |
| #14 FAQ Q8 | Nouvelle question sur la conformité de la méthodologie |
| #15 CTA Final | Mention mise à jour : "Par des enseignants en droit · Accès immédiat" |
