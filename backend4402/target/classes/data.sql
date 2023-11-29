-- This file will populate the database with sample data.
-- You will need to create a sufficient amount of sample data (many INSERT statements) for your tables.

INSERT INTO customer (customer_id, first_name, last_name, phone_number, customer_license_num)
VALUES (43424, 'Adriana', 'Garner', 3452071789, 2182781718);

INSERT INTO employee (employee_id, first_name, last_name, role, salary)
VALUES (30204, 'Lucie', 'Olson', 'Accounting', 99637.00);

INSERT INTO reservation (reservation_id, customer_id, employee_id, vehicle_vin, start_date, end_date, cost)
VALUES (00355, 12629, 16726, 50000, '06/26/2025', '06/26/2026', 544);

INSERT INTO vehicle (vin, license_id, make, model, year, reservation_id)
VALUES (9832904, 328382, 'Kia', 'Rio', '1992', 66070);
-- ADD INSERT STATEMENTS FOR YOUR RELATIONS HERE