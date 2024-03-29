-- This file will populate the database with sample data.
-- You will need to create a sufficient amount of sample data (many INSERT statements) for your tables.

INSERT INTO customer (customer_id, first_name, last_name, phone_num, customer_license_num)
VALUES
    ('C1','Adriana', 'Garner', 1578901234, 'CA123456'),
    ('C2','Adriana', 'Callahan', 9876543210, 'NY987654'),
    ('C3','Eve', 'Goodwin', 2345678901, 'VA234567'),
    ('C4','Lucie', 'Goodwin', 487654321, 'GA876543'),
    ('C5','Natasha', 'Callahan', 1234567890, 'TX345678'),
    ('C6','Natasha', 'Goodwin', 1210987654, 'NY210987'),
    ('C7','Diego', 'Wilkins', 5089012345, 'CA654321'),
    ('C8','Tony', 'Olson', 3254321098, 'TX098765'),
    ('C9','Natasha', 'Lannister', 521098765, 'FL876543'),
    ('C10','Noah', 'Lannister', 1567890123, 'CA123098'),
    ('C11','Eve', 'Goodwin', 7034567890, 'GA432109'),
    ('C12','Diego', 'Olson', 6024321098, 'AZ789012'),
    ('C13','Noah', 'Lannister', 3708901234, 'VA345678'),
    ('C14','Amira', 'Steele', 1545678901, 'CA789012'),
    ('C15','Philip', 'Olson', 1232109876, 'NY654321'),
    ('C16','Natasha', 'Lannister', 1365432109, 'TX098765'),
    ('C17','Adriana', 'Olson', 8889012345, 'CA123456'),
    ('C18','Noah', 'Bean', 323456789, 'VA234567'),
    ('C19','Lucie', 'Lannister', 487654321, 'GA876543'),
    ('C20','Amira', 'Wilkins', 5123456789, 'TX345678');

INSERT INTO employee (employee_id, first_name, last_name, role, salary)
VALUES
    ('E1', 'Natasha', 'Callahan', 'Sales', 84739),
    ('E2', 'Jordan', 'Sanders', 'Accounting', 88695),
    ('E3', 'Adriana', 'Lannister', 'Sales', 67795),
    ('E4', 'Jordan', 'Steele', 'Management', 99859),
    ('E5', 'Jordan', 'Olson', 'Sales', 92152),
    ('E6', 'Lucie', 'Olson', 'Management', 54900),
    ('E7', 'Jordan', 'Goodwin', 'Management', 92630),
    ('E8', 'Noah', 'Greene', 'Accounting', 67533),
    ('E9', 'Amira', 'Wilkins', 'Accounting', 85580),
    ('E10', 'Adriana', 'Bean', 'Management', 68054),
    ('E11', 'Jordan', 'Callahan', 'Management', 66676),
    ('E12', 'Natasha', 'Steele', 'Sales', 53819),
    ('E13', 'Philip', 'Goodwin', 'Accounting', 94319),
    ('E14', 'Amira', 'Greene', 'Sales', 81401),
    ('E15', 'Philip', 'Sanders', 'Sales', 70893),
    ('E16', 'Jordan', 'Goodwin', 'Accounting', 85663),
    ('E17', 'Diego', 'Wilkins', 'Accounting', 94939),
    ('E18', 'Tony', 'Bean', 'Sales', 88183),
    ('E19', 'Tony', 'Wilkins', 'Accounting', 96449),
    ('E20', 'Philip', 'Olson', 'Sales', 93469);

