# Index Complet des Maquettes V2 - Sharifund

## 🏠 Page d'Accueil

**URL:** `/mockups2`

Page d'index présentant toutes les maquettes organisées par catégorie avec navigation visuelle.

---

## 🌍 Pages Publiques (6 pages)

### 1. Page d'Index
- **URL:** `/mockups2`
- **Fichier:** `app/views/mockups2/index/home.html.erb`
- **Layout:** `mockups2.html.erb`
- **Contenu:** Navigation vers toutes les maquettes, design system reference

### 2. À Propos
- **URL:** `/mockups2/about`
- **Fichier:** `app/views/mockups2/public/about.html.erb`
- **Layout:** `mockups2.html.erb`
- **Contenu:** Mission, types de financement halal, stats, CTA, footer complet, lien vers Explorer

### 3. Explorer les Projets (Public) ⭐ NOUVEAU
- **URL:** `/mockups2/projects`
- **Fichier:** `app/views/mockups2/public/projects.html.erb`
- **Layout:** `mockups2.html.erb`
- **Contenu:** 
  - Catalogue de projets accessible sans connexion
  - Filtres (type contrat, secteur, montant)
  - Cards projets avec score conformité et progression
  - Boutons "Intéressé" et "Détails" redirigent vers inscription/login
  - CTA final pour création de compte
- **Highlight:** Page d'acquisition visiteurs → conversion inscription

### 4. Détail Projet (Public) ⭐ NOUVEAU
- **URL:** `/mockups2/projects/:id`
- **Fichier:** `app/views/mockups2/public/show.html.erb`
- **Layout:** `mockups2.html.erb`
- **Contenu:**
  - Infos projet visibles (description, jalons, entrepreneur)
  - Documents listés mais verrouillés (badge "Connexion requise")
  - Timeline des jalons visible
  - CTA "Créer un compte investisseur" pour débloquer les actions
  - Badge conformité Charia avec score IA
- **Highlight:** Teaser pour inciter à l'inscription

### 5. Connexion
- **URL:** `/mockups2/auth/login`
- **Fichier:** `app/views/mockups2/auth/login.html.erb`
- **Layout:** `mockups2.html.erb`
- **Contenu:** Formulaire login, OAuth Google, lien inscription

### 6. Inscription
- **URL:** `/mockups2/auth/register`
- **Fichier:** `app/views/mockups2/auth/register.html.erb`
- **Layout:** `mockups2.html.erb`
- **Contenu:** Choix rôle (entrepreneur/investisseur), formulaire complet

---

## 👨‍💼 Admin - User Journeys (9 pages)

### 1. Dashboard Admin
- **URL:** `/mockups2/admin/dashboard`
- **Fichier:** `app/views/mockups2/admin/dashboard/index.html.erb`
- **Composants:** Stats cards, projets pending, activité récente, distribution contrats
- **Données mockées:** 248 users, 67 projets, 2.4M€, 5 pending

### 2. Liste Projets
- **URL:** `/mockups2/admin/projects`
- **Fichier:** `app/views/mockups2/admin/projects/index.html.erb`
- **Composants:** Filtres (statut, contrat, secteur), table responsive, scores IA, actions
- **Données mockées:** 6 projets avec différents statuts

### 3. Détail Projet
- **URL:** `/mockups2/admin/projects/1`
- **Fichier:** `app/views/mockups2/admin/projects/show.html.erb`
- **Composants:** Overview, intérêts reçus, profil entrepreneur, actions admin
- **Points clés:** Quick actions bar, performance metrics

### 4. Validation Projet (⭐ Page clé)
- **URL:** `/mockups2/admin/projects/1/validation`
- **Fichier:** `app/views/mockups2/admin/projects/validation.html.erb`
- **Composants:** 
  - Analyse IA complète (score 92%)
  - Contrat recommandé avec confiance
  - Facteurs positifs (5 items)
  - Points d'attention (2 warnings)
  - Recommandations IA
  - Documents fournis
  - Notes admin
  - Actions de validation
- **Highlight:** Badge conformité Charia avec score IA

### 5. Liste Utilisateurs
- **URL:** `/mockups2/admin/users`
- **Fichier:** `app/views/mockups2/admin/users/index.html.erb`
- **Composants:** Stats par rôle, filtres, table, pagination
- **Données mockées:** Entrepreneurs, investisseurs, stats activité

### 6. Détail Utilisateur
- **URL:** `/mockups2/admin/users/1`
- **Fichier:** `app/views/mockups2/admin/users/show.html.erb`
- **Composants:** Profil, projets/intérêts, notes admin, actions modération

