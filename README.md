# Healthcare Cost & Admissions Analysis

This project performs an end-to-end analysis of healthcare admissions data to identify key drivers of billing costs, utilization patterns, and cost efficiency. The analysis combines **Python-based exploratory data analysis**, **SQL-based querying with PostgreSQL**, and clear business-oriented insights.

---

## Dataset Overview

- **55,500** healthcare admission records
- Patient demographics (age, gender, blood type)
- Medical conditions and medications
- Admission and discharge dates
- Insurance providers
- Billing amounts and room details

---

## Tools & Technologies

- **Python:** pandas, NumPy, matplotlib, seaborn
- **SQL:** PostgreSQL
- **Data Analysis:** Jupyter Notebook
- **Version Control:** Git & GitHub
- **Visualization:** Tableau 

---

## Project Objectives

- Identify cost differences across admission types
- Compare billing trends across insurance providers
- Analyze cost patterns by medical condition
- Examine admission volume and utilization trends
- Evaluate cost efficiency using length of stay
- Detect high-cost outlier cases

---

## Python Analysis Highlights

- Cleaned and validated all data (no missing values)
- Engineered a new feature: **Length of Stay**
- Found that **elective admissions** have slightly higher average billing than urgent and emergency cases
- Observed **minimal linear correlation** between length of stay and billing amount
- Identified chronic conditions such as **obesity and diabetes** as higher-cost drivers

---

## SQL Analysis Highlights

- Loaded cleaned data into PostgreSQL
- Reproduced Python insights using SQL queries
- Compared average billing by admission type, insurance provider, and medical condition
- Analyzed **admission volume vs cost**
- Calculated **average cost per day** to assess cost efficiency
- Identified **top high-cost admission cases** and expensive admission–condition combinations

---

## Key Insights

- Elective admissions have the highest average billing amounts
- Insurance provider differences exist but are relatively small
- Obesity-related admissions show the highest average costs
- Length of stay alone is not a strong predictor of billing amount
- Certain admission type and condition combinations drive the highest costs

---

## Repository Structure

healthcare-cost-analysis/
├── data/
│ ├── healthcare_dataset.csv
│ └── healthcare_sql.csv
├── notebooks/
│ └── healthcare_analysis.ipynb
├── sql/
│ ├── create_table.sql
│ ├── load_data.sql
│ └── analysis_queries.sql
├── dashboard/
└── README.md
