-- 1. Total bookings made by each user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- 2. Rank properties by total number of bookings (using RANK)
SELECT
  pb.property_id,
  COUNT(*) AS total_bookings
FROM bookings b
JOIN property_bookings pb ON b.id = pb.booking_id
GROUP BY pb.property_id
ORDER BY total_bookings DESC;

