-- Aggregations and window functions
-- Total bookings per user
SELECT user_id, COUNT(*) AS total_bookings
FROM Booking
GROUP BY user_id;


-- Rank properties by total bookings
SELECT property_id, COUNT(*) AS total_bookings,
RANK() OVER (ORDER BY COUNT(*) DESC) AS property_rank
FROM Booking
GROUP BY property_id;