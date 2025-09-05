-- Index creation for optimization
CREATE INDEX idx_user_id ON Booking(user_id);
CREATE INDEX idx_property_id ON Booking(property_id);
CREATE INDEX idx_start_date ON Booking(start_date);