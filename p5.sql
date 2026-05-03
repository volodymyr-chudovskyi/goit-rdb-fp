-- Завдання 5. Створення та використання власної функції

USE pandemic;

DROP FUNCTION IF EXISTS fn_year_difference;

DELIMITER //

CREATE FUNCTION fn_year_difference(input_year INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN TIMESTAMPDIFF(YEAR, MAKEDATE(input_year, 1), CURDATE());
END //

DELIMITER ;

-- Використання функції
SELECT
    icn.year,
    fn_year_difference(icn.year) AS year_difference
FROM infectious_cases_normalized icn;
