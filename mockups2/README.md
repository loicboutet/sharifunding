# Sharifund - Maquettes Interface Utilisateur V2

## 📋 Vue d'ensemble

Ce document présente l'ensemble des pages de la plateforme Sharifund du point de vue de l'utilisateur. Chaque page est décrite selon son objectif, son contenu et les actions possibles pour l'utilisateur.

---

## 🌍 Pages Publiques

### 1. Page À propos
**Ce que l'utilisateur voit :**
- Présentation de la mission de Sharifund
- Explication des types de financement halal (Mudaraba, Musharaka, Murabaha)
- Avantages pour les entrepreneurs et investisseurs
- Témoignages et statistiques clés

**Actions possibles :**
- Consulter les informations sur la plateforme
- Accéder aux pages d'inscription ou de connexion

---

### 2. Page de Connexion
**Ce que l'utilisateur voit :**
- Formulaire avec email et mot de passe
- Option "Se souvenir de moi"
- Lien "Mot de passe oublié"
- Bouton de connexion via Google OAuth (optionnel)

**Actions possibles :**
- Se connecter avec ses identifiants
- Se connecter via Google
- Demander la réinitialisation du mot de passe
- Accéder à la page d'inscription

---

### 3. Page d'Inscription
**Ce que l'utilisateur voit :**
- Choix du type de compte (Entrepreneur ou Investisseur)
- Formulaire d'inscription avec :
  - Informations personnelles (nom, prénom, email)
  - Création de mot de passe
  - Pour Entrepreneur : nom de l'entreprise, secteur d'activité
  - Pour Investisseur : montant d'investissement disponible, secteurs d'intérêt
- Cases à cocher pour acceptation des conditions d'utilisation

**Actions possibles :**
- Créer un compte entrepreneur ou investisseur
- Se connecter avec Google
- Accéder à la page de connexion si déjà inscrit

---

## 👨‍💼 Interface Administrateur (9 pages)

### 4. Dashboard Admin
**Ce que l'administrateur voit :**
- Statistiques globales :
  - Nombre total de projets
  - Projets en attente de validation
  - Nombre d'entrepreneurs et d'investisseurs actifs
  - Montant total des engagements
- Liste des derniers projets soumis nécessitant une action
- Graphiques d'évolution de l'activité
- Alertes et notifications importantes

**Actions possibles :**
- Accéder rapidement aux projets à valider
- Voir les statistiques en temps réel
- Naviguer vers les différentes sections

---

### 5. Liste des Projets (Admin)
**Ce que l'administrateur voit :**
- Tableau complet de tous les projets avec :
  - Nom du projet et entrepreneur
  - Montant recherché
  - Type de financement halal
  - Statut (En attente, Validé Charia, Rejeté, Financé, Clos)
  - Score de conformité IA
  - Date de soumission
- Filtres par statut, secteur, montant
- Barre de recherche

**Actions possibles :**
- Filtrer et rechercher des projets
- Cliquer sur un projet pour voir les détails
- Voir le score de conformité pré-calculé par l'IA

---

### 6. Détail d'un Projet (Admin)
**Ce que l'administrateur voit :**
- Informations complètes du projet :
  - Description détaillée
  - Montant et type de financement
  - Informations sur l'entrepreneur
  - Liste des jalons (milestones)
  - Documents attachés (business plan, pitch deck, etc.)
- Historique des actions et commentaires admin
- Liste des investisseurs ayant marqué leur intérêt

**Actions possibles :**
- Télécharger les documents
- Lire les commentaires précédents
- Accéder à la page de validation Charia
- Voir les marques d'intérêt des investisseurs

---

### 7. Interface de Validation Charia (★ Page Clé)
**Ce que l'administrateur voit :**
- Analyse IA automatique avec :
  - Score de conformité Charia (0-100%)
  - Type de contrat halal recommandé
  - Red flags détectés (alcool, intérêts, jeux, etc.)
  - Points de vigilance à vérifier
- Critères de conformité pré-remplis
- Section pour ajouter des commentaires
- Boutons d'action : Valider / Demander modifications / Rejeter

