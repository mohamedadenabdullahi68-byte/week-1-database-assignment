-- Question 1
CREATE TABLE student (
    id INT PRIMARY KEY,
    fullName VARCHAR(100),
    age INT
);
-- Question 2
INSERT INTO student (id, fullName, age)
VALUES
    (1, 'Mohamed Aden', 20),
    (2, 'Ahmed Ali', 19),
    (3, 'Abdi Hassan', 21);
    -- Question 3
UPDATE student
SET age = 20
WHERE id = 2;