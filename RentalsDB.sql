    -- Student Name : Abdel Fattah Abu Eshkian
    -- Student Number : 120210664

    -- DDL COMMANDS : TO DEFINE THE DATABASE PARTS INCLUDING DATABASE NAME , TABLES etc..
    CREATE DATABASE RENTALS;

    -- I HAVE USED CREATE COMMAND TO CREATE A DATABASE CALLED RENTALS
    USE  RENTALS;
    -- AFTER CREATING THE DATABASE I HAVE USED USE COMMAND TO USE THE DATABASE



    -- HERE I HAVE CREATED A TABLE CALLED rentals to store records of rentals rows and columns
    -- Each row contains every rental informations such as rental_id , customer_full_name , costume_name , rent_date , return_date , daily_rental_fee

    -- The rental_id here is a primary key that means it can not be repeated and has auto increment (If a new record recorded it will be add by each time)
    CREATE TABLE rentals (
        rental_id INT AUTO_INCREMENT PRIMARY KEY,  -- Auto-incrementing ID 
        -- The customer full name here  has a datatype VARCHAR to store rental name and can not be empty or blank
        customer_full_name VARCHAR(255) NOT NULL,  -- Required customer name
        -- Like customer full name it can not be empty or blank and use same datatype VARCHAR
        costume_name VARCHAR(255) NOT NULL,        -- Required costume name
        rent_date DATETIME NOT NULL CHECK (rent_date <= return_date OR rend_date<= CURRENT_TIMESTAMP),  -- No future dates 
        -- I have used a DATETIME datatype to store date and time for the rental informations , can not be empty and  also can not be in the future 
        -- by checking from rent_date is earlier than or equal the return_date (can not be in the future)
        return_date DATETIME NULL CHECK (return_date >= rent_date),
    -- also return_date same but for open rental dates can be null or empty so i have put a check constraint (can be later than rent_date)
        daily_rental_fee DECIMAL(10,2) NOT NULL CHECK (daily_rental_fee > 0),  -- Positive value
        -- The fees on rental should be positive and greater than 0 , also not null
        insertion_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Auto-record creation time 
        -- insertion_time here is a TIMESTAMP datatype that stores the creation time of the record
        -- The DEFAULT Value is CURRENT_TIMESTAMP
        update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  -- Auto-update
        -- update_time here is a TIMESTAMP datatype that stores the last update time of the record
    );

    -- DML COMMANDS : TO INSERT DATA INTO THE TABLES
    INSERT INTO rentals (rental_id, customer_full_name, costume_name, rent_date, return_date, daily_rental_fee) VALUES
    (1, 'Alice Johnson', 'Imperial Officer', '2025-04-01 10:00:00', '2025-04-03 15:30:00', 25),
    (2, 'Bob Smith', 'Galaxy Explorer', '2025-04-02 09:15:00', '2025-04-05 11:00:00', 30),
    (3, 'Carol Lee', 'Time Traveler', '2025-04-05 14:45:00', '2025-04-06 16:00:00', 20),
    (4, 'Dave Martinez', 'Robot Droid', '2025-04-07 13:00:00', '2025-04-12 13:00:00', 28.5),
    (5, 'Eva Wang', 'Alien Monarch', '2025-04-10 12:10:00', '2025-04-11 18:20:00', 22),
    (6, 'Frank Davis', 'Imperial Officer', '2025-04-12 08:00:00', '2025-04-15 09:00:00', 25),
    (7, 'Grace Kim', 'Galaxy Explorer', '2025-04-15 10:20:00', '2025-04-17 12:35:00', 30),
    (8, 'Henry Brown', 'Robot Droid', '2025-04-18 11:00:00', '2025-04-19 14:15:00', 28.5),
    (9, 'Isabel Clark', 'Time Traveler', '2025-04-20 09:30:00', '2025-04-23 10:00:00', 20),
    (10, 'John Doe', 'Alien Monarch', '2025-04-22 14:00:00', NULL, 22);


    -- Student name : Abdel Fattah Abu Eshkian
    -- Student number : 120210664