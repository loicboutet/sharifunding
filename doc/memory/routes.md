# Routes & Navigation - Sharifund MVP Phase 1

## Status: ✅ Mockups V2 Active

**Note importante**: Ce document documente les routes **mockups2** actuellement actives. Les routes V1 ont été supprimées.

## Route Root

```ruby
root "mockups2/index#home"
```

Pointe vers la page d'accueil des mockups V2 avec Basecoat UI.

---

## Routes Mockups V2 (Actives)

### Structure
Toutes les routes mockups sont sous le namespace `/mockups2`

### Public Pages

```ruby
namespace :mockups2 do
  root "index#home"               # GET /mockups2
  
  get "about", to: "public#about"  # GET /mockups2/about
  get "auth/login", to: "auth#login"
  get "auth/register", to: "auth#register"
end
```

**Routes:**
- `/` ou `/mockups2` - Page d'accueil
- `/mockups2/about` - À propos
- `/mockups2/auth/login` - Page de connexion (mockup)
- `/mockups2/auth/register` - Page d'inscription (mockup)

---

### Admin Routes

```ruby
namespace :mockups2 do
  namespace :admin do
    get "dashboard", to: "dashboard#index"
    get "projects", to: "projects#index"
    get "projects/:id", to: "projects#show", as: :project
    get "projects/:id/validation", to: "projects#validation", as: :project_validation
    get "users", to: "users#index"
    get "users/:id", to: "users#show", as: :user
    get "milestones", to: "milestones#index"
    get "milestones/:id", to: "milestones#show", as: :milestone
    get "statistics", to: "statistics#index"
  end
end
```

**Routes:**
- `/mockups2/admin/dashboard` - Dashboard admin
- `/mockups2/admin/projects` - Liste des projets
- `/mockups2/admin/projects/1` - Détails d'un projet
- `/mockups2/admin/projects/1/validation` - Page de validation Charia
- `/mockups2/admin/users` - Liste des utilisateurs
- `/mockups2/admin/users/1` - Profil utilisateur
- `/mockups2/admin/milestones` - Liste des jalons
- `/mockups2/admin/milestones/1` - Détails d'un jalon
- `/mockups2/admin/statistics` - Statistiques avancées

---

### Entrepreneur Routes

```ruby
namespace :mockups2 do
  namespace :entrepreneur do
    get "dashboard", to: "dashboard#index"
    get "projects", to: "projects#index"
    get "projects/new", to: "projects#new", as: :new_project
    get "projects/:id", to: "projects#show", as: :project
    get "projects/:id/edit", to: "projects#edit", as: :edit_project
    get "interests", to: "interests#index"
    get "messages", to: "messages#index"
    get "profile", to: "profile#show"
    get "profile/edit", to: "profile#edit", as: :edit_profile
  end
end
```

**Routes:**
- `/mockups2/entrepreneur/dashboard` - Dashboard entrepreneur
- `/mockups2/entrepreneur/projects` - Mes projets
- `/mockups2/entrepreneur/projects/new` - Créer un projet
- `/mockups2/entrepreneur/projects/1` - Détails projet
- `/mockups2/entrepreneur/projects/1/edit` - Éditer projet
- `/mockups2/entrepreneur/interests` - Investisseurs intéressés
- `/mockups2/entrepreneur/messages` - Messages
- `/mockups2/entrepreneur/profile` - Mon profil
- `/mockups2/entrepreneur/profile/edit` - Éditer profil

---

### Investor Routes

```ruby
namespace :mockups2 do
  namespace :investor do
    get "dashboard", to: "dashboard#index"
    get "projects", to: "projects#index"
    get "projects/:id", to: "projects#show", as: :project
    get "interests", to: "interests#index"
    get "interests/new", to: "interests#new", as: :new_interest
    get "messages", to: "messages#index"
    get "profile", to: "profile#show"
    get "profile/edit", to: "profile#edit", as: :edit_profile
  end
end
```

**Routes:**
- `/mockups2/investor/dashboard` - Dashboard investisseur
- `/mockups2/investor/projects` - Explorer les projets
- `/mockups2/investor/projects/1` - Détails d'un projet
- `/mockups2/investor/interests` - Mes intérêts
- `/mockups2/investor/interests/new` - Marquer mon intérêt
- `/mockups2/investor/messages` - Messages
- `/mockups2/investor/profile` - Mon profil
- `/mockups2/investor/profile/edit` - Éditer profil

