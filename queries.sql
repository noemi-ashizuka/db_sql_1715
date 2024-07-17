-- READ
-- SELECT columns FROM table
-- SELECT first_name, last_name FROM doctors;
-- SELECT * FROM doctors;

-- SELECT * FROM doctors WHERE column_name = value;
-- SELECT * FROM doctors WHERE id = 3;
-- SELECT * FROM doctors WHERE age < 50;
-- SELECT * FROM doctors WHERE specialty = 'Chemistry';
-- SELECT * FROM doctors WHERE first_name LIKE '%r%';

-- SELECT * FROM doctors WHERE specialty = 'Chemistry' AND age > 60;
-- SELECT * FROM doctors WHERE specialty = 'Chemistry' OR age > 60;

-- SELECT * FROM doctors ORDER BY last_name ASC;
-- SELECT * FROM doctors ORDER BY last_name DESC;

-- SELECT COUNT(*) AS count FROM doctors;
-- SELECT COUNT(*) AS count FROM doctors WHERE specialty = 'Psychology';

-- SELECT ROUND(AVG(age), 2) FROM doctors;

-- Count how many doctors I have for each specialty
-- SELECT COUNT(*), specialty FROM doctors GROUP BY specialty;

-- Get all the appointments with the doctors info
-- SELECT * FROM appointments
-- JOIN doctors ON appointments.doctor_id = doctors.id;

-- Get patients first name and last name and appointments dates

-- SELECT patients.first_name, patients.last_name, occurs_on AS date FROM patients
-- JOIN appointments ON appointments.patient_id = patients.id;


-- GET mia's appoitnments plus the patients first and last names

-- SELECT occurs_on, patients.last_name, patients.first_name FROM doctors
-- JOIN appointments ON appointments.doctor_id = doctors.id
-- JOIN patients ON appointments.patient_id = patients.id
-- WHERE doctors.first_name = 'Mia'
-- AND doctors.last_name = "O'Connel"
-- ORDER BY patients.last_name;

-- CREATE

-- INSERT INTO table_name (columns)
-- VALUES ('values');

-- INSERT INTO doctors (age, first_name, last_name, specialty)
-- VALUES (20, 'Yu', 'Foster', 'Chemistry');

-- UPDATE table_name SET column_name = 'new value' WHERE id = 'id';

-- UPDATE doctors SET age = 30 WHERE id = 5;

-- UPDATE doctors SET age = 30, first_name = 'E' WHERE id = 5;

-- DELETE

-- DELETE FROM table_name WHERE id = 'id';

-- DELETE FROM doctors WHERE id = 8;