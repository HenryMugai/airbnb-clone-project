-- Partitioning Booking table
-- Example: Partition Booking table by start_date
CREATE TABLE Booking_2025 PARTITION OF Booking
FOR VALUES FROM ('2025-01-01') TO ('2025-12-31');