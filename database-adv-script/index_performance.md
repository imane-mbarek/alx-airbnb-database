# Index Performance

Ce fichier contient les commandes SQL nécessaires pour créer des index sur les colonnes des tables `users`, `bookings`, et `reviews`.

## Objectif
Optimiser les requêtes en ajoutant des index sur :
- Les clés étrangères (user_id, property_id)
- Les colonnes utilisées dans des clauses `WHERE` ou `ORDER BY` (booking_date)

## Fichier concerné
- `database_index.sql` : contient les commandes `CREATE INDEX`
- `index_performance.md` : explique l'utilité de chaque index
