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
- Investigate the combined relationship between smoking status, BMI category, and insurance charges.
- Identify individuals with the highest and lowest insurance charges.

---

## 🗂️ Dataset Variables

The dataset contains variables used to analyse medical insurance charges:

| Variable | Description |
|---|---|
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

Smoking status and BMI category are analysed together to investigate how these factors are associated with differences in insurance charges.

### 9. Highest and Lowest Insurance Charges

The analysis identifies the:

- Top 10 highest insurance charges
- Top 10 lowest insurance charges

### 10. Smoking Cost Difference

Conditional aggregation is used to calculate:

- Average insurance charges for smokers
- Average insurance charges for non-smokers
- Difference between smoker and non-smoker average charges
- Percentage difference in average charges

### 11. Smoking Impact Within BMI Categories

The analysis compares smoker and non-smoker average insurance charges within each BMI category.

This provides a more detailed view of how smoking status and BMI category relate to insurance charges.

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
10. How does smoking status interact with BMI category when comparing insurance charges?
11. Which individuals have the highest and lowest insurance charges?

---

## 📊 Key Findings

The SQL analysis revealed several important patterns in medical insurance charges.

### 1. Smoking Status Is Strongly Associated With Higher Insurance Charges

Smokers recorded average insurance charges of **32,050.23**, compared with **8,440.66** for non-smokers.

This represents an average charge difference of **23,609.57**.

In this dataset, the average insurance charge for smokers was approximately **279.71% higher** than for non-smokers.

### 2. Smoking and BMI Show an Important Combined Pattern

Smoking was associated with higher average insurance charges across all BMI categories analysed.

| BMI Category | Smoker Average | Non-Smoker Average | Difference |
|---|---:|---:|---:|
| Obese | 41,557.99 | 8,855.53 | 32,702.46 |
| Overweight | 22,495.87 | 8,257.96 | 14,237.91 |
| Underweight | 18,809.82 | 5,532.99 | 13,276.83 |
| Normal | 19,942.22 | 7,685.66 | 12,256.57 |

The largest smoker/non-smoker difference occurred in the **Obese** category.

Obese smokers recorded average charges of **41,557.99**, compared with **8,855.53** for obese non-smokers, producing a difference of **32,702.46**.

### 3. Insurance Charges Increase Across Age Groups

Average insurance charges increased progressively across the age groups analysed.

| Age Group | Number of Individuals | Average Age | Average Charges |
|---|---:|---:|---:|
| 56–64 | 216 | 59 | 18,795.99 |
| 46–55 | 284 | 50 | 15,986.90 |
| 36–45 | 264 | 40 | 13,493.49 |
| 26–35 | 268 | 30 | 10,495.16 |
| 18–25 | 305 | 20 | 9,111.43 |

Individuals aged **56–64** recorded the highest average insurance charge at **18,795.99**, while individuals aged **18–25** recorded the lowest at **9,111.43**.

This indicates a clear association between increasing age and higher average medical insurance charges within the dataset.

### 4. Overall Analytical Insight

The analysis indicates that **smoking status and age are strongly associated with differences in medical insurance charges**, while analysing smoking status together with BMI provides additional insight into higher-cost groups.

These findings describe patterns and associations within this dataset and should not be interpreted as proof of causation.

---

## 📸 Analysis Screenshots

### Smoking vs Non-Smoking Cost Difference

![Smoking Cost Difference](images/smoking-cost-difference.png)

The analysis shows an average charge difference of **23,609.57** between smokers and non-smokers.

### Percentage Increase in Charges for Smokers

![Smoking Percentage Increase](images/smoking-percentage-increase.png)

Average insurance charges for smokers were approximately **279.71% higher** than those for non-smokers in the dataset.

### Smoking Impact Within BMI Categories

![BMI and Smoking Analysis](images/bmi-smoking-impact.png)

The largest smoker/non-smoker charge difference occurred in the **Obese** BMI category.

### Insurance Charges by Age Group

![Age Group Analysis](images/age-group-analysis.png)

Average insurance charges increased progressively from the youngest to the oldest age group analysed.

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
    ├── age-group-analysis.png
    ├── bmi-smoking-impact.png
    ├── smoking-cost-difference.png
    └── smoking-percentage-increase.png
```

> The dataset should only be included in the public repository where redistribution is permitted and the data contains no confidential or personally identifiable information.

---

## 📄 SQL File

The complete SQL analysis is available in:

`medical_insurance_analysis.sql`

The SQL script contains the database setup and analytical queries used throughout this project.

---

## 🚀 Future Improvements

Possible extensions to this project include:

- Creating an interactive Power BI dashboard
- Performing further statistical analysis using Python
- Building a predictive model for insurance charges
- Comparing SQL findings with Python-based analysis
- Creating additional visualisations for key insurance cost drivers

---

## 👤 Author

**Chukwuemeka Emmanuel Udeh**

Data Analyst | SQL | Power BI | Python | Excel

---

## ⭐ Portfolio Purpose

This project forms part of my data analytics portfolio and demonstrates my ability to use SQL to explore datasets, answer analytical questions, calculate meaningful metrics, identify patterns, and communicate findings in a structured and reproducible manner.