**Actions possibles :**
- Consulter l'analyse IA
- Modifier les critères si nécessaire
- Ajouter des notes/commentaires
- Valider le projet comme conforme à la Charia
- Demander des modifications à l'entrepreneur
- Rejeter le projet avec justification

---

### 8. Liste des Utilisateurs
**Ce que l'administrateur voit :**
- Tableau de tous les utilisateurs :
  - Nom, prénom, email
  - Type (Admin, Entrepreneur, Investisseur)
  - Statut du compte (Actif, Suspendu, En attente confirmation)
  - Date d'inscription
  - Dernière connexion
- Filtres par type et statut
- Barre de recherche

**Actions possibles :**
- Rechercher un utilisateur spécifique
- Cliquer pour voir le profil détaillé
- Suspendre ou réactiver un compte
- Voir l'activité d'un utilisateur

---

### 9. Détail d'un Utilisateur
**Ce que l'administrateur voit :**
- Profil complet de l'utilisateur
- Historique d'activité :
  - Pour entrepreneur : projets créés, statuts
  - Pour investisseur : engagements pris, montants
- Statistiques personnelles
- Notes administratives

**Actions possibles :**
- Consulter l'historique complet
- Ajouter des notes internes
- Modifier le statut du compte
- Contacter l'utilisateur

---

### 10. Liste des Jalons à Valider
**Ce que l'administrateur voit :**
- Tableau des jalons déclarés comme atteints par les entrepreneurs :
  - Nom du projet
  - Nom du jalon
  - Date de déclaration
  - Documents de preuve fournis
  - Statut (En attente validation / Validé / Rejeté)
- Filtres par projet et statut

**Actions possibles :**
- Consulter les preuves fournies
- Télécharger les documents justificatifs
- Accéder au détail du jalon
- Valider ou rejeter l'atteinte du jalon

---

### 11. Détail d'un Jalon
**Ce que l'administrateur voit :**
- Description complète du jalon
- Date cible vs date de déclaration
- Documents de preuve téléchargés
- Commentaires de l'entrepreneur
- Historique des actions

**Actions possibles :**
- Examiner les preuves
- Ajouter des commentaires
- Valider l'atteinte du jalon
- Rejeter avec demande de compléments

---

### 12. Statistiques Avancées
**Ce que l'administrateur voit :**
- Graphiques détaillés :
  - Évolution des projets soumis par mois
  - Répartition par secteur d'activité
  - Taux de validation/rejet
  - Montants engagés par type de financement
- Top 5 des projets par montant levé
- Top 5 des investisseurs les plus actifs
- Métriques de performance de la plateforme

**Actions possibles :**
- Consulter les tendances
- Exporter les données
- Filtrer par période

---

## 🚀 Interface Entrepreneur (10 pages)

### 13. Dashboard Entrepreneur
**Ce que l'entrepreneur voit :**
- Vue d'ensemble de ses projets :
  - Nombre de projets actifs
  - Montant total recherché
  - Nombre d'engagements reçus
  - Montant total des engagements
- Ses projets avec statut et progression
- Derniers investisseurs ayant marqué leur intérêt
- Prochaines actions à effectuer
- Notifications importantes

**Actions possibles :**
- Accéder à la création d'un nouveau projet
- Voir le détail de chaque projet
- Consulter les engagements reçus
- Répondre aux messages

---

### 14. Liste de Mes Projets
**Ce que l'entrepreneur voit :**
- Tous ses projets sous forme de cartes avec :
  - Nom et image du projet
  - Statut (Brouillon, En attente validation, Validé, Rejeté, Financé)
  - Montant recherché vs engagements reçus
  - Barre de progression
  - Nombre d'investisseurs intéressés
  - Prochains jalons
- Bouton pour créer un nouveau projet

**Actions possibles :**
- Créer un nouveau projet
- Voir le détail d'un projet
- Modifier un projet (si pas encore validé)
- Supprimer un brouillon

---

### 15. Créer un Nouveau Projet (★ Page Clé)
**Ce que l'entrepreneur voit :**
Formulaire en plusieurs étapes :

