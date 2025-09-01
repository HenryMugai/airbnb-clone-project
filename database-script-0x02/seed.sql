-- Users
INSERT INTO Users (name, email, phone) VALUES
('Alice Johnson', 'alice@example.com', '+254700111222'),
('Bob Mwangi', 'bob@example.com', '+254701333444'),
('Carol Wambui', 'carol@example.com', '+254702555666');

-- Listings
INSERT INTO Listings (user_id, title, description, location, price) VALUES
(1, 'Cozy Apartment in Nairobi', '2-bedroom apartment near CBD', 'Nairobi, Kenya', 4500.00),
(2, 'Beach House in Mombasa', 'Beautiful beachfront villa', 'Mombasa, Kenya', 12000.00),
(3, 'Mountain Cabin', 'Quiet cabin in the Aberdares', 'Nyeri, Kenya', 7000.00);

-- Bookings
INSERT INTO Bookings (listing_id, user_id, start_date, end_date, total_price, status) VALUES
(1, 2, '2025-09-05', '2025-09-10', 22500.00, 'confirmed'),
(2, 3, '2025-09-12', '2025-09-15', 36000.00, 'confirmed'),
(3, 1, '2025-10-01', '2025-10-05', 28000.00, 'pending');

-- Payments
INSERT INTO Payments (booking_id, amount, method, status) VALUES
(1, 22500.00, 'M-Pesa', 'completed'),
(2, 36000.00, 'Credit Card', 'completed'),
(3, 28000.00, 'M-Pesa', 'pending');

-- Reviews
INSERT INTO Reviews (booking_id, user_id, rating, comment) VALUES
(1, 2, 5, 'Amazing apartment, great host!'),
(2, 3, 4, 'Lovely beach house, but a bit pricey.'),
(3, 1, 3, 'Cozy cabin, but had limited WiFi.');
