# Architecture - Plateforme e-learning (ecole.jurible.com)

## Vue d'ensemble

- **Domaine** : ecole.jurible.com
- **Total écrans** : ~20 écrans
- **Stack** : Thrive Apprentice + FluentCommunity + SureCart

## Menu principal (connecté)

```
Accueil | Cours | Outils IA | Communauté
```

## Structure des écrans

### Authentification

| Écran | URL | Description |
|-------|-----|-------------|
| Login | `/login/` | Connexion membre |
| Register | `/register/` | Inscription (via SureCart) |
| Reset password | `/reset-password/` | Récupération MDP |

### Dashboard

| Écran | URL | Description |
|-------|-----|-------------|
| Accueil membre | `/dashboard/` | Vue d'ensemble, progression |
| Mon profil | `/dashboard/profile/` | Infos perso, avatar |
| Mes achats | `/dashboard/purchases/` | Historique SureCart |

### Cours (Thrive Apprentice)

| Écran | URL | Description |
|-------|-----|-------------|
| Catalogue cours | `/courses/` | Liste de tous les cours |
| Cours single | `/courses/[slug]/` | Landing du cours |
| Leçon | `/courses/[slug]/lessons/[id]/` | Contenu de la leçon |
| Quiz | `/courses/[slug]/quiz/[id]/` | QCM interactif |
| Progression | `/courses/[slug]/progress/` | Avancement du cours |

### Outils IA

| Écran | URL | Description |
|-------|-----|-------------|
| Hub IA | `/outils-ia/` | Liste des 4 générateurs |
| Générateur cas pratique | `/outils-ia/cas-pratique/` | Interface IA |
| Générateur dissertation | `/outils-ia/dissertation/` | Interface IA |
| Générateur commentaire | `/outils-ia/commentaire-arret/` | Interface IA |
| Générateur fiche arrêt | `/outils-ia/fiche-arret/` | Interface IA |

### Communauté (FluentCommunity)

| Écran | URL | Description |
|-------|-----|-------------|
| Feed communauté | `/community/` | Fil d'actualité |
| Espaces/Groupes | `/community/spaces/` | Liste des espaces |
| Espace single | `/community/spaces/[slug]/` | Posts d'un espace |
| Profil membre | `/community/members/[id]/` | Profil public |
| Messagerie | `/community/messages/` | DMs |

## Composants spécifiques à l'école

### Navigation
- Header simplifié (logo + menu + avatar)
- Sidebar cours (navigation leçons)
- Breadcrumb contextualisé

### Cards
- Card cours (progression, durée, niveau)
- Card leçon (statut complété/en cours)
- Card membre (avatar, stats)

### Widgets
- Widget progression globale
- Widget cours en cours
- Widget activité communauté

## Intégrations

| Service | Usage |
|---------|-------|
| **Thrive Apprentice** | LMS, cours, leçons, quiz |
| **FluentCommunity** | Forum, espaces, messagerie |
| **SureCart** | Paiements, abonnements |
| **OpenAI API** | Générateurs IA |

## Notes UX

- **Mobile-first** : 70% du trafic sur mobile
- **Gamification** : badges, streaks, leaderboard
- **Notifications** : email + in-app
