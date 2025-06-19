# Complex SQL Queries with Joins

## Objective

This project aims to practice and demonstrate the use of SQL joins, including `INNER JOIN`, `LEFT JOIN`, and `FULL OUTER JOIN`, by querying data from an Airbnb-style database.

---

## Tasks

### 1. INNER JOIN — Bookings and Users

**Goal:** Retrieve all bookings along with the users who made those bookings.

```sql
SELECT bookings.*, users.*
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;


# Subqueries

Contient deux requêtes SQL avec sous-requêtes :

- Propriétés avec note moyenne > 4.0 (subquery non corrélée)  
- Utilisateurs avec plus de 3 réservations (subquery corrélée)

Fichier : `subqueries.sql`


# Aggregations and Window Functions

Ce fichier contient deux requêtes SQL illustrant :

- Le nombre total de réservations par utilisateur (avec `COUNT` et `GROUP BY`).
- Le classement des propriétés selon le nombre total de réservations (avec la fonction fenêtre `RANK()`).

Ces requêtes permettent d’analyser les données de réservation pour mieux comprendre l’activité des utilisateurs et la popularité des propriétés.

Fichier : `aggregations_and_window_functions.sql`
