-- Complex query joining multiple tables
-- Retrieve all bookings with user, property, and payment details
SELECT b.booking_id, u.name, p.name AS property_name, pay.amount
FROM Booking b
JOIN Users u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
JOIN Payment pay ON b.booking_id = pay.booking_id;