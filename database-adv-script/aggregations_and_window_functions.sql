-- 1. Total bookings made by each user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- 2. Rank properties by total number of bookings (using RANK)
SELECT 
    property_id,
    COUNT(*) AS bookings_count,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS rank
FROM bookings
GROUP BY property_id
ORDER BY rank;
