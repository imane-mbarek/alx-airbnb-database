# Optimization Report

## Initial Query
We joined bookings, users, properties, and payments. The query included a condition on payment amount.

## Performance Analysis
We used `EXPLAIN` to analyze the query. Indexes on `bookings.property_id`, `user_id`, and `payments.booking_id` helped optimize joins. The payments table still performs a full table scan due to `pay.amount > 0`.

## Improvements
An index on `payments.amount` could further improve performance if queries frequently filter on this column.