### 7. Liste Jalons
- **URL:** `/mockups2/admin/milestones`
- **Fichier:** `app/views/mockups2/admin/milestones/index.html.erb`
- **Composants:** 2 jalons pending avec preuves, documents, actions
- **Highlight:** Preuves fournies par entrepreneurs

### 8. Validation Jalon
- **URL:** `/mockups2/admin/milestones/1`
- **Fichier:** `app/views/mockups2/admin/milestones/show.html.erb`
- **Composants:** Détails jalon, preuve, documents (3), formulaire validation

### 9. Statistiques
- **URL:** `/mockups2/admin/statistics`
- **Fichier:** `app/views/mockups2/admin/statistics/index.html.erb`
- **Composants:** 4 stats cards gradient, placeholders graphiques, top 5 projets/investisseurs

---

## 🚀 Entrepreneur - User Journeys (10 pages)

### 1. Dashboard Entrepreneur
- **URL:** `/mockups2/entrepreneur/dashboard`
- **Fichier:** `app/views/mockups2/entrepreneur/dashboard/index.html.erb`
- **Composants:** Welcome header, 4 stats cards, mes projets (3), intérêts récents, next steps
- **Highlight:** CTA "Nouveau projet" dans header

### 2. Mes Projets (⭐ Page clé)
- **URL:** `/mockups2/entrepreneur/projects`
- **Fichier:** `app/views/mockups2/entrepreneur/projects/index.html.erb`
- **Composants:**
  - Projet validé avec stats (vues, intérêts, financement)
  - Projet en validation avec status IA
  - Projet brouillon avec checklist
  - Projet 100% financé avec félicitations
- **Highlight:** Progress bars, badges statut, actions contextuelles

### 3. Nouveau Projet (⭐ Page clé)
- **URL:** `/mockups2/entrepreneur/projects/new`
- **Fichier:** `app/views/mockups2/entrepreneur/projects/new.html.erb`
- **Composants:**
  - Progress steps (3 étapes)
  - Formulaire infos générales
  - Formulaire financement (3 types contrats avec explications)
  - Jalons dynamiques (2 pré-remplis)
  - Upload documents (drag & drop placeholder)
  - Helper card avec conseils
- **Highlight:** Radio buttons contrats avec descriptions

### 4. Détail Projet
- **URL:** `/mockups2/entrepreneur/projects/1`
- **Fichier:** `app/views/mockups2/entrepreneur/projects/show.html.erb`
- **Composants:** Overview, stats performance, intérêts reçus, sidebar actions

### 5. Modifier Projet
- **URL:** `/mockups2/entrepreneur/projects/1/edit`
- **Fichier:** `app/views/mockups2/entrepreneur/projects/edit.html.erb`
- **Composants:** Alert status, formulaire édition complet

### 6. Intérêts Reçus
- **URL:** `/mockups2/entrepreneur/interests`
- **Fichier:** `app/views/mockups2/entrepreneur/interests/index.html.erb`
- **Composants:** Summary stats (3 cards), intérêts par projet, projet 100% financé
- **Highlight:** CTA "Contacter tous les investisseurs"

### 7. Messages
- **URL:** `/mockups2/entrepreneur/messages`
- **Fichier:** `app/views/mockups2/entrepreneur/messages/index.html.erb`
- **Composants:** 3-col layout (liste conversations, thread, input), badges unread
- **Highlight:** Interface messaging type Slack/Discord

### 8. Profil
- **URL:** `/mockups2/entrepreneur/profile`
- **Fichier:** `app/views/mockups2/entrepreneur/profile/show.html.erb`
- **Composants:** Card profil, infos entreprise, activité summary

### 9. Modifier Profil
- **URL:** `/mockups2/entrepreneur/profile/edit`
- **Fichier:** `app/views/mockups2/entrepreneur/profile/edit.html.erb`
- **Composants:** Formulaire perso + entreprise, bio, liens sociaux

---

## 💎 Investor - User Journeys (8 pages)

### 1. Dashboard Investor
- **URL:** `/mockups2/investor/dashboard`
- **Fichier:** `app/views/mockups2/investor/dashboard/index.html.erb`
- **Composants:** 4 stats cards, projets recommandés (3 cards), mes intérêts (table)
- **Highlight:** Section recommandations avec badge "⭐ Recommandé"

### 2. Explorer Projets (⭐ Page clé)
- **URL:** `/mockups2/investor/projects`
- **Fichier:** `app/views/mockups2/investor/projects/index.html.erb`
- **Composants:**
  - Search & filtres (4 inputs)
  - Range slider pour montant
  - Grid de 4 project cards
  - Badges conformité Charia (score IA)
  - Progress bars financement
  - CTA "Intéressé" + "Détails"
