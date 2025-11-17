# Composants Basecoat UI Utilisés - Sharifund V2

## 📚 Référence des Composants

Ce document liste tous les composants Basecoat UI utilisés dans les maquettes V2 avec exemples de code.

---

## 🔘 Buttons

### Types Utilisés

#### Primary Button
```html
<button class="btn bg-sf-gold text-sf-black">
  Texte du bouton
</button>
```
**Utilisé pour:** CTA principaux, soumissions, validations

#### Outline Button
```html
<button class="btn-outline">
  Texte du bouton
</button>
```
**Utilisé pour:** Actions secondaires, annulations

#### Ghost Button
```html
<button class="btn-ghost">
  Voir tout →
</button>
```
**Utilisé pour:** Links subtils, "voir plus"

#### Destructive Button
```html
<button class="btn-destructive">
  Supprimer
</button>
```
**Utilisé pour:** Rejeter, supprimer, actions dangereuses

#### Icon Buttons
```html
<button class="btn-icon-outline">
  <svg>...</svg>
</button>
```
**Utilisé pour:** Actions icones (voir, éditer, supprimer)

#### Small Buttons
```html
<button class="btn-sm">Texte</button>
<button class="btn-outline btn-sm">Texte</button>
```
**Utilisé pour:** Tables, cards compactes

---

## 📦 Cards

### Structure Standard
```html
<div class="card bg-white rounded-lg border border-gray-200">
  <header class="p-6 border-b border-gray-200">
    <h2 class="text-xl font-semibold">Titre</h2>
  </header>
  <section class="p-6">
    <!-- Contenu -->
  </section>
  <footer class="p-6 border-t border-gray-200">
    <!-- Actions -->
  </footer>
</div>
```

### Card Projet (Custom)
```html
<div class="card-sf p-6 hover:shadow-lg transition-all">
  <div class="w-full h-48 bg-gradient-to-br from-yellow-200 to-yellow-50">
    <!-- Image hero -->
  </div>
  <div class="p-6">
    <h3>Titre</h3>
    <p>Description</p>
    <div class="badge">Type</div>
    <!-- Progress bar -->
    <button class="btn">CTA</button>
  </div>
</div>
```

**Utilisé dans:** Investor projects grid, dashboards

---

## 📋 Forms

### Form Container
```html
<form class="form space-y-6">
  <!-- Les inputs à l'intérieur héritent des styles -->
</form>
```

### Input Text
```html
<div>
  <label for="title" class="label text-sm font-medium mb-2">Label</label>
  <input type="text" id="title" class="input w-full" placeholder="...">
  <p class="text-xs text-gray-600 mt-2">Helper text</p>
</div>
```

### Textarea
```html
<textarea rows="4" class="textarea w-full" placeholder="..."></textarea>
```

### Select
```html
<select class="select w-full">
  <option>Option 1</option>
  <option>Option 2</option>
</select>
```

### Radio Buttons (Cards)
```html
<label class="flex items-start gap-3 p-4 border-2 border-gray-200 rounded-lg cursor-pointer hover:border-sf-gold">
  <input type="radio" name="type" value="mudaraba">
  <div>
    <div class="font-semibold">Mudaraba</div>
    <p class="text-sm text-gray-600">Description...</p>
  </div>
</label>
```

### Checkboxes
```html
<label class="flex items-center gap-2">
  <input type="checkbox" class="input">
  <span class="text-sm">Label</span>
</label>
```

### Range Slider
```html
<input type="range" class="w-full" min="0" max="1000000" value="50000" step="1000">
```

---

## 🏷️ Badges

### Types Standards
```html
<span class="badge badge-success">Validé ✓</span>
<span class="badge badge-warning">En attente ⏳</span>
<span class="badge badge-error">Rejeté ✕</span>
<span class="badge badge-info">Info</span>
<span class="badge badge-outline">Outline</span>
```

### Badge Custom Sharifund
```html
<span class="conformite-badge">
  <span>☪</span>
  <span>Score IA: 92%</span>
</span>
```
**Style custom dans layout:**
```css
.conformite-badge {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  background: var(--sf-green);
  color: white;
  padding: 8px 16px;
  border-radius: 8px;
  font-weight: 600;
  font-size: 14px;
}
```

### Badges Colorés Custom
```html
<span class="badge bg-purple-100 text-purple-800 text-xs">Mudaraba</span>
<span class="badge bg-orange-100 text-orange-800 text-xs">Restauration</span>
<span class="badge bg-blue-100 text-blue-800 text-xs">Musharaka</span>
<span class="badge bg-green-100 text-green-800 text-xs">Murabaha</span>
```

