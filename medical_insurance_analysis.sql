/*
===============================================================================
PROJECT: Medical Insurance Cost Analysis
DATABASE: Microsoft SQL Server
DATABASE NAME: MedicalInsuranceDB
TABLE: medical_insurance_cleaned

PURPOSE:
Explore medical insurance charges and examine how costs vary by smoking status,
BMI category, age group, sex, number of children, and region.

NOTE:
This script assumes the cleaned table `medical_insurance_cleaned` has already
been imported into SQL Server with the required analysis columns.
===============================================================================
*/

-- ============================================================================
-- 1. DATABASE SETUP
-- ============================================================================

CREATE DATABASE MedicalInsuranceDB;
GO

USE MedicalInsuranceDB;
GO

SELECT DB_NAME() AS CurrentDatabase;


-- ============================================================================
-- 2. TABLE CHECK AND PRIMARY KEY SETUP
-- ============================================================================

-- Preview the imported dataset
SELECT TOP 10 *
FROM medical_insurance_cleaned;

-- Add a unique identifier
ALTER TABLE medical_insurance_cleaned
ADD id INT IDENTITY(1,1) NOT NULL;

-- Create the primary key
ALTER TABLE medical_insurance_cleaned
ADD CONSTRAINT PK_medical_insurance
PRIMARY KEY (id);

-- Confirm the updated table
SELECT TOP 10 *
FROM medical_insurance_cleaned;


-- ============================================================================
-- 3. OVERALL DATASET SUMMARY
-- ============================================================================

SELECT
    COUNT(*) AS Total_Patients,
    ROUND(AVG(age), 2) AS Average_Age,
    ROUND(AVG(bmi), 2) AS Average_BMI,
    ROUND(AVG(charges), 2) AS Average_Charges,
    ROUND(MIN(charges), 2) AS Minimum_Charges,
    ROUND(MAX(charges), 2) AS Maximum_Charges
FROM medical_insurance_cleaned;


-- ============================================================================
-- 4. SMOKING STATUS ANALYSIS
-- ============================================================================

-- Minimum and maximum insurance charges by smoking status
SELECT
    smoker,
    COUNT(*) AS Total_Individuals,
    ROUND(MIN(charges), 2) AS Minimum_Charges,
    ROUND(MAX(charges), 2) AS Maximum_Charges
FROM medical_insurance_cleaned
GROUP BY smoker;

-- Average insurance charges by smoking status
SELECT
    smoker,
    COUNT(*) AS Total_Individuals,
    ROUND(AVG(charges), 2) AS Average_Charges
FROM medical_insurance_cleaned
GROUP BY smoker
ORDER BY Average_Charges DESC;


-- ============================================================================
-- 5. BMI CATEGORY ANALYSIS
-- ============================================================================

SELECT
    bmi_category,
    COUNT(*) AS Total_Individuals,
    ROUND(AVG(bmi), 2) AS Average_BMI,
    ROUND(AVG(charges), 2) AS Average_Charges
FROM medical_insurance_cleaned
GROUP BY bmi_category
ORDER BY Average_Charges DESC;


-- ============================================================================
-- 6. AGE GROUP ANALYSIS
-- ============================================================================

SELECT
    age_group,
    COUNT(*) AS Total_Individuals,
    ROUND(AVG(age), 2) AS Average_Age,
    ROUND(AVG(charges), 2) AS Average_Charges
FROM medical_insurance_cleaned
GROUP BY age_group
ORDER BY Average_Charges DESC;

-- Average charges by age group and smoking status
SELECT
    age_group,
    smoker,
    COUNT(*) AS Total_Individuals,
    ROUND(AVG(charges), 2) AS Average_Charges
FROM medical_insurance_cleaned
GROUP BY age_group, smoker
ORDER BY age_group, smoker;


-- ============================================================================
-- 7. SEX ANALYSIS
-- ============================================================================

SELECT
    sex,
    COUNT(*) AS Total_Individuals,
    ROUND(AVG(charges), 2) AS Average_Charges,
    ROUND(MIN(charges), 2) AS Minimum_Charges,
    ROUND(MAX(charges), 2) AS Maximum_Charges
FROM medical_insurance_cleaned
GROUP BY sex
ORDER BY Average_Charges DESC;


-- ============================================================================
-- 8. NUMBER OF CHILDREN ANALYSIS
-- ============================================================================

SELECT
    children,
    COUNT(*) AS Total_Individuals,
    ROUND(AVG(charges), 2) AS Average_Charges,
    ROUND(MIN(charges), 2) AS Minimum_Charges,
    ROUND(MAX(charges), 2) AS Maximum_Charges
FROM medical_insurance_cleaned
GROUP BY children
ORDER BY children;


-- ============================================================================
-- 9. REGION ANALYSIS
-- ============================================================================

SELECT
    region,
    COUNT(*) AS Total_Individuals,
    ROUND(AVG(charges), 2) AS Average_Charges,
    ROUND(MIN(charges), 2) AS Minimum_Charges,
    ROUND(MAX(charges), 2) AS Maximum_Charges