- **Highlight:** Projet recommandé, projet déjà suivi, projet 100% financé

### 3. Détail Projet (⭐ Page clé)
- **URL:** `/mockups2/investor/projects/1`
- **Fichier:** `app/views/mockups2/investor/projects/show.html.erb`
- **Composants:**
  - Hero image avec badge conformité
  - Description détaillée
  - Timeline jalons (4 étapes: completed, in_progress, upcoming)
  - Documents téléchargeables (3)
  - Profil entrepreneur
  - CTA "Marquer intérêt" (sidebar)
  - Détails financiers
  - Badge conformité Charia détaillé
  - Autres investisseurs (avatars)
- **Highlight:** Timeline visuelle des jalons avec progression

### 4. Marquer Intérêt (⭐ Page clé)
- **URL:** `/mockups2/investor/interests/new`
- **Fichier:** `app/views/mockups2/investor/interests/new.html.erb`
- **Composants:**
  - Résumé projet
  - Input montant avec range slider
  - Textarea message optionnel
  - Notice MVP (sans engagement)
  - Badge conformité reminder
  - Trust indicators (3 icons)
- **Highlight:** UX fluide avec min 1K€, slider interactif

### 5. Mes Intérêts
- **URL:** `/mockups2/investor/interests`
- **Fichier:** `app/views/mockups2/investor/interests/index.html.erb`
- **Composants:** 3 summary cards, intérêt actif, intérêt 100% financé
- **Highlight:** Alert "Objectif atteint" pour projets financés

### 6. Messages
- **URL:** `/mockups2/investor/messages`
- **Fichier:** `app/views/mockups2/investor/messages/index.html.erb`
- **Composants:** Interface messagerie 3-col, conversations, thread
- **Highlight:** UI type chat moderne

### 7. Profil
- **URL:** `/mockups2/investor/profile`
- **Fichier:** `app/views/mockups2/investor/profile/show.html.erb`
- **Composants:** Card profil, type investisseur, préférences, activité

### 8. Modifier Profil
- **URL:** `/mockups2/investor/profile/edit`
- **Fichier:** `app/views/mockups2/investor/profile/edit.html.erb`
- **Composants:** 
  - Type investisseur (3 radio cards)
  - Capacité investissement (select)
  - Secteurs préférés (checkboxes grid)
  - Types contrats (checkboxes)
  - Bio

---

## 🎯 Pages Critiques (Must-See)

### Top 6 des maquettes à voir absolument:

1. **`/mockups2/admin/projects/1/validation`**
   - Validation Charia avec analyse IA complète
   - Red flags, recommandations
   - Interface de décision admin

2. **`/mockups2/entrepreneur/projects/new`**
   - Formulaire création projet multi-étapes
   - Types de contrats halal avec explications
   - Jalons dynamiques
   - Upload documents

3. **`/mockups2/projects`** ⭐ NOUVEAU
   - Page publique d'exploration des projets
   - Conversion visiteurs → inscrits
   - Filtres accessibles sans compte

4. **`/mockups2/investor/projects/1`**
   - Détail projet complet
   - Timeline jalons visuelle
   - Documents téléchargeables
   - Conformité Charia détaillée

5. **`/mockups2/investor/projects`**
   - Exploration projets avec filtres
   - Cards design moderne
   - Badges conformité
   - États différents (recommandé, suivi, financé)

6. **`/mockups2/investor/interests/new`**
   - UX marquage d'intérêt
   - Slider montant
   - Messages contextuels
   - Trust indicators

---

## 📊 Statistiques des Maquettes

- **Total pages:** 32 vues
- **Total contrôleurs:** 22 contrôleurs
- **Total layouts:** 4 layouts
- **Lignes de code:** ~6500 lignes HTML/ERB
- **Composants Basecoat:** 15+ types utilisés
- **Colors custom:** 11 variables CSS

---

## 🔗 Navigation Entre Pages Publiques

Les pages publiques sont maintenant interconnectées:

### Header Navigation (toutes pages publiques):
- Accueil → `/mockups2`
- Explorer → `/mockups2/projects`
- À propos → `/mockups2/about`
- Connexion → `/mockups2/auth/login`
- Inscription → `/mockups2/auth/register`

### Flux de Conversion:
```
Visiteur → Explorer les projets → Détail projet (verrouillé) → Inscription → Investisseur connecté
```

