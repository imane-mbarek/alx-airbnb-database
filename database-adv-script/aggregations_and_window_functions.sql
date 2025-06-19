-- 1. Total bookings made by each user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- 2. Rank properties by total number of bookings (using RANK)
SELECT
    property_id,
    COUNT(*) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS rank,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS row_number
    
FROM bookings
GROUP BY property_id
ORDER BY rank;

