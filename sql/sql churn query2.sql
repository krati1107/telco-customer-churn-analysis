USE churn_project;

DROP VIEW IF EXISTS overall_churn;
CREATE VIEW overall_churn AS
SELECT Churn, COUNT(*) AS total_customers, ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customers), 2) AS percentage
FROM customers GROUP BY Churn;

DROP VIEW IF EXISTS churn_by_contract;
CREATE VIEW churn_by_contract AS
SELECT Contract, COUNT(*) AS total_customers, SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers, ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM customers GROUP BY Contract;

DROP VIEW IF EXISTS churn_by_tenure;
CREATE VIEW churn_by_tenure AS
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
FROM customers GROUP BY tenure_group;

DROP VIEW IF EXISTS churn_by_payment;
CREATE VIEW churn_by_payment AS
SELECT PaymentMethod, COUNT(*) AS total_customers, SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers, ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM customers GROUP BY PaymentMethod;