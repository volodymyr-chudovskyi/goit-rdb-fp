-- Завдання 1. Створення схеми та завантаження даних

CREATE SCHEMA IF NOT EXISTS pandemic;
USE pandemic;

CREATE TABLE infectious_cases (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Entity VARCHAR(255),
    Code VARCHAR(10),
    Year INT,
    Number_yaws VARCHAR(50),
    polio_cases VARCHAR(50),
    cases_guinea_worm VARCHAR(50),
    Number_rabies VARCHAR(50),
    Number_malaria VARCHAR(50),
    Number_hiv VARCHAR(50),
    Number_tuberculosis VARCHAR(50),
    Number_smallpox VARCHAR(50),
    Number_cholera_cases VARCHAR(50)
);

-- Після створення таблиці імпортуйте дані з infectious_cases.csv
-- через Import Wizard (ПКМ на таблиці → Table Data Import Wizard)
