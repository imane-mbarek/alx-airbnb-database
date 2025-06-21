# Performance Monitoring Report

## Objectif

Optimiser les performances de la base de données en analysant les requêtes lentes, identifiant les goulots d'étranglement (bottlenecks), et en appliquant des ajustements comme des index ou des modifications de schéma.

---

## 1. Requête analysée

Requête fréquemment utilisée pour afficher les réservations d’un utilisateur :

```sql
SELECT * FROM bookings WHERE user_id = 1;

| Étape       | Type d'accès      | Index utilisé          | Temps estimé |
| ----------- | ----------------- | ---------------------- | ------------ |
| Avant index | `ALL` (full scan) | Aucun                  | Long         |
| Après index | `ref`             | `idx_bookings_user_id` | Court        |
