# Database Normalization – Airbnb Schema

## Objective
Ensure that the Airbnb-style database schema is fully normalized and adheres to  Third Normal Form (3NF) .



## Step 1 – First Normal Form (1NF)
 Requirement:   
- Eliminate repeating groups.  
- Ensure each column contains atomic values.  

 Application:   
- All tables have unique primary keys.  
- Attributes such as `name`, `email`, `location`, `title`, `description` are atomic (no multi-valued or composite fields).  
✅ The schema is in 1NF.



## Step 2 – Second Normal Form (2NF)
 Requirement:   
- Must be in 1NF.  
- Remove partial dependencies (no attribute should depend on only part of a composite primary key).  

 Application:   
- All tables use a single-column primary key (`user_id`, `listing_id`, `booking_id`, etc.).  
- No partial dependencies exist.  
✅ The schema is in 2NF.



## Step 3 – Third Normal Form (3NF)
 Requirement:   
- Must be in 2NF.  
- Remove transitive dependencies (non-key attributes should not depend on other non-key attributes).  

 Application:   
- In  Users , attributes like `email`, `phone` depend only on `user_id`.  
- In  Listings , `title`, `price`, `location` depend only on `listing_id`.  
- In  Bookings , `start_date`, `end_date`, `total_price` depend only on `booking_id`.  
- In  Payments , `amount`, `status` depend only on `payment_id`.  
- In  Reviews , `rating`, `comment` depend only on `review_id`.  

No transitive dependencies found.  
✅ The schema is in 3NF.



## Conclusion
The designed schema follows  3NF principles :
- No repeating groups.  
- No partial dependencies.  
- No transitive dependencies.  

This ensures reduced redundancy, better data integrity, and scalability for the Airbnb system.
