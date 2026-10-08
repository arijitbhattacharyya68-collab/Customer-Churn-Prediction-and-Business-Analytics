# 📊 Customer Churn Prediction & Business Analytics

An end-to-end **Machine Learning and Business Analytics project** that predicts customer churn, identifies high-risk customers, analyzes revenue impact, and derives actionable business insights using **Python, Machine Learning, SQL, and Power BI**.

---

## 🚀 Project Overview

Customer churn is a major challenge for subscription-based businesses, as losing customers directly impacts recurring revenue and long-term growth.

This project develops an end-to-end **Customer Churn Prediction and Business Analytics solution** using the **Telco Customer Churn dataset**.

The project combines Machine Learning and SQL-based business analysis to:

- Predict customers who are likely to churn
- Identify high-risk customers
- Understand major churn patterns
- Analyze churn across customer segments
- Quantify monthly revenue associated with churn
- Identify potential revenue at risk
- Generate actionable business recommendations

The objective is to move beyond simply predicting churn and understand **how churn affects the business and where retention efforts should be focused**.

---

## ✨ Features

- 📊 Exploratory Data Analysis
- 🧹 Data Cleaning & Preprocessing
- 🔄 Feature Engineering
- ⚖️ Class Imbalance Handling using SMOTE
- 🤖 Multiple Machine Learning Models
- 🔁 10-Fold Cross-Validation
- 🌲 Random Forest Hyperparameter Tuning
- 📈 Churn Prediction
- 🎯 High-Risk Customer Identification
- 🗄️ SQL-Based Business Analysis
- 💰 Revenue-at-Risk Analysis
- 💡 Business Insights & Recommendations
- 📊 Power BI Dashboard *(Coming Soon)*

---

## 🛠️ Tech Stack

### Programming & Data Analysis

- Python
- Pandas
- NumPy

### Data Visualization

- Matplotlib
- Seaborn

### Machine Learning

- Scikit-learn
- Imbalanced-learn
- XGBoost

### Database & Analytics

- SQL
- SQLite
- Power BI

### Development Tools

- Jupyter Notebook
- Git
- GitHub

---

## 📊 Dataset

The project uses the **Telco Customer Churn dataset**, containing information about **7,043 customers**.

The dataset includes customer information such as:

- Customer demographics
- Tenure
- Contract type
- Monthly charges
- Total charges
- Internet services
- Phone services
- Payment methods
- Churn status

### Target Variable

`Churn`

- `0` → Customer did not churn
- `1` → Customer churned

---

## 🧠 Machine Learning Workflow

```text
Data Collection
      ↓
Data Cleaning
      ↓
Exploratory Data Analysis
      ↓
Feature Preprocessing
      ↓
Train-Test Split
      ↓
SMOTE
      ↓
Model Training
      ↓
10-Fold Cross-Validation
      ↓
Model Comparison
      ↓
Random Forest Hyperparameter Tuning
      ↓
Model Evaluation
      ↓
Churn Prediction
      ↓
High-Risk Customer Identification
```

---

## 🔍 Data Preprocessing

The following preprocessing steps were performed:

- Removed the `customerID` column.
- Converted `TotalCharges` into numerical format.
- Handled blank values in `TotalCharges`.
- Encoded categorical variables.
- Converted the `Churn` target variable into binary format.
- Performed an 80/20 train-test split.
- Applied **SMOTE only to the training data** to handle class imbalance.

---

## 📈 Exploratory Data Analysis

The exploratory analysis was performed to understand customer behavior and identify patterns associated with churn.

The analysis included:

- Churn distribution
- Numerical feature distributions
- Categorical feature distributions
- Customer tenure analysis
- Monthly charge analysis
- Contract analysis
- Correlation analysis
- Churn patterns across different customer segments

These analyses helped identify customer segments that require greater attention from a retention perspective.

---

## 🤖 Machine Learning Models

Three classification models were evaluated using **10-Fold Cross-Validation**:

| Model | Cross-Validation Accuracy |
|---|---:|
| Decision Tree | 79% |
| Random Forest | **85%** |
| XGBoost | 84% |

Random Forest achieved the highest cross-validation accuracy and was selected for further optimization.

---

## 🌲 Random Forest Optimization

Random Forest was optimized using `RandomizedSearchCV`.

