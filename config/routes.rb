Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # Root now points to Mockups V2 with Basecoat UI
  root "mockups2/index#home"
  
  # Mockups Version 2 avec Basecoat UI
  namespace :mockups2 do
    root "index#home"
    
    # Public pages
    get "about", to: "public#about"
    get "projects", to: "public#projects", as: :public_projects
    get "projects/:id", to: "public#show", as: :public_project
    get "auth/login", to: "auth#login"
    get "auth/register", to: "auth#register"
    
    # Admin User Journeys
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
    
    # Entrepreneur User Journeys
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
    
    # Investor User Journeys
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
end
