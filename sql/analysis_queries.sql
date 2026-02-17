-- 1) Avg billing by admission type
SELECT admission_type,
       AVG(billing_amount) AS avg_billing
FROM healthcare
GROUP BY admission_type
ORDER BY avg_billing DESC;

-- 2) Avg billing by insurance provider
SELECT insurance_provider,
       AVG(billing_amount) AS avg_billing
FROM healthcare
GROUP BY insurance_provider
ORDER BY avg_billing DESC;

-- 3) Avg billing by medical condition
SELECT medical_condition,
       AVG(billing_amount) AS avg_billing
FROM healthcare
GROUP BY medical_condition
ORDER BY avg_billing DESC;

-- 4)  Top combinations 
SELECT admission_type,
       medical_condition,
       AVG(billing_amount) AS avg_billing
FROM healthcare
GROUP BY admission_type, medical_condition
ORDER BY avg_billing DESC
LIMIT 15;

-- Admission Volume by Admission Type
SELECT admission_type,
       COUNT(*) AS total_admissions
FROM healthcare
GROUP BY admission_type
ORDER BY total_admissions DESC;

-- Average Length of Stay by Admission Type
SELECT admission_type,
       AVG(length_of_stay) AS avg_length_of_stay
FROM healthcare
GROUP BY admission_type
ORDER BY avg_length_of_stay DESC;

-- Average Cost per Day by Admission Type
SELECT admission_type,
       AVG(billing_amount / NULLIF(length_of_stay, 0)) AS avg_cost_per_day
FROM healthcare
GROUP BY admission_type
ORDER BY avg_cost_per_day DESC;

-- Top 10 Highest Billing Cases
SELECT name,
       medical_condition,
       admission_type,
       billing_amount
FROM healthcare
ORDER BY billing_amount DESC
LIMIT 10;



