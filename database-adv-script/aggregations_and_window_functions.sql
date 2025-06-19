-- 1. Total bookings made by each user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- 2. Rank properties by total number of bookings (using RANK)
SELECT
    p.id AS property_id,
    COUNT(b.id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(b.id) DESC) AS rank
FROM properties p
LEFT JOIN bookings b ON p.id = b.property_id  -- ou autre clé de liaison
GROUP BY p.id
ORDER BY rank;

