# Client Feedback V1 - Analysis & Response

## Date: Current session

---

## What Was Actually Implemented (In Scope)

### 1. Page Publique ✅
**Request:** "La page publique devra avoir toutes les caractéristiques de la page d'un investisseur (partie Explorer les projets)"

**Implemented:**
- `GET /mockups2/projects` - Public project exploration page
- `GET /mockups2/projects/:id` - Public project detail page
- Same layout as investor but with login CTAs for actions

### 2. Entrepreneur: Milestone Amounts ✅
**Request:** "inclure la détermination des montants correspondant aux différents jalons"

**Implemented:**
- Each milestone in the project form now has an amount field
- Total milestone amount is calculated and displayed
- Info box explains validation process

---

## Questions Answered (Not Implemented - Out of Scope or Phase 2)

| Client Question | Response |
|-----------------|----------|
| "Validation des jalons c'est une tâche de l'auditeur technique mais j'imagine qu'on créera ce profil plus tard" | ✅ Oui, le rôle d'auditeur technique sera créé en Phase 2. Pour le MVP, l'Admin valide les jalons. |
| "peut-on rajouter plus tard le scoring attribué par les investisseurs aux entrepreneurs ?" | ✅ Oui, c'est envisageable en Phase 2 après les premiers projets financés. |
| "faire un bloc dédié aux projets en exploitation (à discuter, par rapport à la faisabilité)" | ✅ Faisable en Phase 2. Le MVP ne gère pas encore la phase post-financement (exploitation). |
| "est-ce qu'il est envisageable que l'IA regarde la solidité du business plan financier" | ⚠️ Hors scope MVP. L'IA actuelle se limite à : suggestion de contrat halal, détection red flags Charia, score de conformité. L'analyse financière pourrait être Phase 2+. |
| "Réflexion à mener sur l'intégration d'image, vidéo de présentation du projet" | ✅ Possible. À confirmer si prioritaire pour MVP ou Phase 2. |
| "peut-on rajouter une alerte pour les milestone (date estimative d'achèvement)" | ✅ Possible dans le scope. Les dates sont déjà collectées, les alertes peuvent être ajoutées. |
| "alerte par rapport au retard de transmission du rapport mensuel de construction, rapport annuel d'exploitation, rapport d'audit financier" | ⚠️ Phase 2. Ces rapports concernent la phase exploitation (post-financement), non incluse dans MVP. |
| "Visibilité sur le scoring attribué par les investisseurs" | ⚠️ Phase 2. Le scoring n'existe pas encore dans MVP. |
| "indiquer si l'impact de Taux de change est pris en charge par l'investisseur ou entrepreneur" | ❓ Question : Le MVP supporte-t-il le multi-devises ? Si oui, à ajouter. Si non, Phase 2. |

---

## Files Modified (Final State)

| File | Change |
|------|--------|
| `app/views/mockups2/public/projects.html.erb` | Created - Public explorer |
| `app/views/mockups2/public/show.html.erb` | Created - Public project detail |
| `app/controllers/mockups2/public_controller.rb` | Modified - Added actions |
| `config/routes.rb` | Modified - Added public routes |
| `app/views/mockups2/entrepreneur/projects/new.html.erb` | Modified - Added milestone amounts |
| `app/views/mockups2/entrepreneur/dashboard/index.html.erb` | Reverted to original (removed out-of-scope features) |
| `app/views/mockups2/admin/projects/index.html.erb` | Reverted to original (removed exploitation section) |
| `app/views/mockups2/admin/statistics/index.html.erb` | Reverted to original (removed placeholders) |

---

## Scope Reference (Brique 1 MVP)

### In Scope:
- ✅ Public viewing of projects
- ✅ Milestone management with amounts
- ✅ Admin validates projects and milestones
- ✅ Basic AI: contract suggestion, Charia red flags, conformity score

### Out of Scope (explicitly excluded):
- ❌ Post-funding exploitation tracking
- ❌ Financial report management
- ❌ Investor scoring of entrepreneurs
- ❌ AI financial analysis of business plans
- ❌ Technical auditor role (Admin does it for MVP)
- ❌ Multi-currency / exchange rate handling (unless specified)
