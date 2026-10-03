# Medical Insurance Cost Analysis Using SQL

## 📌 Project Overview

This project analyses a medical insurance dataset using Microsoft SQL Server to explore the factors associated with differences in insurance charges.

The analysis focuses on demographic and health-related variables including age, sex, BMI, number of children, smoking status, and region. Particular attention is given to understanding the relationship between smoking status, BMI category, age group, and medical insurance costs.

The project demonstrates the use of SQL for exploratory data analysis, aggregation, segmentation, conditional analysis, and answering practical analytical questions.

---

## 🎯 Project Objectives

The main objectives of this project are to:

- Explore the overall characteristics of the medical insurance dataset.
- Compare insurance charges between smokers and non-smokers.
- Analyse insurance costs across different BMI categories.
- Examine how insurance charges vary across age groups.
- Compare insurance charges by sex.
- Investigate the relationship between the number of children and insurance charges.
- Analyse regional differences in insurance costs.
- Measure the cost difference between smokers and non-smokers.
- Investigate the combined impact of smoking status and BMI category on insurance charges.
- Identify individuals with the highest and lowest insurance charges.

---

## 🗂️ Dataset Variables

The dataset contains variables used to analyse medical insurance charges:

| Variable | Description |
|----------|-------------|
| `age` | Age of the individual |
| `sex` | Sex of the individual |
| `bmi` | Body Mass Index |
| `children` | Number of children/dependents |
| `smoker` | Smoking status |
| `region` | Residential region |
| `charges` | Medical insurance charges |
| `bmi_category` | BMI classification |
| `age_group` | Age-group classification |
| `id` | Unique identifier added in SQL |

---

## 🛠️ Tools and Technologies

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- SQL
- Git
- GitHub

---

## 💡 SQL Skills Demonstrated

This project demonstrates the use of:

- `SELECT`
- `WHERE`
- `GROUP BY`
- `ORDER BY`
- `CASE WHEN`
- `COUNT()`
- `AVG()`
- `MIN()`
- `MAX()`
- `ROUND()`
- Conditional aggregation
- `ALTER TABLE`
- Primary keys
- Identity columns
- Dataset segmentation
- Exploratory Data Analysis (EDA)

---

## 🔍 Analysis Performed

### 1. Overall Dataset Summary

The analysis calculates:

- Total number of individuals
- Average age
- Average BMI
- Average insurance charge
- Minimum insurance charge
- Maximum insurance charge

### 2. Smoking Status Analysis

Insurance charges are compared between smokers and non-smokers using:

- Number of individuals
- Average charges
- Minimum charges
- Maximum charges

### 3. BMI Category Analysis

The analysis examines how average insurance charges differ across BMI categories.

### 4. Age Group Analysis

Individuals are grouped by age category to compare average insurance costs across different age groups.

Age groups are also analysed together with smoking status.

### 5. Sex Analysis

Average, minimum, and maximum insurance charges are compared by sex.

### 6. Number of Children Analysis

Insurance charges are analysed according to the number of children/dependents.

### 7. Regional Analysis

Average, minimum, and maximum insurance charges are compared across different regions.

### 8. Smoking Status and BMI Analysis

Smoking status and BMI category are analysed together to investigate how these factors relate to insurance charges.

### 9. Highest and Lowest Insurance Charges

The project identifies the:

- Top 10 highest insurance charges
- Top 10 lowest insurance charges

### 10. Smoking Cost Difference

Conditional aggregation is used to calculate:

- Average insurance charges for smokers
- Average insurance charges for non-smokers
- Difference between smoker and non-smoker average charges
- Percentage increase in average charges for smokers

### 11. Smoking Impact Within BMI Categories

The analysis compares smoker and non-smoker average insurance charges within each BMI category.

This helps determine whether the smoking-related difference in insurance charges varies across BMI groups.

---

## ❓ Key Analytical Questions

This project seeks to answer questions such as:

1. What are the overall characteristics of the dataset?
2. How do insurance charges differ between smokers and non-smokers?
3. Which BMI categories have the highest average insurance charges?
4. How do insurance charges vary across age groups?
5. Is there a difference in insurance charges by sex?
6. How do insurance charges vary with the number of children?
7. Which regions have the highest average insurance charges?
8. What is the average cost difference between smokers and non-smokers?
9. What percentage increase in average charges is associated with smoking?
10. How does smoking interact with BMI category when comparing insurance charges?
11. Which individuals have the highest and lowest insurance charges?

---

## 📁 Repository Structure

```text
Medical_Insurance_SQL_Analysis/
│
├── README.md
├── medical_insurance_analysis.sql
│
├── data/
│   └── medical_insurance_cleaned.csv
│
└── images/
    ├── dataset-summary.png
    ├── smoking-analysis.png
    └── bmi-analysis.png