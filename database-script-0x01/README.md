# Database Seeding Script

This directory contains the SQL script to populate the Airbnb database with sample data.

## Files
- `seed.sql` → SQL INSERT statements for Users, Listings, Bookings, Payments, and Reviews.

## Usage
1. Ensure the schema (`schema.sql`) has already been created and the database exists.
2. Run the script in MySQL:

```bash
mysql -u root -p alx_airbnb < seed.sql
