# Database Normalization – Airbnb Clone Project

## Objective
Apply normalization principles to ensure the database design meets Third Normal Form (3NF).

---

## Step 1: First Normal Form (1NF)

To satisfy 1NF:
- All tables have a primary key.
- Each field contains only atomic values (no lists, arrays, or multiple values).
- Each record is unique.

✅ Our design already satisfies 1NF.

---

## Step 2: Second Normal Form (2NF)

To satisfy 2NF:
- The design must first meet 1NF.
- All non-key attributes must be fully functionally dependent on the entire primary key.

Since our tables have **single-column primary keys** (UUIDs), all non-key attributes are already fully functionally dependent on their keys.

✅ Our design satisfies 2NF.

---

## Step 3: Third Normal Form (3NF)

To satisfy 3NF:
- The design must meet 2NF.
- There should be **no transitive dependency** — non-key attributes must not depend on other non-key attributes.

We reviewed each table:
- `User`: email, name, phone, etc., depend only on user_id → OK
- `Property`: host_id is a FK, all other attributes depend only on property_id → OK
- `Booking`: all fields depend on booking_id → OK
- `Payment`: amount, method, etc., depend only on payment_id → OK
- `Review`: rating and comment depend only on review_id → OK
- `Message`: sender and recipient depend only on message_id → OK

✅ All tables follow 3NF. No further decomposition needed.

---

## Conclusion

Our database schema is fully normalized to 3NF. This helps reduce redundancy, avoid update anomalies, and ensures a scalable and maintainable structure.
