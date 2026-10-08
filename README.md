# Customer Churn Prediction and Business Analytics

An end-to-end customer churn analytics project combining Machine Learning and SQL-based business analysis to identify customers at risk of churn and quantify the potential revenue impact.

## Project Overview

Customer churn is a major business challenge because losing existing customers directly affects recurring revenue and long-term customer value.

This project uses the Telco Customer Churn dataset to build a machine learning pipeline for predicting customer churn and a SQL-based business analysis framework for identifying important churn patterns, high-risk customer segments, and revenue at risk.

The project combines:

- Exploratory Data Analysis
- Data preprocessing
- Class imbalance handling using SMOTE
- Machine Learning classification
- Random Forest hyperparameter tuning
- Model evaluation
- SQL-based business analysis
- Customer risk and revenue analysis
- Power BI dashboard — **Coming Soon**

---

## Objectives

The main objectives of this project are:

1. Analyze customer characteristics and identify patterns associated with churn.
2. Build machine learning models to predict whether a customer is likely to churn.
3. Address class imbalance using SMOTE.
4. Compare multiple classification models using cross-validation.
5. Optimize the Random Forest model using hyperparameter tuning.
6. Identify high-risk customers using the trained model.
7. Quantify the potential monthly revenue associated with high-risk customers.
8. Derive actionable business insights that can support customer retention strategies.

---

## Dataset

The project uses the **Telco Customer Churn dataset**, containing customer-level information such as:

- Demographics
- Customer tenure
- Contract type
- Internet service
- Payment method
- Monthly charges
- Total charges
- Services subscribed
- Churn status

The dataset contains **7,043 customers**.

---

## Project Workflow

```text
Data Loading
     ↓
Data Understanding
     ↓
Data Cleaning
     ↓
Exploratory Data Analysis
     ↓
Feature Encoding
     ↓
Train-Test Split
     ↓
SMOTE Class Balancing
     ↓
Model Training
     ↓
10-Fold Cross-Validation
     ↓
Random Forest Hyperparameter Tuning
     ↓
Model Evaluation
     ↓
Churn Prediction
     ↓
SQL Business Analysis
     ↓
Revenue-at-Risk Analysis
     ↓
Power BI Dashboard (Coming Soon)