### Best Parameters

```text
n_estimators = 100
max_depth = 20
min_samples_split = 5
min_samples_leaf = 1
max_features = sqrt
```

---

## 📊 Final Model Performance

The optimized Random Forest model achieved the following performance on the test dataset:

| Metric | Score |
|---|---:|
| Accuracy | **78.35%** |
| Churn Precision | **58%** |
| Churn Recall | **63%** |
| Churn F1-Score | **61%** |

### Confusion Matrix

```text
                    Predicted
                  No Churn   Churn

Actual No Churn      870      166
Actual Churn        139      234
```

The model correctly identified **234 churned customers**.

The **63% recall for churn** is particularly important from a retention perspective because it measures how effectively the model identifies customers who actually churned.

---

## 🎯 High-Risk Customer Identification

The trained Random Forest model was used to generate churn predictions and identify customers at higher risk of leaving.

The prediction workflow generates:

- Churn prediction
- Churn probability
- Customer risk classification

### 🔴 400 High-Risk Customers

These customers represent approximately:

### 💰 $29,929.90 in Potential Monthly Revenue at Risk

This demonstrates how Machine Learning can be used not only for prediction but also for **customer risk management and revenue protection**.

---

## 🗄️ SQL Business Analysis

SQL was used to analyze customer churn from a business perspective.

The analysis addresses the following business questions:

1. **What is the overall customer churn rate?**

2. **Which contract type has the highest churn rate?**

3. **How does customer tenure affect churn?**

4. **Which monthly charge segment has the highest churn?**

5. **How much monthly revenue is associated with churned customers?**

6. **Which contract segment contributes the highest monthly revenue associated with churn?**

7. **How much potential revenue is at risk among customers identified as high-risk by the ML model?**

The complete SQL queries are available in:

```text
SQL/churn_analysis.sql
```

---

## 📈 Key Business Insights

The SQL analysis and Machine Learning results provide the following key business insights.

### 🔹 1. Overall Customer Churn

**1,869 out of 7,043 customers have churned, resulting in an overall churn rate of 26.54%.**

This indicates that customer churn represents a significant challenge for the business and can have a substantial impact on recurring revenue.

### 🔹 2. Contract Type

**Month-to-month customers have the highest churn rate of 42.71%.**

This indicates that customers without long-term contractual commitments are more vulnerable to churn.

The segment should therefore be a major focus of customer retention efforts.

### 🔹 3. Customer Tenure

**Customers with 0–1 year of tenure have the highest churn rate of 47.44%.**

This indicates that the early stage of the customer lifecycle is particularly vulnerable to churn.

### 🔹 4. Monthly Charges

**Customers with monthly charges between $60 and $90 have the highest churn rate of 33.91%.**

This suggests that higher-paying customers may require closer monitoring of customer satisfaction and perceived value.

### 🔹 5. Revenue Impact

**The 1,869 churned customers represent approximately $139,130.85 in monthly revenue.**

This demonstrates that churn is not only a customer-retention problem but also a significant recurring-revenue problem.

### 🔹 6. Revenue Exposure by Contract

**Churned month-to-month customers account for approximately $120,847.10 in monthly revenue.**

This makes the month-to-month segment particularly important from a revenue-retention perspective.

### 🔹 7. High-Risk Customers

**The ML model identified 400 high-risk customers representing approximately $29,929.90 in potential monthly revenue at risk.**

This demonstrates the practical value of combining predictive analytics with business analysis.

---

## 💡 Business Recommendations

Based on the combined Machine Learning and SQL analysis, the following business strategies are recommended.

### 🎯 1. Prioritize High-Risk Customers

Use the churn prediction model to identify customers with a high probability of churn and prioritize them for proactive retention campaigns.

### 🔄 2. Focus on Month-to-Month Customers

Since month-to-month customers have the highest churn rate of **42.71%**, businesses should consider targeted retention strategies such as:

- Long-term contract incentives
- Loyalty benefits
- Personalized offers
- Contract upgrade incentives

### 🌱 3. Strengthen New-Customer Onboarding

Customers with 0–1 year of tenure have a churn rate of **47.44%**.

Businesses should therefore focus on improving the early customer experience through:

