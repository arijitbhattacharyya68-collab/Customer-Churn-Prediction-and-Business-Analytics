-- ============================================================
-- Customer Churn Prediction & Business Analytics
-- SQL Business Analysis
-- ============================================================

-- Database Table:
-- customer_churn
--
-- Target Variable:
-- Churn
-- 0 = No Churn
-- 1 = Churn
--
-- The analysis is performed using SQLite.


-- ============================================================
-- 1. Preview Customer Data
-- ============================================================

SELECT *
FROM customer_churn
LIMIT 10;


-- ============================================================
-- 2. Overall Customer Churn Rate
-- Business Question:
-- What is the overall customer churn rate?
-- ============================================================

SELECT
    COUNT(*) AS total_customers,

    SUM(
        CASE WHEN Churn = 1 THEN 1 ELSE 0 END
    ) AS churned_customers,

    ROUND(
        100.0 * SUM(
            CASE WHEN Churn = 1 THEN 1 ELSE 0 END
        ) / COUNT(*),
        2
    ) AS churn_rate_percentage

FROM customer_churn;


-- ============================================================
-- 3. Churn Rate by Contract Type
-- Business Question:
-- Which contract type has the highest churn rate?
-- ============================================================

SELECT
    Contract,

    COUNT(*) AS total_customers,

    SUM(
        CASE WHEN Churn = 1 THEN 1 ELSE 0 END
    ) AS churned_customers,

    ROUND(
        100.0 * SUM(
            CASE WHEN Churn = 1 THEN 1 ELSE 0 END
        ) / COUNT(*),
        2
    ) AS churn_rate_percentage

FROM customer_churn

GROUP BY Contract

ORDER BY churn_rate_percentage DESC;


-- ============================================================
-- 4. Churn Rate by Customer Tenure
-- Business Question:
-- How does customer tenure affect churn?
-- ============================================================

SELECT
    CASE
        WHEN tenure <= 12 THEN '0-1 Year'
        WHEN tenure <= 24 THEN '1-2 Years'
        WHEN tenure <= 48 THEN '2-4 Years'
        ELSE '4+ Years'
    END AS tenure_group,

    COUNT(*) AS total_customers,

    SUM(
        CASE WHEN Churn = 1 THEN 1 ELSE 0 END
    ) AS churned_customers,

    ROUND(
        100.0 * SUM(
            CASE WHEN Churn = 1 THEN 1 ELSE 0 END
        ) / COUNT(*),
        2
    ) AS churn_rate_percentage

FROM customer_churn

GROUP BY
    CASE
        WHEN tenure <= 12 THEN '0-1 Year'
        WHEN tenure <= 24 THEN '1-2 Years'
        WHEN tenure <= 48 THEN '2-4 Years'
        ELSE '4+ Years'
    END

ORDER BY churn_rate_percentage DESC;


-- ============================================================
-- 5. Churn Rate by Monthly Charges
-- Business Question:
-- Does monthly charges influence customer churn?
-- ============================================================

SELECT
    CASE
        WHEN MonthlyCharges <= 30 THEN 'Low (<= $30)'
        WHEN MonthlyCharges <= 60 THEN 'Medium ($30-$60)'
        WHEN MonthlyCharges <= 90 THEN 'High ($60-$90)'
        ELSE 'Very High (> $90)'
    END AS monthly_charge_group,

    COUNT(*) AS total_customers,

    SUM(
        CASE WHEN Churn = 1 THEN 1 ELSE 0 END
    ) AS churned_customers,

    ROUND(
        100.0 * SUM(
            CASE WHEN Churn = 1 THEN 1 ELSE 0 END
        ) / COUNT(*),
        2
    ) AS churn_rate_percentage

FROM customer_churn

GROUP BY
    CASE
        WHEN MonthlyCharges <= 30 THEN 'Low (<= $30)'
        WHEN MonthlyCharges <= 60 THEN 'Medium ($30-$60)'
        WHEN MonthlyCharges <= 90 THEN 'High ($60-$90)'
        ELSE 'Very High (> $90)'
    END

ORDER BY churn_rate_percentage DESC;


-- ============================================================
-- 6. Monthly Revenue Lost from Churned Customers
-- Business Question:
-- How much monthly revenue is at risk from churned customers?
-- ============================================================

SELECT
    COUNT(*) AS churned_customers,

    ROUND(
        SUM(MonthlyCharges), 2
    ) AS monthly_revenue_lost,

    ROUND(
        AVG(MonthlyCharges), 2
    ) AS average_monthly_charge

FROM customer_churn

WHERE Churn = 1;


-- ============================================================
-- 7. Monthly Revenue at Risk by Contract Type
-- Business Question:
-- Which contract type has the highest monthly revenue at risk?
-- ============================================================

SELECT
    Contract,

    COUNT(*) AS churned_customers,

    ROUND(
        SUM(MonthlyCharges), 2
    ) AS monthly_revenue_at_risk,

    ROUND(
        AVG(MonthlyCharges), 2
    ) AS average_monthly_charge

FROM customer_churn

WHERE Churn = 1

GROUP BY Contract

ORDER BY monthly_revenue_at_risk DESC;


-- ============================================================
-- 8. High-Risk Customers Identified by Machine Learning
-- Business Question:
-- Among customers predicted as high-risk by the ML model,
-- how much revenue is potentially at risk?
--
-- Table: customer_risk
--
-- Predicted_Churn:
-- 0 = Predicted not to churn
-- 1 = Predicted to churn
-- ============================================================

SELECT
    COUNT(*) AS high_risk_customers,

    ROUND(
        SUM(MonthlyRevenueAtRisk), 2
    ) AS potential_monthly_revenue_at_risk,

    ROUND(
        AVG(MonthlyCharges), 2
    ) AS average_monthly_charge

FROM customer_risk

WHERE Predicted_Churn = 1;