---

## 📊 Tables

### Table Responsive
```html
<div class="overflow-x-auto">
  <table class="table w-full">
    <thead class="bg-gray-50">
      <tr>
        <th class="px-6 py-4 text-left text-sm font-semibold">Col 1</th>
        <th class="px-6 py-4 text-left text-sm font-semibold">Col 2</th>
      </tr>
    </thead>
    <tbody class="divide-y divide-gray-200">
      <tr class="hover:bg-gray-50">
        <td class="px-6 py-4">Data 1</td>
        <td class="px-6 py-4">Data 2</td>
      </tr>
    </tbody>
  </table>
</div>
```

**Utilisé dans:** Admin projects list, users list, investor interests

---

## 🔔 Alerts

### Types d'Alerts
```html
<!-- Info -->
<div class="alert bg-blue-50 border-2 border-blue-200 rounded-lg p-4">
  <div class="flex items-start gap-3">
    <svg class="text-blue-600">...</svg>
    <div>
      <h3 class="font-semibold text-blue-900">Titre</h3>
      <p class="text-sm text-blue-800">Message...</p>
    </div>
  </div>
</div>

<!-- Success -->
<div class="alert bg-green-50 border border-green-200 rounded-lg p-4">
  <!-- Contenu similaire avec classes green -->
</div>

<!-- Warning -->
<div class="alert bg-yellow-50 border-2 border-yellow-300 rounded-lg p-4">
  <!-- Contenu similaire avec classes yellow -->
</div>

<!-- Error -->
<div class="alert bg-red-50 border border-red-200 rounded-lg p-4">
  <!-- Contenu similaire avec classes red -->
</div>
```

**Utilisé dans:** Toutes les pages pour feedback utilisateur

---

## 📈 Progress Bars

### Progress Bar Custom
```html
<div class="w-full bg-gray-200 rounded-full h-3">
  <div class="bg-gradient-to-r from-sf-gold to-sf-gold-light h-3 rounded-full flex items-center justify-end pr-3" style="width: 83%">
    <span class="text-white text-xs font-bold">83%</span>
  </div>
</div>
```

### Progress Bar Simple
```html
<div class="w-full bg-gray-200 rounded-full h-2">
  <div class="bg-sf-gold h-2 rounded-full" style="width: 65%"></div>
</div>
```

**Utilisé pour:** Financement projet, progression jalons, scores IA

---

## 👤 Avatars

### Avatar avec Initiales
```html
<div class="w-12 h-12 rounded-full bg-gradient-to-br from-blue-400 to-blue-600 flex items-center justify-center text-white font-semibold">
  MH
</div>
```

### Avatar Group (Overlap)
```html
<div class="flex -space-x-2">
  <div class="w-8 h-8 rounded-full bg-gradient-to-br from-blue-400 to-blue-600 border-2 border-white"></div>
  <div class="w-8 h-8 rounded-full bg-gradient-to-br from-purple-400 to-purple-600 border-2 border-white"></div>
  <div class="w-8 h-8 rounded-full bg-gray-300 border-2 border-white flex items-center justify-center text-xs font-semibold">
    +8
  </div>
</div>
```

**Utilisé dans:** Messages, user lists, investor display

---

## 🗂️ Breadcrumbs

```html
<nav class="mb-6">
  <ol class="text-gray-600 flex items-center gap-2 text-sm">
    <li><a href="#" class="hover:text-sf-gold">Dashboard</a></li>
    <li><svg width="16" height="16">...</svg></li>
    <li><a href="#" class="hover:text-sf-gold">Projets</a></li>
    <li><svg width="16" height="16">...</svg></li>
    <li class="text-sf-dark font-medium">Current Page</li>
  </ol>
</nav>
```

**Utilisé dans:** Toutes les pages de détail, validation

---

## 📄 Pagination

```html
<nav role="navigation" aria-label="pagination" class="flex items-center justify-between">
  <div class="text-sm text-gray-600">
    Affichage de <strong>1-20</strong> sur <strong>67</strong>
  </div>
  <ul class="flex items-center gap-1">
    <li><button class="btn-ghost btn-sm">← Précédent</button></li>
    <li><button class="btn-icon-outline btn-sm">1</button></li>
    <li><button class="btn-icon-ghost btn-sm">2</button></li>
    <li><span class="px-2">...</span></li>
    <li><button class="btn-ghost btn-sm">Suivant →</button></li>
  </ul>
</nav>
```

