-- Завдання 3. Аналіз даних: середнє, мін, макс, сума для Number_rabies

USE pandemic;

SELECT
    e.entity,
    e.code,
    AVG(icn.number_rabies) AS avg_rabies,
    MIN(icn.number_rabies) AS min_rabies,
    MAX(icn.number_rabies) AS max_rabies,
    SUM(icn.number_rabies) AS sum_rabies
FROM infectious_cases_normalized icn
JOIN entities e ON icn.entity_id = e.id
WHERE icn.number_rabies IS NOT NULL
GROUP BY e.entity, e.code
ORDER BY avg_rabies DESC
LIMIT 10;
