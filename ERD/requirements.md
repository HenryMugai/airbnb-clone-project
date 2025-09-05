# Airbnb Database Design – ERD Requirements

 📌 Overview
This document defines the entities, attributes, and relationships for the **Airbnb Database Project**.  
The ERD models a simplified version of an Airbnb-like system with users, properties, bookings, payments, reviews, and messaging.  

The design ensures data integrity, normalization (up to 3NF), and scalability.



 🗂️ Entities and Attributes

1. User
- user_id (PK, UUID, Indexed)  
- first_name (VARCHAR, NOT NULL)  
- last_name (VARCHAR, NOT NULL)  
- email (VARCHAR, UNIQUE, NOT NULL)  
- password_hash (VARCHAR, NOT NULL)  
- phone_number (VARCHAR, NULL)  
- role (ENUM: guest, host, admin, NOT NULL)  
- created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)  



2. Property
- property_id (PK, UUID, Indexed)  
- host_id (FK → User.user_id)  
- name (VARCHAR, NOT NULL)  
- description (TEXT, NOT NULL)  
- location (VARCHAR, NOT NULL)  
- pricepernight (DECIMAL, NOT NULL)  
- created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)  
- updated_at (TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP)  



3. Booking
- booking_id (PK, UUID, Indexed)  
- property_id (FK → Property.property_id)  
- user_id (FK → User.user_id)  
- start_date (DATE, NOT NULL)  
- end_date (DATE, NOT NULL)  
- total_price (DECIMAL, NOT NULL)  
- status (ENUM: pending, confirmed, canceled, NOT NULL)  
- created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)  



4. Payment
- **payment_id** (PK, UUID, Indexed)  
- booking_id (FK → Booking.booking_id)  
- amount (DECIMAL, NOT NULL)  
- payment_date (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)  
- payment_method (ENUM: credit_card, paypal, stripe, NOT NULL)  


5. Review
- **review_id** (PK, UUID, Indexed)  
- property_id (FK → Property.property_id)  
- user_id (FK → User.user_id)  
- rating (INT, CHECK: 1 ≤ rating ≤ 5, NOT NULL)  
- comment (TEXT, NOT NULL)  
- created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)  

6. Message
- **message_id** (PK, UUID, Indexed)  
- sender_id (FK → User.user_id)  
- recipient_id (FK → User.user_id)  
- message_body (TEXT, NOT NULL)  
- sent_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)  


 Relationships

1. User – Property  
   - One host (User) can own many Properties.  
   - Relationship: 1-to-many  

2. User – Booking  
   - One guest (User) can make many Bookings.  
   - Relationship: 1-to-many  

3. Property – Booking  
   - One Property can be booked many times.  
   - Relationship: 1-to-many  

4. Booking – Payment  
   - One Booking can have one or more Payments.  
   - Relationship: 1-to-many 

   User – Review
   - One User (guest) can write many Reviews.  
   - Relationship: 1-to-many 

6. Property – Review  
   - One Property can have many Reviews.  
   - Relationship: 1-to-many

7. User – Message  
   - One User can send and receive many Messages.  
   - Relationship: self-referencing many-to-many via sender_id and recipient_id.  

