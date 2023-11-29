-- Example file that defines the schema for the database.
-- All relations will be defined here, like the one below.

CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- DEFINE YOUR TABLES HERE