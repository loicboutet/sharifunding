# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"

# Basecoat UI
pin "basecoat-css", to: "https://cdn.jsdelivr.net/npm/basecoat-css@0.3.2/dist/js/all.min.js"
pin "lucide" # @0.553.0
