# Maquettes V2 - Sharifund avec Basecoat UI

## 🎯 Objectif

Ces maquettes présentent une **version alternative du design** de la plateforme Sharifund, 
créées avec **Basecoat UI** - un design system moderne, accessible et maintainable.

## 🚀 Accès

**URL:** `http://localhost:3000/mockups2`

La page d'index liste toutes les maquettes organisées par user journey.

## 📊 Contenu

### Pages Publiques
- Page À propos (présentation plateforme)
- Formulaire de connexion
- Formulaire d'inscription (avec choix de rôle)

### Admin (9 pages)
- Dashboard avec stats et projets à valider
- Liste et détail des projets
- Interface de validation Charia (IA)
- Gestion des utilisateurs
- Validation des jalons
- Statistiques avancées

### Entrepreneur (10 pages)
- Dashboard personnel
- Gestion de projets (CRUD)
- Formulaire création projet complet
- Intérêts reçus
- Messagerie
- Profil

### Investor (8 pages)
- Dashboard avec recommandations
- Exploration de projets (filtres, search)
- Détail projet avec timeline jalons
- Marquage d'intérêt (modal)
- Mes intérêts (portfolio)
- Messagerie
- Profil et préférences

## 🎨 Design System

### Framework
- **Basecoat UI 0.3.2** via CDN
- **Tailwind CSS** pour utilities
- **Inter Font** (Google Fonts)

### Couleurs Sharifund
- Or: `#C4A574`
- Vert halal: `#2D7A4F`
- Noir: `#000000`
- Blanc: `#FAFAFA`

### Composants Utilisés
- Buttons (primary, outline, ghost, destructive)
- Cards (avec hover effects)
- Forms (inputs, textarea, select, radio, checkbox)
- Tables (responsive)
- Badges (success, warning, error, custom)
- Progress bars
- Avatars

## 📐 Layouts

Chaque namespace a son propre layout avec:
- **Header fixe** (64px) avec logo et actions
- **Sidebar fixe** (260px) avec navigation
- **Main content** avec padding approprié
- **Lien retour** vers page index des maquettes

## 💡 Points Forts

### Accessibilité ♿
- ARIA attributes natifs
- Contrastes WCAG AA
- Navigation clavier
- Labels sémantiques

### Responsive 📱
- Mobile-first
- Grids adaptatifs
- Sidebar collapsible (à implémenter)

### Maintenance 🔧
- Composants standards Basecoat
- Peu de CSS custom
- Styles réutilisables
- Documentation claire

## 🔄 Comparaison avec V1

Pour comparer avec les maquettes V1:
1. Ouvrir les deux versions en parallèle
2. Comparer page par page
3. Noter les différences de:
   - Cohérence visuelle
   - Facilité de navigation
   - Accessibilité
   - Qualité du code

## 📝 Notes

- **Données mockées:** Toutes les données sont statiques
- **Pas de backend:** Aucune action ne persiste
- **Images:** Emojis utilisés comme placeholders
- **Graphiques:** Placeholders pour Chart.js

## 🛠️ Développement Futur

Si cette version est choisie pour production:
1. Connecter au vrai backend Rails
2. Remplacer emojis par icons SVG
3. Implémenter vrais graphiques
4. Ajouter upload fonctionnel
5. Implémenter modals de confirmation
6. Ajouter animations subtiles

---

**Version:** 2.0  
**Date:** Janvier 2024  
**Design System:** Basecoat UI + Sharifund Theme
