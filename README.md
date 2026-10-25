# Telecom Customer Churn Prediction and Retention Analysis

## Project Overview

This project analyzes telecom customer data to understand customer churn, identify customer groups with higher churn rates, and recommend strategies to improve customer retention.

It combines Python-based exploratory data analysis (EDA), a machine learning classification model, and an interactive Power BI dashboard.

## Objectives

- Analyze customer demographics, services, contracts, and payment methods.
- Identify patterns associated with customer churn.
- Build a machine learning model to predict potential customer churn.
- Visualize churn KPIs and customer segments in Power BI.
- Recommend data-driven customer retention strategies.

## Tools and Technologies

- **Python:** Data cleaning and analysis
- **Pandas and NumPy:** Data manipulation
- **Matplotlib and Seaborn:** Data visualization
- **Scikit-learn:** Machine learning and model evaluation
- **Jupyter Notebook:** Analysis and experimentation
- **Power BI:** Interactive dashboard and business reporting

## Dataset

The project uses the Telco Customer Churn dataset, containing customer demographics, subscribed services, contract information, billing details, tenure, and churn status.

The original dataset contains 7,043 customer records. After converting `TotalCharges` to numeric and removing 11 rows with invalid values, 7,032 records remain for analysis.

## Project Workflow

1. **Data Cleaning:** Convert data types, handle invalid values, and prepare the dataset.
2. **Exploratory Data Analysis:** Examine churn distribution and relationships between churn and customer attributes.
3. **Feature Engineering:** Create customer tenure groups.
4. **Model Building:** Use a preprocessing pipeline and a Random Forest classifier.
5. **Model Evaluation:** Evaluate predictions using accuracy, precision, recall, F1-score, and a confusion matrix.
6. **Power BI Dashboard:** Present customer churn KPIs, segment comparisons, and retention recommendations.
7. **Business Recommendations:** Identify customer groups that may benefit from targeted retention efforts.

## Model Performance

The Random Forest model was evaluated on a held-out test set containing 1,407 records.

| Metric | Result |
|---|---:|
| Accuracy | 76.12% |
| Precision | 54.26% |
| Recall | 64.71% |
| F1-score | 59.02% |

These results are from the current model evaluation. They indicate that the model identifies some customers who churn, but its predictions are not perfect and should be improved before real-world use.

## Key Dataset Findings

- Total customers after cleaning: **7,032**
- Customers who churned: **1,869**
- Overall churn rate: **26.58%**

The analysis also compares churn rates by contract type, tenure group, payment method, internet service, online security, and tech support.

## Business Recommendations

- Improve onboarding and engagement for new customers.
- Investigate churn among month-to-month contract customers.
- Review service and support options for customers with higher churn rates.
- Examine payment-method patterns and possible payment friction.
- Monitor churn KPIs and evaluate retention initiatives over time.

These are recommendations based on observed patterns, not proof that any single factor causes churn.

## Project Structure

```text
telecom-customer-churn-analysis/
├── data/
├── notebooks/
│   └── 01_churn_eda.ipynb
├── dashboard/
├── business_insights.csv
├── model_performance.csv
├── telecom_churn_cleaned.csv
├── telecom_churn_model.pkl
├── requirements.txt
├── .gitignore
└── README.md
```

Files should be included in the repository only if they exist and are appropriate to share. Check the dataset's redistribution terms before publishing data files.

## How to Run

1. Clone or download this repository.
2. Install the required Python packages:

   ```bash
   pip install -r requirements.txt
   ```

3. Open `notebooks/01_churn_eda.ipynb` in Jupyter Notebook or VS Code.
4. Ensure the dataset is available at the path expected