**Utilisé dans:** Tables (projects, users)

---

## 🎯 Custom Components

### Timeline Jalons
```html
<div class="flex gap-4">
  <div class="flex flex-col items-center">
    <!-- Completed -->
    <div class="w-10 h-10 rounded-full bg-sf-green flex items-center justify-center text-white">
      <svg>✓</svg>
    </div>
    <div class="w-0.5 h-full bg-sf-green mt-2"></div>
  </div>
  <div class="flex-1">
    <h3 class="font-semibold">Jalon 1</h3>
    <p class="text-sm text-gray-600">Description...</p>
    <span class="badge badge-success">Validé</span>
  </div>
</div>

<!-- In Progress -->
<div class="w-10 h-10 rounded-full bg-sf-gold">2</div>
<div class="w-0.5 h-full bg-gray-200 mt-2"></div>

<!-- Upcoming -->
<div class="w-10 h-10 rounded-full border-2 border-gray-300 text-gray-400">3</div>
```

### Stat Card
```html
<div class="card bg-white p-6 rounded-lg border border-gray-200">
  <div class="text-4xl mb-3">📊</div>
  <div class="text-3xl font-bold text-sf-dark mb-1">248</div>
  <div class="text-sm text-gray-600">Label</div>
  <div class="mt-4">
    <span class="badge badge-outline text-xs">+12%</span>
  </div>
</div>
```

### Document Card
```html
<div class="flex items-center justify-between p-4 border border-gray-200 rounded-lg hover:border-sf-gold">
  <div class="flex items-center gap-3">
    <div class="w-12 h-12 rounded-lg bg-red-100 flex items-center justify-center">
      <svg class="text-red-600">📄</svg>
    </div>
    <div>
      <div class="font-medium text-sm">Filename.pdf</div>
      <div class="text-xs text-gray-600">2.4 MB</div>
    </div>
  </div>
  <button class="btn-outline btn-sm">Télécharger</button>
</div>
```

---

## 🎨 Custom Styles Sharifund

### Variables CSS
```css
:root {
  --sf-gold: #C4A574;
  --sf-gold-light: #D4B584;
  --sf-gold-pale: #F5F0E8;
  --sf-green: #2D7A4F;
  --sf-blue: #4A90E2;
  --sf-warning: #F59E0B;
  --sf-error: #DC2626;
}
```

### Classes Utility Custom
```css
.bg-sf-gold { background-color: var(--sf-gold); }
.text-sf-gold { color: var(--sf-gold); }
.border-sf-gold { border-color: var(--sf-gold); }
/* Idem pour green, blue, etc. */
```

### Sidebar Navigation
```css
.sidebar-admin .nav-item {
  padding: 12px 24px;
  border-left: 3px solid transparent;
  transition: all 0.3s ease;
}

.sidebar-admin .nav-item:hover {
  background: var(--sf-gold-pale);
  border-left-color: var(--sf-gold);
}

.sidebar-admin .nav-item.active {
  background: var(--sf-gold-pale);
  border-left-color: var(--sf-gold);
  font-weight: 600;
}
```

---

## 📐 Layout Patterns

### 2-Column Layout (Detail Pages)
```html
<div class="grid grid-cols-1 lg:grid-cols-3 gap-6">
  <!-- Main Content (2/3) -->
  <div class="lg:col-span-2">
    <!-- Cards principales -->
  </div>
  
  <!-- Sidebar (1/3) -->
  <div class="lg:col-span-1">
    <!-- Actions, infos, CTA -->
  </div>
</div>
```

### Grid Responsive
```html
<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
  <!-- Cards -->
</div>
```

### Stats Grid
```html
<div class="grid grid-cols-1 md:grid-cols-4 gap-6">
  <!-- 4 stat cards -->
</div>
```

---

## 💬 Messaging Interface

### 3-Column Layout
```html
<div class="grid grid-cols-3 h-full">
  <!-- Conversations List (1/3) -->
  <div class="col-span-1 border-r">
    <!-- Liste conversations -->
  </div>
  
  <!-- Message Thread (2/3) -->
  <div class="col-span-2 flex flex-col">
    <!-- Header -->
    <div class="p-6 border-b bg-gray-50">...</div>
    
    <!-- Messages -->
    <div class="flex-1 overflow-y-auto p-6">...</div>
    
    <!-- Input -->
    <div class="p-6 border-t bg-gray-50">
      <textarea class="textarea"></textarea>
      <button class="btn">Envoyer</button>
    </div>
  </div>
</div>
```

---

## 🎭 States & Variants

