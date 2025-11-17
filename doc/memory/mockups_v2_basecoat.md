# Maquettes V2 - Sharifund avec Basecoat UI

## Vue d'ensemble

Les maquettes V2 utilisent **Basecoat UI**, un design system moderne et accessible, combiné avec la charte graphique Sharifund.

**URL de base:** `/mockups2`

**Page d'index:** `http://localhost:3000/mockups2`

---

## Design System

### Framework UI
- **Basecoat UI 0.3.2** (via CDN)
- Components: Buttons, Cards, Forms, Tables, Badges, Alerts, etc.
- Accessible (WCAG 2.1 AA)
- Responsive (Mobile-first)

### Charte Graphique Sharifund
```css
--sf-gold: #C4A574 (Or principal)
--sf-gold-light: #D4B584
--sf-gold-pale: #F5F0E8
--sf-green: #2D7A4F (Vert halal)
--sf-black: #000000
--sf-dark: #2C2C2C
--sf-blue: #4A90E2
--sf-warning: #F59E0B
--sf-error: #DC2626
```

### Typographie
- **Police:** Inter (Google Fonts)
- **Headings:** 600-700 weight
- **Body:** 400 weight
- **Tailles:** 12px → 48px

---

## Structure des Maquettes

### 📁 Contrôleurs (22 contrôleurs)

```
mockups2/
├── base_controller.rb
├── index_controller.rb
├── public_controller.rb
├── auth_controller.rb
├── admin/
│   ├── base_controller.rb
│   ├── dashboard_controller.rb
│   ├── projects_controller.rb
│   ├── users_controller.rb
│   ├── milestones_controller.rb
│   └── statistics_controller.rb
├── entrepreneur/
│   ├── base_controller.rb
│   ├── dashboard_controller.rb
│   ├── projects_controller.rb
│   ├── interests_controller.rb
│   ├── messages_controller.rb
│   └── profile_controller.rb
└── investor/
    ├── base_controller.rb
    ├── dashboard_controller.rb
    ├── projects_controller.rb
    ├── interests_controller.rb
    ├── messages_controller.rb
    └── profile_controller.rb
```

### 🎨 Layouts (4 layouts)

1. **mockups2.html.erb** - Layout principal (page index)
2. **mockups2/admin.html.erb** - Layout admin avec sidebar
3. **mockups2/entrepreneur.html.erb** - Layout entrepreneur avec sidebar
4. **mockups2/investor.html.erb** - Layout investor avec sidebar

**Caractéristiques communes:**
- Header fixe (64px height)
- Sidebar fixe (260px width) avec navigation active
- Main content avec margin-left: 260px
- Logo Sharifund avec icône ☪
- User avatar dans header
- Retour vers page d'index des maquettes

---

## Pages Créées (30 vues)

### Pages Publiques (3)

| Page | URL | Description |
|------|-----|-------------|
| **Index** | `/mockups2` | Page d'accueil des maquettes avec navigation |
| **À propos** | `/mockups2/about` | Présentation plateforme, mission, types de contrats |
| **Connexion** | `/mockups2/auth/login` | Formulaire login + Google OAuth |
| **Inscription** | `/mockups2/auth/register` | Formulaire inscription avec choix de rôle |

### Pages Admin (9)

| Page | URL | Fonctionnalités |
|------|-----|-----------------|
| **Dashboard** | `/mockups2/admin/dashboard` | Stats, projets à valider, activité récente |
| **Liste Projets** | `/mockups2/admin/projects` | Table avec filtres, scores IA, actions |
| **Détail Projet** | `/mockups2/admin/projects/1` | Vue complète, intérêts, profil entrepreneur |
| **Validation Projet** | `/mockups2/admin/projects/1/validation` | Analyse IA détaillée, red flags, actions validation |
| **Liste Users** | `/mockups2/admin/users` | Table users, filtres par rôle, stats |
| **Détail User** | `/mockups2/admin/users/1` | Profil complet, projets, notes admin |
| **Liste Jalons** | `/mockups2/admin/milestones` | Jalons pending validation avec preuves |
| **Validation Jalon** | `/mockups2/admin/milestones/1` | Détails jalon, documents, formulaire validation |
| **Statistiques** | `/mockups2/admin/statistics` | Graphiques, top projets, top investisseurs |

