-- Завдання 4. Побудова колонки різниці в роках

USE pandemic;

SELECT
    icn.year,
    MAKEDATE(icn.year, 1) AS year_start,
    CURDATE() AS current_date_val,
    TIMESTAMPDIFF(YEAR, MAKEDATE(icn.year, 1), CURDATE()) AS year_difference
FROM infectious_cases_normalized icn;