**Étape 1 - Informations générales :**
- Nom du projet
- Description courte
- Secteur d'activité
- Localisation

**Étape 2 - Détails financiers :**
- Montant recherché
- Type de financement halal souhaité (Mudaraba / Musharaka / Murabaha)
- Durée du projet
- Utilisation des fonds

**Étape 3 - Description détaillée :**
- Pitch complet du projet
- Problème résolu
- Solution proposée
- Marché cible
- Concurrence

**Étape 4 - Jalons (Milestones) :**
- Définition des étapes clés avec dates et objectifs
- Possibilité d'ajouter plusieurs jalons

**Étape 5 - Documents :**
- Upload du business plan (PDF)
- Upload du pitch deck (PDF)
- Documents complémentaires

**Actions possibles :**
- Remplir le formulaire étape par étape
- Sauvegarder en brouillon
- Prévisualiser le projet
- Soumettre pour validation

---

### 16. Voir le Détail de Mon Projet
**Ce que l'entrepreneur voit :**
- Toutes les informations du projet
- Statut actuel et historique
- Commentaires de l'admin (si validation en cours ou rejet)
- Liste des investisseurs ayant marqué leur intérêt avec :
  - Nom de l'investisseur
  - Montant proposé
  - Message éventuel
  - Coordonnées
- Timeline des jalons avec progression
- Statistiques de visibilité du projet

**Actions possibles :**
- Voir qui s'intéresse au projet
- Contacter les investisseurs
- Déclarer l'atteinte d'un jalon
- Modifier le projet (avant validation)
- Télécharger ses propres documents

---

### 17. Modifier un Projet
**Ce que l'entrepreneur voit :**
- Même formulaire que la création mais pré-rempli
- Indication des champs modifiables (selon le statut)
- Avertissement si le projet est déjà validé

**Actions possibles :**
- Modifier les informations (si autorisé)
- Ajouter de nouveaux documents
- Mettre à jour les jalons
- Soumettre les modifications

---

### 18. Engagements Reçus
**Ce que l'entrepreneur voit :**
- Liste organisée par projet de tous les investisseurs intéressés
- Pour chaque engagement :
  - Photo et nom de l'investisseur
  - Montant proposé
  - Date de l'engagement
  - Message éventuel
  - Statut (Nouveau / Contacté / En discussion)
- Filtres par projet et montant

**Actions possibles :**
- Filtrer par projet
- Voir le profil de l'investisseur
- Envoyer un message
- Marquer comme contacté
- Télécharger la liste en CSV

---

### 19. Messages (Entrepreneur)
**Ce que l'entrepreneur voit :**
Interface de messagerie en 3 colonnes :
- **Colonne 1** : Liste des conversations avec photo, nom et dernier message
- **Colonne 2** : Fil de messages de la conversation sélectionnée
- **Colonne 3** : Informations sur l'investisseur et le projet concerné

**Actions possibles :**
- Lire les messages reçus
- Répondre aux investisseurs
- Créer une nouvelle conversation
- Rechercher dans les messages
- Marquer comme lu/non lu

---

### 20. Mon Profil Entrepreneur (Voir)
**Ce que l'entrepreneur voit :**
- Photo de profil
- Informations personnelles
- Informations sur l'entreprise :
  - Nom, secteur, taille
  - Description
  - Site web, réseaux sociaux
- Statistiques :
  - Projets créés
  - Montant total recherché
  - Taux de succès

**Actions possibles :**
- Voir son profil tel que visible par les investisseurs
- Accéder à la modification du profil

---

### 21. Modifier Mon Profil Entrepreneur
**Ce que l'entrepreneur voit :**
- Formulaire éditable avec tous les champs du profil
- Upload photo de profil
- Champs de l'entreprise modifiables

**Actions possibles :**
- Modifier ses informations
- Changer sa photo
- Mettre à jour les informations de l'entreprise
- Sauvegarder les modifications

---

### 22. Déclarer l'Atteinte d'un Jalon
**Ce que l'entrepreneur voit :**
- Détails du jalon à valider
- Formulaire pour :
  - Date d'atteinte
  - Description de ce qui a été accompli
  - Upload de documents de preuve
  - Commentaires additionnels