### Pages Entrepreneur (10)

| Page | URL | Fonctionnalités |
|------|-----|-----------------|
| **Dashboard** | `/mockups2/entrepreneur/dashboard` | Mes projets, intérêts récents, stats |
| **Mes Projets** | `/mockups2/entrepreneur/projects` | Liste avec statuts, progress bars, actions |
| **Nouveau Projet** | `/mockups2/entrepreneur/projects/new` | Formulaire complet avec jalons, documents |
| **Détail Projet** | `/mockups2/entrepreneur/projects/1` | Vue complète, intérêts reçus, performance |
| **Modifier Projet** | `/mockups2/entrepreneur/projects/1/edit` | Formulaire édition |
| **Intérêts Reçus** | `/mockups2/entrepreneur/interests` | Liste par projet, investisseurs, montants |
| **Messages** | `/mockups2/entrepreneur/messages` | Interface de messagerie avec threads |
| **Profil** | `/mockups2/entrepreneur/profile` | Infos publiques, activité |
| **Modifier Profil** | `/mockups2/entrepreneur/profile/edit` | Formulaire profil entreprise |

### Pages Investor (8)

| Page | URL | Fonctionnalités |
|------|-----|-----------------|
| **Dashboard** | `/mockups2/investor/dashboard` | Projets recommandés, mes intérêts |
| **Explorer Projets** | `/mockups2/investor/projects` | Grille de projets avec filtres, search |
| **Détail Projet** | `/mockups2/investor/projects/1` | Vue complète, jalons timeline, documents |
| **Marquer Intérêt** | `/mockups2/investor/interests/new` | Modal/page de marquage d'intérêt |
| **Mes Intérêts** | `/mockups2/investor/interests` | Liste projets suivis, progression |
| **Messages** | `/mockups2/investor/messages` | Conversations avec entrepreneurs |
| **Profil** | `/mockups2/investor/profile` | Préférences d'investissement |
| **Modifier Profil** | `/mockups2/investor/profile/edit` | Formulaire préférences |

---

## Composants Basecoat UI Utilisés

### Buttons
- `.btn` - Bouton principal
- `.btn-outline` - Bouton avec bordure
- `.btn-ghost` - Bouton transparent
- `.btn-destructive` - Bouton rouge pour actions destructives
- `.btn-icon-outline` - Bouton icon seul

### Cards
- `.card` - Card de base avec border et rounded
- Header/Section/Footer structure

### Forms
- `.form` - Container form avec styles automatiques
- `.input` - Champs input
- `.textarea` - Textarea
- `.select` - Select dropdown
- `.label` - Labels

### Badges
- `.badge` - Badge de base
- `.badge-success` - Vert
- `.badge-warning` - Orange
- `.badge-error` - Rouge
- `.badge-outline` - Bordure seule
- `.conformite-badge` - Badge custom Sharifund (vert avec ☪)

### Tables
- `.table` - Table responsive
- Structure thead/tbody/tfoot

### Autres
- Tooltips (`data-tooltip`)
- Progress bars (custom avec Tailwind)
- Avatars avec initiales
- Breadcrumbs personnalisés

---

## Points Forts du Design

### 🎨 Visuel
- **Cohérence:** Charte graphique Sharifund respectée partout
- **Moderne:** Design 2024 avec gradients subtils
- **Iconographie:** Emojis pour illustration rapide (à remplacer par icons SVG)
- **Hiérarchie:** Typographie claire, espacements cohérents

### ♿ Accessibilité
- ARIA attributes sur composants interactifs
- Labels associés aux inputs
- Contrastes WCAG AA
- Navigation clavier