### Hover States
```html
<div class="card hover:shadow-lg transition-all">
  <!-- Card content -->
</div>

<button class="btn hover:bg-sf-gold-light transition-colors">
  <!-- Button -->
</button>
```

### Active States (Sidebar)
```html
<a class="nav-item <%= 'active' if current_page?(path) %>">
  <!-- Nav item -->
</a>
```

### Disabled States
```html
<button class="btn-outline" disabled>
  Action impossible
</button>

<input class="input" disabled>
```

---

## 📱 Responsive Utilities

### Breakpoints Utilisés
```html
<!-- Mobile first -->
<div class="grid grid-cols-1">          <!-- < 640px -->
<div class="grid grid-cols-1 md:grid-cols-2">  <!-- ≥ 768px -->
<div class="grid grid-cols-1 lg:grid-cols-3">  <!-- ≥ 1024px -->

<!-- Hide/Show -->
<div class="hidden md:block">           <!-- Visible ≥ 768px -->
<div class="block md:hidden">           <!-- Visible < 768px -->
```

---

## 🎨 Gradients Utilisés

### Background Gradients
```html
<!-- Or -->
bg-gradient-to-br from-yellow-200 to-yellow-50
bg-gradient-to-r from-sf-gold to-sf-gold-light

<!-- Bleu -->
bg-gradient-to-br from-blue-200 to-blue-50

<!-- Vert -->
bg-gradient-to-br from-green-200 to-green-50

<!-- Général -->
bg-gradient-to-br from-sf-gold-pale to-white
```

### Button Gradients
```css
.btn-sf-primary {
  background: linear-gradient(135deg, var(--sf-gold) 0%, var(--sf-gold-light) 100%);
}
```

---

## 🔍 Icons

### SVG Pattern
```html
<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
  <path d="..."/>
</svg>
```

**Icons utilisés:**
- Check (validation)
- X (rejection)
- Eye (voir)
- Edit (modifier)
- Trash (supprimer)
- Upload (upload)
- Download (télécharger)
- Message (messagerie)
- Search (recherche)
- Filter (filtres)
- Arrow right/left (navigation)

### Emojis (Temporaires)
Utilisés comme placeholders visuels:
- 🍽️ Restaurant
- 💼 Tech
- 🏠 Immobilier
- 👗 Commerce
- 🏥 Santé
- ☪ Conformité Charia
- 📊 Stats
- etc.

**À remplacer par:** Heroicons SVG en production

---

## 📏 Spacing System

### Gaps
```html
gap-1  (4px)
gap-2  (8px)
gap-3  (12px)
gap-4  (16px)
gap-6  (24px)
gap-8  (32px)
```

### Padding
```html
p-3  (12px)
p-4  (16px)
p-6  (24px)
p-8  (32px)
```

### Margins
```html
mb-2  (8px)
mb-4  (16px)
mb-6  (24px)
mb-8  (32px)
mb-12 (48px)
```

---

## 🎯 Best Practices Appliquées

### Cards
- ✅ Border subtle (gray-200)
- ✅ Rounded corners (rounded-lg = 12px)
- ✅ Hover effects (shadow-lg, translateY)
- ✅ Header/Section/Footer structure
- ✅ Padding cohérent (p-6 = 24px)

### Buttons
- ✅ Min height 44px (touch-friendly)
- ✅ Icons avec SVG (pas d'images)
- ✅ States clairs (hover, disabled)
- ✅ Loading states prévus
- ✅ Semantic buttons (type="button" explicite)

### Forms
- ✅ Labels toujours présents
- ✅ Helper text sous inputs
- ✅ Validation visuelle (aria-invalid)
- ✅ Required fields marqués (*)
- ✅ Placeholder informatifs

### Typography
- ✅ Hiérarchie claire (h1: 4xl, h2: 3xl, etc.)
- ✅ Line-height adapté (leading-relaxed)
- ✅ Font weights cohérents
- ✅ Colors sémantiques (gray-600, sf-dark)

---

## 🔗 Ressources Externes

### Basecoat UI Docs
- Components: https://basecoatui.com/components
- Kitchen Sink: https://basecoatui.com/kitchen-sink
- Accessibility: https://basecoatui.com/accessibility

### Tailwind CSS
- Docs: https://tailwindcss.com/docs
- Colors: https://tailwindcss.com/docs/customizing-colors
- Responsive: https://tailwindcss.com/docs/responsive-design

---

**Documentation des composants Basecoat UI utilisés dans Sharifund V2**  
*Référence complète pour développement et maintenance*
