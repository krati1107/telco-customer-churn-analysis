-- Query 1: Overall Churn Rate
SELECT Churn, COUNT(*) AS total_customers, ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customers), 2) AS percentage
FROM customers GROUP BY Churn;

-- Query 2: Churn by Contract Type
SELECT Contract, COUNT(*) AS total_customers, SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers, ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM customers GROUP BY Contract ORDER BY churn_rate DESC;

-- Query 3: Churn by Tenure Group
SELECT 
    CASE 
        WHEN tenure <= 12 THEN '0-12 Months'
        WHEN tenure <= 24 THEN '13-24 Months'
        WHEN tenure <= 48 THEN '25-48 Months'
        ELSE '48+ Months'
    END AS tenure_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM customers GROUP BY tenure_group ORDER BY churn_rate DESC;

-- Query 4: Average Charges (Churned vs Retained)
SELECT Churn, ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges, ROUND(AVG(TotalCharges), 2) AS avg_total_charges
FROM customers WHERE TotalCharges IS NOT NULL GROUP BY Churn;

-- Query 5: Churn by Payment Method
SELECT PaymentMethod, COUNT(*) AS total_customers, SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers, ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM customers GROUP BY PaymentMethod ORDER BY churn_rate DESC;