---

## Contrôleurs

### Structure des Controllers

```
app/controllers/mockups2/
├── base_controller.rb              # Contrôleur parent
├── index_controller.rb             # Page d'accueil
├── public_controller.rb            # Pages publiques
├── auth_controller.rb              # Auth mockups
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

### Héritage

```ruby
Mockups2::Admin::ProjectsController < Mockups2::Admin::BaseController
Mockups2::Admin::BaseController < Mockups2::BaseController
Mockups2::BaseController < ApplicationController
```

---

## Layouts

### Structure des Layouts

```
app/views/layouts/mockups2/
├── admin.html.erb         # Layout admin avec sidebar
├── entrepreneur.html.erb  # Layout entrepreneur avec navigation
└── investor.html.erb      # Layout investisseur avec navigation
```

### Layout Principal

```
app/views/layouts/mockups2.html.erb  # Layout de base pour pages publiques
```

---

## Helpers

### Icon Helper

```ruby
# app/helpers/mockups2/icon_helper.rb
module Mockups2::IconHelper
  def lucide_icon(name, options = {})
    # Génère des icônes Lucide
  end
  
  def sector_icon(sector)
    # Retourne l'icône appropriée pour chaque secteur
  end
end
```

**Utilisation dans les vues:**
```erb
<%= lucide_icon("check-circle", class: "text-green-600") %>
<%= sector_icon("technology") %>
```

---

## Navigation

### Admin Navigation
- Logo → `/mockups2/admin/dashboard`
- Projets → `/mockups2/admin/projects`
- Utilisateurs → `/mockups2/admin/users`
- Jalons → `/mockups2/admin/milestones`
- Statistiques → `/mockups2/admin/statistics`

### Entrepreneur Navigation
- Logo → `/mockups2/entrepreneur/dashboard`
- Mes Projets → `/mockups2/entrepreneur/projects`
- Investisseurs → `/mockups2/entrepreneur/interests`
- Messages → `/mockups2/entrepreneur/messages`
- Profil → `/mockups2/entrepreneur/profile`

### Investor Navigation
- Logo → `/mockups2/investor/dashboard`
- Projets → `/mockups2/investor/projects`
- Mes Intérêts → `/mockups2/investor/interests`
- Messages → `/mockups2/investor/messages`
- Profil → `/mockups2/investor/profile`

---

## Tests

### Test Coverage

```ruby
# test/integration/mockups2_routes_test.rb
- 31 tests couvrant toutes les routes
- ✅ Public pages
- ✅ Admin routes
- ✅ Entrepreneur routes
- ✅ Investor routes

# test/controllers/mockups2_controllers_test.rb
- 20 tests vérifiant les contrôleurs
- ✅ Toutes les actions répondent avec succès
```

**Run tests:**
```bash
bin/rails test test/integration/mockups2_routes_test.rb
bin/rails test test/controllers/mockups2_controllers_test.rb
```

---

## Prochaines Étapes (Implémentation Réelle)

Une fois le mockup validé, les routes réelles suivront cette structure:

### Routes Publiques (Devise)
```ruby
devise_for :users, controllers: {
  registrations: 'users/registrations',
  sessions: 'users/sessions',
  confirmations: 'users/confirmations'
}
```

### Routes Authenticated
```ruby
authenticated :user do
  root to: 'router#route', as: :authenticated_root
end

# Router controller redirigera selon le rôle:
# - admin → admin_root_path
# - entrepreneur → entrepreneur_root_path
# - investor → investor_root_path
```

### REST Actions
Les routes mockups (GET uniquement) seront étendues avec:
- `POST` pour create
- `PATCH/PUT` pour update
- `DELETE` pour destroy

### Custom Actions
```ruby
resources :projects do
  member do
    patch :submit       # Soumettre pour validation
    patch :approve      # Approuver (admin)
    patch :reject       # Rejeter (admin)
  end
end
```

---

## Références

- **Mockups V2 Documentation**: `doc/memory/mockups_v2_basecoat.md`
- **Mockups V2 Index**: `doc/memory/mockups_v2_index.md`
- **Migration V1→V2**: `doc/memory/mockups_migration_v1_to_v2.md`
- **Data Model**: `doc/memory/data_model.md`

---

*MVP Phase 1 - Routes Mockups V2 avec Basecoat UI - Ready for Implementation*