FROM medical_insurance_cleaned
GROUP BY region
ORDER BY Average_Charges DESC;


-- ============================================================================
-- 10. SMOKING STATUS AND BMI CATEGORY ANALYSIS
-- ============================================================================

SELECT
    bmi_category,
    smoker,
    COUNT(*) AS Total_Individuals,
    ROUND(AVG(charges), 2) AS Average_Charges
FROM medical_insurance_cleaned
GROUP BY bmi_category, smoker
ORDER BY bmi_category, smoker;

-- Average insurance charges by BMI category and smoking status
SELECT
    bmi_category,
    smoker,
    COUNT(*) AS Total_Individuals,
    ROUND(AVG(charges), 2) AS Average_Charges
FROM medical_insurance_cleaned
WHERE bmi_category IN ('Obese', 'underweight', 'overweight', 'normal')
GROUP BY bmi_category, smoker
ORDER BY Average_Charges;

-- Minimum and maximum insurance charges by BMI category and smoking status
SELECT
    bmi_category,
    smoker,
    COUNT(*) AS Total_Individuals,
    ROUND(MIN(charges), 2) AS Minimum_Charges,
    ROUND(MAX(charges), 2) AS Maximum_Charges
FROM medical_insurance_cleaned
WHERE bmi_category IN ('Obese', 'underweight', 'overweight', 'normal')
GROUP BY bmi_category, smoker;


-- ============================================================================
-- 11. AGE GROUP AND SMOKING STATUS ANALYSIS
-- ============================================================================

SELECT
    age_group,
    smoker,
    COUNT(*) AS Total_Individuals,
    ROUND(AVG(charges), 2) AS Average_Charges
FROM medical_insurance_cleaned
GROUP BY age_group, smoker
ORDER BY age_group, smoker;


-- ============================================================================
-- 12. HIGHEST AND LOWEST INSURANCE CHARGES
-- ============================================================================

-- Top 10 highest insurance charges
SELECT TOP 10
    id,
    age,
    sex,
    bmi,
    children,
    smoker,
    region,
    bmi_category,
    age_group,
    ROUND(charges, 2) AS charges
FROM medical_insurance_cleaned
ORDER BY charges DESC;

-- Top 10 lowest insurance charges
SELECT TOP 10
    id,
    age,
    sex,
    bmi,
    children,
    smoker,
    region,
    bmi_category,
    age_group,
    ROUND(charges, 2) AS charges
FROM medical_insurance_cleaned
ORDER BY charges ASC;


-- ============================================================================
-- 13. REGION AND SMOKING STATUS ANALYSIS
-- ============================================================================

SELECT
    region,
    smoker,
    COUNT(*) AS Total_Individuals,
    ROUND(AVG(charges), 2) AS Average_Charges
FROM medical_insurance_cleaned
GROUP BY region, smoker
ORDER BY region, smoker;


-- ============================================================================
-- 14. SMOKING VS NON-SMOKING COST DIFFERENCE
-- ============================================================================

SELECT
    ROUND(AVG(CASE WHEN smoker = 1 THEN charges END), 2)
        AS Smoker_Average_Charges,

    ROUND(AVG(CASE WHEN smoker = 0 THEN charges END), 2)
        AS NonSmoker_Average_Charges,

    ROUND(
        AVG(CASE WHEN smoker = 1 THEN charges END) -
        AVG(CASE WHEN smoker = 0 THEN charges END),
        2
    ) AS Average_Charge_Difference
FROM medical_insurance_cleaned;


-- ============================================================================
-- 15. PERCENTAGE DIFFERENCE: SMOKERS VS NON-SMOKERS
-- ============================================================================

SELECT
    ROUND(AVG(CASE WHEN smoker = 1 THEN charges END), 2)
        AS Smoker_Average_Charges,

    ROUND(AVG(CASE WHEN smoker = 0 THEN charges END), 2)
        AS NonSmoker_Average_Charges,

    ROUND(
        (
            AVG(CASE WHEN smoker = 1 THEN charges END) -
            AVG(CASE WHEN smoker = 0 THEN charges END)
        )
        / AVG(CASE WHEN smoker = 0 THEN charges END) * 100,
        2
    ) AS Percentage_Increase
FROM medical_insurance_cleaned;


-- ============================================================================
-- 16. SMOKING IMPACT WITHIN EACH BMI CATEGORY
-- ============================================================================

SELECT
    bmi_category,

    ROUND(
        AVG(CASE WHEN smoker = 1 THEN charges END), 2
    ) AS Smoker_Average,

    ROUND(
        AVG(CASE WHEN smoker = 0 THEN charges END), 2
    ) AS NonSmoker_Average,

    ROUND(
        AVG(CASE WHEN smoker = 1 THEN charges END) -
        AVG(CASE WHEN smoker = 0 THEN charges END),
        2
    ) AS Charge_Difference
FROM medical_insurance_cleaned
GROUP BY bmi_category
ORDER BY Charge_Difference DESC;


-- ============================================================================
-- 17. DATABASE TABLE CHECK
-- ============================================================================

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';
