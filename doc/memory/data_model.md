# Architecture des Données - Sharifund MVP Phase 1

## Modèles de Données

### 1. User
**Rôles:** `admin`, `entrepreneur`, `investor` (enum)

**Attributs essentiels:**
- Devise standard (email, password, confirmable, recoverable)
- `role` (enum, required)
- `first_name`, `last_name`, `phone`

**Relations:**
- `has_one :entrepreneur_profile`
- `has_one :investor_profile`

---

### 2. EntrepreneurProfile
**Attributs:**
- `user_id` (FK unique)
- `company_name` (required)
- `company_registration_number`
- `company_address`, `company_city`, `company_country`
- `industry_sector`
- `bio`, `website`, `linkedin_url`

**Relations:**
- `belongs_to :user`
- `has_many :projects`

---

### 3. InvestorProfile
**Attributs:**
- `user_id` (FK unique)
- `investor_type` (enum: individual, institutional, family_office)
- `investment_capacity_range` (enum: under_10k, 10k_50k, 50k_100k, 100k_500k, over_500k)
- `preferred_sectors` (json array)
- `preferred_contract_types` (json array)
- `bio`, `linkedin_url`, `country`, `city`

**Relations:**
- `belongs_to :user`
- `has_many :interests`

---

### 4. Project
**Attributs:**
- `entrepreneur_profile_id` (FK)
- `title`, `slug`, `description`, `short_description`
- `funding_goal` (decimal), `currency` (default: EUR)
- `contract_type` (enum: mudaraba, musharaka, murabaha)
- `industry_sector`
- `status` (enum: draft, pending, ai_review, admin_review, approved, rejected, funded, closed)
- `rejection_reason`
- `expected_duration_months`, `expected_return_percentage`
- `sharia_compliance_score` (integer 0-100)
- `sharia_compliance_analysis` (json)
- `sharia_validated_at`, `sharia_validated_by_id` (FK User)
- `published_at`, `admin_notes`
- `view_count`, `interest_count`, `total_simulated_amount` (counters)

**Relations:**
- `belongs_to :entrepreneur_profile`
- `has_many :milestones`
- `has_many :documents` (polymorphic)
- `has_many :interests`
- `has_many :messages`

---

### 5. Milestone
**Attributs:**
- `project_id` (FK)
- `title`, `description`
- `target_date`, `order_position`
- `status` (enum: upcoming, in_progress, achieved, validated, rejected)
- `achieved_at`, `achieved_proof`
- `validated_at`, `validated_by_id` (FK User)
- `admin_validation_notes`

**Relations:**
- `belongs_to :project`
- `has_many :documents` (polymorphic)

---

### 6. Document (Polymorphic)
**Attributs:**
- `documentable_type`, `documentable_id` (polymorphic)
- `title`, `description`
- `document_type` (enum: business_plan, pitch_deck, financial_projections, legal_document, sharia_certificate, milestone_proof, other)
- `uploaded_by_id` (FK User)
- Active Storage attachment: `file`

**Relations:**
- `belongs_to :documentable` (polymorphic: Project ou Milestone)
- `belongs_to :uploaded_by` (User)

---

### 7. Interest
**Attributs:**
- `investor_profile_id` (FK)
- `project_id` (FK)
- `simulated_amount` (decimal, required)
- `message` (text, optional)
- `status` (enum: active, withdrawn, expired)

**Validations:**
- Unique composite index: [investor_profile_id, project_id]

**Relations:**
- `belongs_to :investor_profile`
- `belongs_to :project`

---

### 8. Message
**Attributs:**
- `project_id` (FK)
- `sender_id`, `recipient_id` (FK User)
- `subject`, `body`
- `read_at`
- `parent_message_id` (FK self-referential, nullable)

**Relations:**
- `belongs_to :project`
- `belongs_to :sender` (User)
- `belongs_to :recipient` (User)
- `belongs_to :parent_message` (optional)

---

### 9. Notification
**Attributs:**
- `user_id` (FK)
- `notification_type` (enum: project_validated, project_rejected, new_interest, new_message, milestone_achieved, milestone_validated)
- `title`, `message`
- `notifiable_type`, `notifiable_id` (polymorphic)
- `read_at`, `sent_email_at`

**Relations:**
- `belongs_to :user`
- `belongs_to :notifiable` (polymorphic)

---

### 10. AiAnalysis
**Attributs:**
- `project_id` (FK)
- `analysis_version`
- `compliance_score` (integer 0-100)
- `suggested_contract_type` (enum)
- `contract_type_confidence` (decimal)
- `red_flags`, `compliance_factors`, `recommendations` (json)
- `raw_analysis_data` (json)
- `processing_time_ms`
- `status` (enum: pending, processing, completed, failed)
- `error_message`

**Relations:**
- `belongs_to :project`

---

## Workflow Principal

**Projet:**
draft → pending → ai_review → admin_review → approved/rejected

**Milestone:**
upcoming → in_progress → achieved → validated/rejected

---

## Indexes Critiques

```ruby
# Users
add_index :users, :email, unique: true
add_index :users, :role

# Projects
add_index :projects, :entrepreneur_profile_id
add_index :projects, :slug, unique: true
add_index :projects, :status
add_index :projects, [:status, :published_at]

# Interests
add_index :interests, [:investor_profile_id, :project_id], unique: true

# Messages
add_index :messages, [:sender_id, :recipient_id]
add_index :messages, :read_at

# Notifications
add_index :notifications, :user_id
add_index :notifications, [:notifiable_type, :notifiable_id]

# Documents (polymorphic)
add_index :documents, [:documentable_type, :documentable_id]

# Milestones
add_index :milestones, [:project_id, :order_position]
```

---

## Permissions par Rôle

**Entrepreneur:**
- CRUD ses projets (si draft/pending)
- Déclarer jalons atteints
- Voir intérêts sur ses projets
- Répondre aux messages

**Investisseur:**
- Voir projets approved
- Créer 1 intérêt/projet (unique)
- Télécharger documents
- Envoyer messages

**Admin:**
- Tout voir
- Valider/rejeter projets et jalons
- Modérer

---

## Stack Technique

- **Auth:** Devise (confirmable, recoverable)
- **Authorization:** Pundit
- **Files:** Active Storage
- **AI:** API externe (async via Active Job)
- **Emails:** Action Mailer (async)
- **Pagination:** Pagy (20/page)

---

## Notes Dev

- Toujours `rails g migration` pour timestamps
- Tests requis pour chaque modèle
- Utiliser counter_cache pour performance
- Eager loading pour éviter N+1
- Callbacks uniquement si nécessaire (KISS)

---

*MVP Phase 1 - Finance Islamique*
