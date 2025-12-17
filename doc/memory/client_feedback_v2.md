# Retours Client V2 - Modifications Maquettes

**Date**: 2024
**Status**: ✅ Implémenté

---

## Résumé des retours client

Le client a fourni des retours sur les maquettes V2. Cette documentation liste les modifications demandées, leur analyse par rapport aux specs MVP Phase 1, et le statut d'implémentation.

---

## Modifications IMPLÉMENTÉES (dans le scope)

### 1. Score AI Halal - Visibilité restreinte
**Demande**: Le score AI Halal doit être visible uniquement pour l'admin (et l'auditeur Sharia futur), pas pour le public ni pour l'investisseur.

**Justification**: Le score IA est un outil d'aide à la décision interne. Les specs mentionnent: "Je peux consulter les critères de conformité pré-remplis par l'IA" uniquement pour l'Admin.

**Fichiers modifiés**:
- `app/views/mockups2/public/projects.html.erb` - Badge Score IA retiré des cartes
- `app/views/mockups2/public/show.html.erb` - Section Score IA retirée de la sidebar
- `app/views/mockups2/investor/projects/index.html.erb` - Badge Score IA retiré des cartes  
- `app/views/mockups2/investor/projects/show.html.erb` - Section Score IA retirée de la sidebar

**Note**: Le score IA reste visible dans `admin/projects/validation.html.erb`

---

### 2. Marge attendue visible sur les projets
**Demande**: Le pourcentage de marge attendue sur le projet devrait apparaître sur les projets visibles par le public et l'investisseur (à la place du score AI Halal).

**Justification**: Le champ `expected_return_percentage` existe dans le data model. Information pertinente pour les investisseurs potentiels.

**Modifications**:
- Badge en haut à droite des cartes projet: `Marge: XX%/an` (fond vert)
- Section détails financiers: "Marge attendue" au lieu de "Rentabilité estimée"
- Ajout d'une 4ème colonne dans les stats du projet (Marge/an)

**Fichiers modifiés**:
- `app/views/mockups2/public/projects.html.erb`
- `app/views/mockups2/public/show.html.erb`
- `app/views/mockups2/investor/projects/index.html.erb`
- `app/views/mockups2/investor/projects/show.html.erb`

---

### 3. Jalons proposés dans validation admin
**Demande**: La proposition de jalons et montants associés faite par l'entrepreneur lors de la soumission d'un nouveau projet doit figurer dans la section validation d'un projet pour l'admin.

**Justification**: Les specs mentionnent "Jalons (milestones) prévus" dans la soumission de projet. L'admin doit pouvoir les examiner pour valider.

**Fichier modifié**: `app/views/mockups2/admin/projects/validation.html.erb`

**Nouvelle section ajoutée**: "Jalons proposés par l'entrepreneur" incluant:
- Liste numérotée des jalons
- Titre et date cible de chaque jalon
- Montant associé (en € et en % du total)
- Description détaillée
- Total récapitulatif

---

### 4. Terminologie clarifiée
**Modification**: "Financement simulé" → "Engagements simulés"

**Raison**: Éviter la confusion avec un financement réel. En Phase 1 MVP, il n'y a pas de transactions financières, seulement des engagements d'intention.

**Fichiers modifiés**: Tous les fichiers de projets (public + investisseur)

---

## Modifications NON IMPLÉMENTÉES (hors scope)

### 5. Montant réellement investi vs simulé
**Demande**: Distinguer montant simulé (engagement) et montant réellement investi.

**Statut**: ❌ HORS SCOPE MVP Phase 1

**Raison**: Les specs excluent explicitement: "❌ Transactions financières réelles (pas de paiement)". En Phase 1, il n'existe QUE des engagements simulés, pas d'investissements réels.

**Recommandation**: Fonctionnalité prévue pour Phase 2 après obtention des licences réglementaires.

---

### 6. Scoring investisseurs → entrepreneurs
**Demande**: Visibilité sur le scoring attribué par les investisseurs aux entrepreneurs.

**Statut**: ❌ HORS SCOPE MVP Phase 1

**Raison**: Les specs excluent explicitement: "❌ Système de notation/avis des projets"

**Recommandation**: Fonctionnalité à prévoir pour une phase ultérieure.

---

### 7. Bloc projets en exploitation
**Demande**: Créer un bloc dédié aux projets en exploitation comportant des indicateurs (retards rapports, non-paiement, feedbacks négatifs).

**Statut**: ❌ HORS SCOPE MVP Phase 1

**Raison**: Implique:
- Transactions financières réelles (exclu)
- Reporting opérationnel avancé (non prévu)
- Système de notation (exclu)

---

### 8. IA évalue solidité business plan
**Demande**: IA évalue la solidité du business plan financier (cohérence chiffres, bilan, BFR, etc.)

**Statut**: ❌ HORS SCOPE MVP Phase 1 (à discuter)

**Raison**: Les specs mentionnent uniquement "Pré-filtrage IA basique" pour conformité Charia. L'analyse financière avancée n'est pas incluse.

**Note client**: "Nous pourrons rediscuter de ce point" - À prévoir pour phase ultérieure.

---

### 9. Profils Auditeur technique et Auditeur Sharia
**Demande**: Nouveaux profils utilisateurs à ajouter.

**Statut**: ⏳ PRÉVU ULTÉRIEUREMENT

**Raison**: Le client lui-même indique "à ajouter ultérieurement". Le data model actuel ne prévoit que 3 rôles: admin, entrepreneur, investor.

---

### 10. Refonte design style wahed.com
**Demande**: Landing page et fonctionnalités plus visuelles, comme wahed.com.

**Statut**: ❌ HORS SCOPE Brique 1

**Raison**: Une refonte design complète dépasse le budget Brique 1 (5000€). Les maquettes actuelles ont été validées.

**Recommandation**: Prévoir un budget spécifique design/UI pour une phase ultérieure ou utiliser un service dédié (Simplébo mentionné par client).

---

## Récapitulatif des fichiers modifiés

| Fichier | Modifications |
|---------|--------------|
| `public/projects.html.erb` | Score IA → Marge, terminologie engagements |
| `public/show.html.erb` | Score IA retiré, marge ajoutée |
| `investor/projects/index.html.erb` | Score IA → Marge |
| `investor/projects/show.html.erb` | Score IA retiré, marge ajoutée |
| `admin/projects/validation.html.erb` | Section jalons ajoutée |

---

## Tests recommandés

1. Vérifier que le Score IA n'apparaît plus sur les pages publiques
2. Vérifier que le Score IA n'apparaît plus sur les pages investisseur
3. Vérifier que le Score IA est toujours visible sur admin/validation
4. Vérifier que la marge attendue est affichée sur toutes les cartes projet
5. Vérifier que les jalons proposés apparaissent dans la validation admin

---

*Implémenté conformément aux specs MVP Phase 1 - Brique 1*