### 📱 Responsive
- Mobile-first approach
- Grids responsives (grid-cols-1 md:grid-cols-2 lg:grid-cols-3)
- Sidebar collapse sur mobile (à implémenter avec JS)

### 🚀 Performance
- CSS/JS Basecoat via CDN
- Pas de JavaScript custom (sauf Basecoat)
- Images optimisées (placeholders actuellement)

---

## User Journeys Illustrés

### 👨‍💼 Admin
1. **Dashboard** → Vue d'ensemble + projets à valider
2. **Validation projet** → Analyse IA + decision approve/reject
3. **Validation jalon** → Vérification preuves + validation
4. **Gestion users** → Modération + statistiques

### 🚀 Entrepreneur
1. **Dashboard** → Mes projets + intérêts récents
2. **Créer projet** → Formulaire complet multi-étapes
3. **Voir intérêts** → Liste investisseurs + montants
4. **Messagerie** → Communication avec investisseurs

### 💎 Investor
1. **Dashboard** → Recommandations + mes intérêts
2. **Explorer projets** → Catalogue avec filtres
3. **Détail projet** → Infos complètes + timeline jalons
4. **Marquer intérêt** → Formulaire montant + message
5. **Suivre intérêts** → Portfolio d'investissements simulés

---

## Différences avec Maquettes V1

| Aspect | V1 | V2 (Basecoat) |
|--------|-----|---------------|
| **Framework** | Tailwind pur | Basecoat UI + Tailwind |
| **Composants** | Custom fait main | Pre-built Basecoat |
| **Accessibilité** | Basique | WCAG 2.1 AA natif |
| **Cohérence** | Variable | System design cohérent |
| **Maintenance** | Complexe | Facile (composants standards) |
| **JavaScript** | Custom requis | Inclus dans Basecoat |

---

## Améliorations Futures

### Court terme
- [ ] Remplacer emojis par icons SVG (Heroicons)
- [ ] Implémenter vrais graphiques Chart.js (statistiques)
- [ ] Ajouter images réelles de projets
- [ ] Upload de fichiers fonctionnel
- [ ] Sidebar mobile collapse

### Moyen terme
- [ ] Animations micro-interactions
- [ ] Dark mode toggle
- [ ] Notifications toast
- [ ] Modals de confirmation
- [ ] Drag & drop pour upload

---

## Installation & Utilisation

### Accès
```
URL: http://localhost:3000/mockups2
```

### Navigation
1. Page index liste toutes les maquettes par catégorie
2. Chaque card est cliquable vers la maquette
3. Breadcrumbs pour navigation
4. "Retour aux maquettes" dans chaque sidebar

### Test des Pages
Toutes les pages sont statiques (pas de backend connecté).
Les données sont mockées directement dans les vues.

---

## Notes Techniques

### Basecoat UI
- Version: 0.3.2
- CDN: jsdelivr
- CSS: basecoat.cdn.min.css
- JS: all.min.js (tous composants)

### Custom Styles
Définis dans `<style>` de chaque layout:
- Variables CSS pour couleurs Sharifund
- Classes custom `.card-sf`, `.sidebar-sf`, etc.
- Badges custom `.conformite-badge`
- Extensions Basecoat

### Layouts Imbriqués
```
mockups2.html.erb (base)
  ├── mockups2/admin.html.erb
  ├── mockups2/entrepreneur.html.erb
  └── mockups2/investor.html.erb
```

Chaque layout enfant redéfinit son propre header/sidebar.

---

## Comparaison Recommandée

Pour comparer V1 vs V2:
1. Ouvrir V1 dans un onglet
2. Ouvrir V2 dans un autre onglet
3. Comparer page par page:
   - Design cohérence
   - Lisibilité
   - Accessibilité
   - Responsive

**Points de comparaison clés:**
- Formulaire création projet
- Validation projet admin (avec analyse IA)
- Liste projets (table vs cards)
- Dashboard (stats cards)
- Messagerie (UX)

---

*Maquettes V2 créées avec Basecoat UI - Design system moderne et accessible*