INSERT INTO reservation (reservation_id, customer_id, employee_id, vin, start_date, end_date, cost)
VALUES
    ('R1', 'C1', 'E14', '9CC642N4C578DL9P2', '10/01/2022', '10/15/2022', 1125),
    ('R2', 'C14', 'E8', 'A04K17013DNBB9NZX', '02/10/2021', '02/24/2021', 758),
    ('R3', 'C5', 'E5', '26GB1T6XP3MN0BPQN', '08/15/2020', '08/30/2020', 307),
    ('R4', 'C17', 'E17', '9243EYJU38932206P', '02/10/2021', '02/25/2021', 324),
    ('R5', 'C3', 'E4', '7KTJLZ157350E23PC', '06/01/2020', '06/15/2020', 109),
    ('R6', 'C15', 'E2', '5CS3825G152XF55K4', '11/14/2019', '11/29/2019', 948),
    ('R7', 'C7', 'E10', 'H9Z1N9AFXO0F5VDDG', '09/10/2018', '09/25/2018', 721),
    ('R8', 'C11', 'E13', '8Y5M807R480RGT22O', '03/25/2019', '04/08/2019', 394),
    ('R9', 'C10', 'E11', '1T03040215HW8QR90', '12/05/2020', '12/20/2020', 775),
    ('R10', 'C19', 'E15', '21X1S6IRHB3Y5AN9W', '06/01/2018', '06/15/2018', 295),
    ('R11', 'C2', 'E9', '159LG4HFPQ3831391', '02/01/2025', '02/15/2025', 1400),
    ('R12', 'C18', 'E16', 'N6LUP3HM0ENYQ1ZQN', '05/10/2026', '05/25/2026', 1500),
    ('R13', 'C9', 'E18', 'W9T3A3Q6I1890N2XQ', '12/10/2024', '12/25/2024', 733),
    ('R14', 'C12', 'E7', 'X020N7R9UC4785K02', '11/01/2024', '11/15/2024', 346),
    ('R15', 'C16', 'E12', 'X53S647HY6VD2759R', '07/15/2028', '07/30/2028', 1500),
    ('R16', 'C13', 'E19', 'Q4VE1M015769MRJ12', '12/05/2024', '12/20/2024', 1500),
    ('R17', 'C8', 'E3', '0085ZA3Z8W34YGD72', '12/01/2028', '12/15/2018', 258),
    ('R18', 'C6', 'E1', '806478MSZ7WF0182K', '03/15/2028', '03/30/2028', 1500),
    ('R19', 'C4', 'E20', 'DS96IFY0L5SMC82HX', '07/10/2024', '07/25/2024', 113),
    ('R20', 'C20', 'E6', 'UFEEL714NR8411F18', '04/26/2024', '05/10/2024', 774);


INSERT INTO vehicle (vin, license_id, make, model, "year", reservation_id)
VALUES
    ('5CS3825G152XF55K4', 'Y4U2OO', 'Ford', 'F-150', 2011, 'R6'),
    ('21X1S6IRHB3Y5AN9W', 'O32B5Z', 'Ford', 'Mustang', 1999, 'R10'),
    ('9CC642N4C578DL9P2', 'RY5306', 'Toyota', 'Rav4', 2005, 'R1'),
    ('UFEEL714NR8411F18', 'S23NP0', 'Toyota', 'Tacoma', 2005, 'R20'),
    ('H9Z1N9AFXO0F5VDDG', '82J74P', 'Ford', 'Focus', 2010, 'R7'),
    ('0085ZA3Z8W34YGD72', '49L67T', 'Toyota', 'Corolla', 2009, 'R17'),
    ('9243EYJU38932206P', '7W5ETS', 'Kia', 'Rio', 2005, 'R4'),
    ('7KTJLZ157350E23PC', 'P2W5F8', 'Toyota', 'Corolla', 2018, 'R5'),
    ('Q4VE1M015769MRJ12', 'ON85CP', 'Jeep', 'Renegade', 2020, 'R16'),
    ('DS96IFY0L5SMC82HX', '926198', 'Kia', 'Soul', 2013, 'R19'),
    ('1T03040215HW8QR90', 'CX1XK3', 'Ford', 'Focus', 2021, 'R9'),
    ('159LG4HFPQ3831391', '84JJRT', 'Jeep', 'Wrangler', 1989, 'R11'),
    ('806478MSZ7WF0182K', 'S2423F', 'Toyota', 'Tacoma', 1999, 'R18'),
    ('8Y5M807R480RGT22O', '62YO51', 'Jeep', 'Renegade', 2003, 'R8'),
    ('26GB1T6XP3MN0BPQN', '78G5U1', 'Kia', 'Sorento', 1997, 'R3'),
    ('X020N7R9UC4785K02', '278K3K', 'Kia', 'Sorento', 2001, 'R14'),
    ('A04K17013DNBB9NZX', 'OBO914', 'Jeep', 'Compass', 2005, 'R2'),
    ('N6LUP3HM0ENYQ1ZQN', 'NFL3GT', 'Kia', 'Soul', 2013, 'R12'),
    ('X53S647HY6VD2759R', 'ZN8FZI', 'Jeep', 'Wrangler', 1990, 'R15'),
    ('W9T3A3Q6I1890N2XQ', 'LGF73M', 'Jeep', 'Compass', 1999, 'R13'),
    ('A596IFY0L5SMC82H1', 'LA4198', 'Nissan', 'Altima', 2013, NULL),
    ('B03040215HW8QR9A', 'R21XK3', 'Volkswagen', 'Golf', 2021, NULL),
    ('C59LG4HFPQ383139Z', '69JJRT', 'Subaru', 'Outback', 1989, NULL),
    ('D06478MSZ7WF0182X', 'L2F23F', 'Toyota', 'Tacoma', 1999, NULL),
    ('E06478MSZ7WF018Y', 'H25G3F', 'Toyota', 'Camry', 2013, NULL);

-- ADD INSERT STATEMENTS FOR YOUR RELATIONS HERE