**Actions possibles :**
- Remplir le formulaire de validation
- Uploader les preuves (photos, documents, rapports)
- Soumettre pour validation admin

---

## 💰 Interface Investisseur (8 pages)

### 23. Dashboard Investisseur
**Ce que l'investisseur voit :**
- Vue d'ensemble de son activité :
  - Nombre de projets suivis
  - Montant total des engagements
  - Projets recommandés selon ses préférences
- Ses engagements actifs avec progression des jalons
- Nouveaux projets correspondant à ses critères
- Statistiques de son portefeuille simulé

**Actions possibles :**
- Voir les projets recommandés
- Accéder à l'exploration de projets
- Consulter ses engagements
- Ajuster ses préférences

---

### 24. Explorer les Projets (★ Page Clé)
**Ce que l'investisseur voit :**
- Grille de cartes de projets validés avec :
  - Image du projet
  - Nom et secteur
  - Montant recherché
  - Type de financement halal
  - Badge de conformité Charia
  - Barre de progression (engagements reçus)
  - Courte description
- Barre de recherche
- Filtres multiples :
  - Par secteur d'activité
  - Par montant
  - Par type de financement halal
  - Par localisation
  - Par progression

**Actions possibles :**
- Rechercher des projets
- Filtrer selon ses critères
- Cliquer sur un projet pour voir le détail
- Marquer un projet comme favori

---

### 25. Détail d'un Projet (Investisseur) (★ Page Clé)
**Ce que l'investisseur voit :**
- **En-tête** : Nom, secteur, badges de conformité
- **Section 1** : Description complète du projet
- **Section 2** : Détails financiers et type de financement
- **Section 3** : Timeline visuelle des jalons avec :
  - Nom de chaque jalon
  - Date cible
  - Statut (À venir / En cours / Atteint / Validé)
  - Indicateur de progression
- **Section 4** : Documents téléchargeables (business plan, pitch deck)
- **Section 5** : Conformité Charia avec explications
- **Section 6** : Profil de l'entrepreneur
- **Section 7** : Statistiques du projet (vues, engagements)
- Bouton principal : "Marquer mon engagement"

**Actions possibles :**
- Lire toutes les informations du projet
- Télécharger les documents
- Voir la progression des jalons
- Consulter le profil de l'entrepreneur
- Marquer son engagement financier
- Envoyer un message à l'entrepreneur
- Ajouter aux favoris

---

### 26. Marquer Mon Engagement (★ Page Clé)
**Ce que l'investisseur voit :**
Formulaire intuitif dans une modal ou page dédiée :
- Récapitulatif du projet
- Slider pour choisir le montant (avec min/max suggérés)
- Affichage dynamique du montant sélectionné
- Zone de message optionnelle pour l'entrepreneur
- Checkbox de confirmation : "Je comprends que cet engagement est indicatif et non contractuel"
- Explications sur la suite du processus

**Actions possibles :**
- Choisir le montant de son engagement avec le slider
- Écrire un message personnalisé
- Confirmer son engagement
- Annuler

---

### 27. Mes Engagements (Portfolio)
**Ce que l'investisseur voit :**
- Vue en cartes de tous les projets où il a marqué un engagement
- Pour chaque projet :
  - Image et nom
  - Montant de son engagement
  - Progression globale du projet
  - État des jalons
  - Montant total des engagements reçus par le projet
  - Statut (Actif / Financé / Clos)
- Statistiques de son portefeuille :
  - Montant total engagé
  - Nombre de projets suivis
  - Répartition par secteur

**Actions possibles :**
- Voir le détail de chaque projet
- Suivre la progression des jalons
- Contacter l'entrepreneur
- Modifier son engagement (si permis)
- Retirer son engagement (avant validation)

---

### 28. Messages (Investisseur)
**Ce que l'investisseur voit :**
Interface similaire à celle de l'entrepreneur :
- **Colonne 1** : Liste des conversations avec les entrepreneurs
- **Colonne 2** : Fil de messages
- **Colonne 3** : Informations sur le projet et l'entrepreneur

