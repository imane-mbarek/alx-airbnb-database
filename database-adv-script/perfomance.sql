EXPLAIN
SELECT
    b.id AS booking_id,
    u.name AS user_name,
    p.title AS property_title,
    pay.amount AS payment_amount,
    b.booking_date
FROM bookings b
JOIN users u ON u.id = b.user_id
JOIN properties p ON p.id = b.property_id
JOIN payments pay ON pay.booking_id = b.id AND pay.amount > 0;