### CTAs clés:
- Page Explorer: "Créer mon compte investisseur"
- Page Détail Projet: Documents "Connexion requise", CTA inscription
- Page About: "Voir les projets", "Créer mon compte"

---

## 🎨 Éléments de Design Notables

### Badges Custom Sharifund
```html
<span class="conformite-badge">
  <span>☪</span>
  <span>Score IA: 92%</span>
</span>
```

### Cards Projet avec Gradient
```html
<div class="card bg-white rounded-lg border border-gray-200 overflow-hidden group hover:border-sf-gold">
  <!-- Card content -->
</div>
```

### Progress Bars Custom
```html
<div class="w-full bg-gray-200 rounded-full h-3">
  <div class="bg-gradient-to-r from-sf-gold to-sf-gold-light h-3 rounded-full" style="width: 83%">
    <span class="text-white text-xs font-bold">83%</span>
  </div>
</div>
```

### Document Verrouillé (Public)
```html
<span class="badge badge-outline text-xs">
  <svg><!-- lock icon --></svg>
  Connexion requise
</span>
```

### Timeline Jalons
- États: completed (vert), in_progress (or), upcoming (gris)
- Connexions visuelles entre jalons
- Progression % pour jalons actifs

---

## 🧪 Tests de Chargement

Toutes les pages ont été testées et se chargent sans erreur:

```bash
✓ Routes configurées (33 routes)
✓ Contrôleurs chargent (22)
✓ Templates existent (32)
✓ Syntaxe ERB valide
✓ Layouts imbriqués fonctionnels
```

---

## 🔄 Parcours Utilisateur Complets

### Journey Visiteur: Découverte → Inscription
1. Landing page (About ou Home)
2. Click "Explorer les projets"
3. Browse projets (filtre secteur)
4. Click sur un projet
5. Voir détails + jalons
6. Click "Télécharger" → "Connexion requise"
7. Click "Créer compte investisseur"
8. Remplir formulaire inscription ✓

### Journey Admin: Validation Projet
1. Dashboard → Voir "3 en attente"
2. Clic sur projet → Liste projets
3. Clic "Valider" → Page validation
4. Review analyse IA (score 92%)
5. Check red flags
6. Read documents
7. Add admin notes
8. Click "Valider le projet" ✓

### Journey Entrepreneur: Créer Projet
1. Dashboard → Click "Nouveau projet"
2. Fill formulaire (step 1)
3. Choose type contrat (Mudaraba)
4. Add 2 milestones
5. Upload documents
6. Submit → Pending validation

### Journey Investor: Investir
1. Dashboard → "Explorer projets"
2. Use filtres (secteur, contrat, montant)
3. Browse cards
4. Click projet intéressant
5. Read détails + timeline jalons
6. Download documents
7. Click "Marquer intérêt"
8. Enter montant (50K€)
9. Add message
10. Submit ✓

---

## 💻 Code Quality

### Bonnes Pratiques Respectées
- ✓ Namespaces Rails corrects
- ✓ Layouts imbriqués
- ✓ Partials possibles (non utilisés pour simplicité)
- ✓ Helpers path Rails
- ✓ Conventions ERB
- ✓ Classes Basecoat + Tailwind
- ✓ Accessibility (ARIA)
- ✓ Semantic HTML

### Points d'Amélioration Futurs
- Extraire partials communs (project card, user avatar, etc.)
- Connecter backend réel
- Remplacer emojis par SVG icons
- Implémenter vrais graphiques Chart.js
- Ajouter JavaScript interactions (modals, toasts)
- Upload réel de fichiers

---

## 📱 Responsive Design

Breakpoints utilisés:
- **sm:** 640px
- **md:** 768px
- **lg:** 1024px

Grids adaptatifs:
```html
grid-cols-1 md:grid-cols-2 lg:grid-cols-3
```

Sidebars:
- Desktop: Fixed 260px
- Mobile: À implémenter (collapse/drawer)

---

## 🎯 Objectif Atteint

Ces maquettes V2 offrent:
- ✅ Design moderne et professionnel
- ✅ Cohérence visuelle totale
- ✅ Accessibilité native
- ✅ Composants réutilisables
- ✅ Code maintenable
- ✅ Tous les user journeys illustrés
- ✅ Pages publiques pour acquisition visiteurs
- ✅ Flux de conversion vers inscription
- ✅ Charte Sharifund respectée
- ✅ Basecoat UI bien intégré

**Prêt pour comparaison avec V1!**

---

*Documentation mise à jour le: Janvier 2024*  
*Version: 2.1*  
*Framework: Basecoat UI 0.3.2 + Tailwind CSS*
