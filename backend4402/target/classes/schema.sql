-- Example file that defines the schema for the database.
-- All relations will be defined here, like the one below.

CREATE TABLE customer (
        customer_id VARCHAR(50) PRIMARY KEY,
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        phone_num BIGINT,
        customer_license_num VARCHAR(50)
);
CREATE TABLE employee (
        employee_id VARCHAR(50) PRIMARY KEY,
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        role VARCHAR(50),
        salary BIGINT
);
CREATE TABLE reservation (
        reservation_id VARCHAR(50) PRIMARY KEY,
        customer_id VARCHAR(50),
        employee_id VARCHAR(50),
        vin VARCHAR(50),
        start_date VARCHAR(50),
        end_date VARCHAR(50),
        cost BIGINT
);
CREATE TABLE vehicle (
        vin VARCHAR(50) PRIMARY KEY,
        license_id VARCHAR(50),
        make VARCHAR(50),
        model VARCHAR(50),
        "year" INT,
        reservation_id VARCHAR(50)
);

-- DEFINE YOUR TABLES HERE