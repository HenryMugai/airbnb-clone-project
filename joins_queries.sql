SELECT b.booking_id, u.user_id, u.name, b.property_id, b.start_date
FROM Booking b
INNER JOIN Users u ON b.user_id = u.user_id;


-- LEFT JOIN: All properties with reviews
SELECT p.property_id, p.name, r.review_id, r.rating
FROM Property p
LEFT JOIN Review r ON p.property_id = r.property_id;


-- FULL OUTER JOIN: All users aSELECT b.booking_id, u.user_id, u.name, b.property_id, b.start_date
FROM Booking b
INNER JOIN Users u ON b.user_id = u.user_id,