- Better onboarding
- Early customer engagement
- Proactive support
- Satisfaction monitoring
- First-year loyalty initiatives

### 💰 4. Protect High-Value Revenue

Retention decisions should consider both:

**Churn Probability + Revenue Impact**

A customer with a high probability of churn and a high monthly charge should receive greater retention priority.

### 📞 5. Proactively Engage At-Risk Customers

The ML model can be used as an early-warning system.

```text
Customer Data
      ↓
Churn Prediction
      ↓
High-Risk Customer
      ↓
Proactive Retention Action
      ↓
Potential Churn Reduction
```

### 📊 6. Monitor Higher-Charge Customer Segments

Customers in the **$60–$90 monthly charge segment** have a churn rate of **33.91%**.

Businesses should closely monitor:

- Customer satisfaction
- Service quality
- Customer complaints
- Perceived value
- Pricing concerns

### 💵 7. Prioritize Retention Based on Revenue at Risk

The analysis shows that churn can result in substantial recurring revenue exposure.

Therefore, businesses should prioritize customers using both:

```text
Churn Risk
    +
Revenue at Risk
    ↓
Retention Priority
```

---

## 📌 Business Impact

The project demonstrates how Machine Learning and Business Analytics can work together to support customer retention.

### Machine Learning

Identifies:

> **Which customers are likely to churn?**

### SQL Analysis

Identifies:

> **Which customer segments are experiencing the most churn and how much revenue is associated with it?**

### Business Analytics

Answers:

> **Where should the business focus its retention efforts?**

The complete analytical flow is:

```text
Customer Data
      ↓
Machine Learning
      ↓
Churn Prediction
      ↓
High-Risk Customers
      ↓
SQL Analysis
      ↓
Revenue Impact
      ↓
Business Insights
      ↓
Retention Strategy
```

---

## 📂 Project Structure

```text
Customer-Churn-Prediction-and-Business-Analytics/
│
├── Customer_Churn_Prediction.ipynb
│
├── README.md
│
├── requirements.txt
│
├── SQL/
│   └── churn_analysis.sql
│
└── PowerBI/
    └── README.md
```

---

## 📊 Dashboard

An interactive **Power BI dashboard** is planned to visualize the business findings from the project.

The dashboard will include:

- Overall Churn Rate
- Total Customers
- Churned Customers
- Churn by Contract
- Churn by Tenure
- Churn by Monthly Charges
- Revenue Impact
- Revenue at Risk
- High-Risk Customers

### 🚧 Power BI Dashboard

**Coming Soon**

---

## 📈 Future Improvements

- Complete the Power BI interactive dashboard.
- Add SHAP-based model explainability.
- Improve churn recall through further model optimization.
- Develop an advanced customer risk-scoring framework.
- Prioritize customers using both churn probability and revenue impact.
- Build an interactive web application for churn prediction.
- Develop automated customer retention recommendations.

---

## 📚 Concepts Used

### Data Science

- Data Cleaning
- Exploratory Data Analysis
- Feature Engineering
- Data Visualization
- Feature Encoding
- Correlation Analysis

### Machine Learning

- Binary Classification
- Decision Tree
- Random Forest
- XGBoost
- SMOTE
- Train-Test Split
- Cross-Validation
- Hyperparameter Tuning
- RandomizedSearchCV
- Precision
- Recall
- F1-Score
- Confusion Matrix

### SQL

- Aggregation
- `GROUP BY`
- `CASE WHEN`
- Conditional Aggregation
- Customer Segmentation
- Revenue Analysis

### Business Analytics

- Customer Churn Analysis
- Customer Segmentation
- Revenue-at-Risk Analysis
- Customer Risk Identification
- Retention Strategy
- Predictive Analytics
- Data-Driven Decision Making

---

## 🤝 Contributing

Contributions are welcome!

If you have suggestions or improvements, feel free to fork the repository and create a pull request.

---

## 📄 License

This project is licensed under the MIT License.

---

## 👨‍💻 Author

### Arijit Bhattacharyya

**M.Sc. Mathematics & Computing**  
**IIT (ISM) Dhanbad**

📧 Connect with me on LinkedIn! **[Arijit Bhattacharyya](https://www.linkedin.com/in/arijit-bhattacharyya/)**

---

⭐ If you found this project useful, don't forget to Star this repository!