**Actions possibles :**
- Lire et répondre aux messages
- Initier une conversation avec un entrepreneur
- Rechercher dans les messages
- Voir le projet concerné par la conversation

---

### 29. Mon Profil Investisseur (Voir)
**Ce que l'investisseur voit :**
- Photo de profil
- Informations personnelles
- Préférences d'investissement :
  - Secteurs d'intérêt
  - Montants d'investissement typiques
  - Types de financement halal préférés
  - Localisation géographique
- Statistiques :
  - Engagements pris
  - Projets suivis
  - Membre depuis

**Actions possibles :**
- Voir son profil tel que visible par les entrepreneurs
- Accéder à la modification

---

### 30. Modifier Mon Profil et Préférences
**Ce que l'investisseur voit :**
- Formulaire éditable avec :
  - Informations personnelles
  - Photo de profil
  - Préférences d'investissement (checkboxes multiples)
  - Montant d'investissement disponible
  - Notifications souhaitées

**Actions possibles :**
- Modifier ses informations
- Ajuster ses préférences pour les recommandations
- Choisir les notifications à recevoir
- Sauvegarder les modifications

---

## 🎨 Identité Visuelle

### Couleurs Principales
- **Or (#C4A574)** : Couleur signature de Sharifund
- **Vert (#2D7A4F)** : Représente la conformité Charia et le label "Halal"
- **Bleu (#4A90E2)** : Informations et actions
- **Noir (#000000)** : Textes principaux

### Typographie
- Police principale : **Inter** (moderne, lisible, professionnelle)

### Éléments Visuels Récurrents
- **Badges** : Pour les statuts, conformité Charia, types de financement
- **Barres de progression** : Pour visualiser les montants engagés vs recherchés
- **Cartes** : Pour afficher les projets, engagements, statistiques
- **Timeline** : Pour les jalons des projets
- **Icons** : Pour améliorer la compréhension rapide

---

## 📱 Principes d'Interface

### Accessibilité
- Contrastes suffisants pour une lecture facile
- Navigation au clavier possible
- Labels clairs sur tous les éléments interactifs

### Responsive Design
- Adaptation automatique sur mobile, tablette et desktop
- Navigation mobile simplifiée
- Actions principales toujours accessibles

### Feedback Utilisateur
- Messages de confirmation après chaque action
- Indicateurs de chargement
- Messages d'erreur clairs et constructifs
- Notifications pour les événements importants

---

## 🔄 Parcours Utilisateur Typiques

### Pour un Entrepreneur :
1. S'inscrire et compléter son profil
2. Créer un premier projet avec tous les détails
3. Soumettre pour validation
4. Recevoir la validation (ou demandes de modifications)
5. Voir les investisseurs marquer leur intérêt
6. Échanger avec les investisseurs via la messagerie
7. Déclarer l'atteinte des jalons au fil du temps

### Pour un Investisseur :
1. S'inscrire et définir ses préférences
2. Explorer les projets validés
3. Consulter les détails d'un projet qui l'intéresse
4. Télécharger et lire le business plan
5. Marquer son engagement financier
6. Suivre la progression du projet
7. Échanger avec l'entrepreneur si besoin

### Pour un Admin :
1. Voir les nouveaux projets soumis
2. Consulter l'analyse IA de conformité Charia
3. Examiner les documents fournis
4. Valider ou demander des modifications
5. Surveiller l'activité de la plateforme
6. Valider les jalons déclarés atteints

---

## ✨ Pages Clés à Retenir (Top 5)

1. **Interface de Validation Charia (Admin)** - Le cœur du processus de conformité
2. **Créer un Nouveau Projet (Entrepreneur)** - Formulaire complet et intuitif
3. **Explorer les Projets (Investisseur)** - Catalogue avec filtres puissants
4. **Détail d'un Projet (Investisseur)** - Toutes les infos pour décider
5. **Marquer Mon Engagement** - Expérience fluide pour l'investisseur

---

**Note** : Toutes ces interfaces sont conçues pour être intuitives, modernes et conformes aux principes de la finance islamique. L'accent est mis sur la transparence, la clarté des informations et la facilité d'utilisation.
