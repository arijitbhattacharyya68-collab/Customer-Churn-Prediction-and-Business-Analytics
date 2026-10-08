# Customer Churn Prediction & Business Analytics

### Turning customer data into actionable retention insights using Machine Learning and SQL

An end-to-end **Customer Churn Analytics** project that combines Machine Learning, statistical analysis, and SQL-based business intelligence to identify customers at risk of churn and quantify the potential financial impact on the business.

The project goes beyond simply predicting churn — it focuses on answering the business questions behind churn:

> **Who is likely to churn? Why are customers leaving? Which segments are most vulnerable? And how much recurring revenue is at risk?**

---

## Project Overview

Customer churn is one of the most important challenges faced by subscription-based businesses. Identifying customers who are likely to leave allows organizations to intervene proactively through targeted retention strategies.

In this project, the **Telco Customer Churn dataset** is analyzed through an end-to-end pipeline covering:

- Exploratory Data Analysis
- Data preprocessing and feature transformation
- Class imbalance handling using SMOTE
- Multiple Machine Learning classification models
- 10-fold cross-validation
- Random Forest hyperparameter optimization
- Customer-level churn prediction
- SQL-based business analysis
- Revenue-at-risk estimation
- High-risk customer identification

A **Power BI dashboard is planned as the next phase of the project.**

---

## Business Problem

The objective is to build a data-driven framework that helps a business:

- Predict customers who are likely to churn.
- Understand the major characteristics associated with churn.
- Identify high-risk customer segments.
- Quantify the recurring revenue associated with churn.
- Prioritize customers for proactive retention campaigns.

The ultimate goal is to transform a predictive model into a **business decision-support system**.

---

## Project Architecture

```text
                    Customer Churn Dataset
                              │
                              ▼
                   Data Understanding
                              │
                              ▼
                    Data Preprocessing
                              │
                              ▼
                 Exploratory Data Analysis
                              │
                              ▼
                    Feature Engineering
                              │
                              ▼
                    Train-Test Split
                              │
                              ▼
                         SMOTE
                              │
                              ▼
                    Model Development
                              │
                ┌─────────────┼─────────────┐
                ▼             ▼             ▼
          Decision Tree   Random Forest   XGBoost
                │             │             │
                └─────────────┼─────────────┘
                              ▼
                   Cross-Validation
                              │
                              ▼
              Random Forest Optimization
                              │
                              ▼
                    Churn Prediction
                              │
                ┌─────────────┴─────────────┐
                ▼                           ▼
        SQL Business Analysis       Revenue-at-Risk
                │                           │
                └─────────────┬─────────────┘
                              ▼
                    Business Insights
                              │
                              ▼
                   Power BI Dashboard
                       (Planned)
