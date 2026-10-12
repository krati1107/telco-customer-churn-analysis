# 📉 Telco Customer Churn Prediction & Retention Analysis

End-to-end Data Analyst project — SQL + Python + Machine Learning

---

## 📌 Business Problem

A telecom company is losing customers at a high rate. Acquiring new customers costs 5–7x more than retaining existing ones. This project builds a proactive, data-driven system to identify at-risk customers before they leave.

---

## 🎯 Project Objectives

- Analyze 7,000+ customer records to find churn drivers
- Predict churn probability using Machine Learning
- Segment customers into High / Medium / Low risk tiers
- Recommend retention strategies to protect revenue

---

## 🛠️ Tech Stack

| Layer | Tools |
|---|---|
| Data Storage | MySQL, MySQL Workbench |
| Data Analysis | Python (Pandas, NumPy) |
| Machine Learning | Scikit-learn (Random Forest) |
| Visualization | Matplotlib, Seaborn |
| Environment | Jupyter Notebook |

---

## 📊 Key Insights

- 🔴 Month-to-month contracts have the highest churn rate (~42%)
- 🔴 New customers (0–12 months) churn the most
- 🔴 Electronic check payment method is linked to higher churn
- 🔴 Customers with higher monthly charges churn more

---

## 🤖 Machine Learning Model

**Algorithm:** Random Forest Classifier  
**Metric focus:** Recall — catching potential churners matters more than perfect precision

### Model Evaluation

| Metric | Score |
|---|---|
| Accuracy | [FILL] |
| Precision (Churn) | [FILL] |
| Recall (Churn) | [FILL] |
| F1-Score | [FILL] |
| ROC-AUC | [FILL] |

**Confusion Matrix:** [FILL — e.g. `[[930, 105], [191, 227]]`]

### Evaluation Charts

**Confusion Matrix**

![Confusion Matrix](images/confusion_matrix.png)

**ROC Curve**

![ROC Curve](images/roc_curve.png)

**Top 10 Feature Importances**

![Feature Importance](images/feature_importance.png)

**Top Drivers:** Contract type · Tenure · Total charges

---

## 📊 Dashboard Layout Mockup

> ⚠️ The images below are **design mockups with illustrative data**, not real model outputs. A live version driven by actual notebook outputs will replace them after final review.

### Page 1 — Executive Summary
![Executive Summary](images/page1_executive_summary.png)

### Page 2 — Churn Drivers
![Churn Drivers](images/page2_churn_drivers.png)

### Page 3 — High-Risk Customers
![High-Risk Customers](images/page3_high_risk.png)

---

## 📁 Project Structure

```
telco-customer-churn-analysis/
├── README.md
├── requirements.txt
├── LICENSE
├── data-folder/          # IBM Telco Customer Churn dataset
├── python/               # EDA and ML notebook
├── sql/                  # SQL queries and views
└── images/               # Model evaluation charts + dashboard mockups
```

---

## 🚀 How to Run

1. Clone the repo:
   ```bash
   git clone https://github.com/krati1107/telco-customer-churn-analysis.git
   cd telco-customer-churn-analysis
   ```

2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

3. Load the dataset into MySQL (see `sql/` folder for setup queries)

4. Open the notebook in `python/` and run all cells

---

## 📂 Dataset

**Source:** [IBM Telco Customer Churn — Kaggle](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)

7,043 customer records · 21 features · churn label included.

---

## 💡 Business Recommendation

Target month-to-month customers in their first year with annual-contract upgrade offers and personalized discounts. The combination of short tenure and flexible contracts accounts for the majority of churn — addressing this segment directly protects the largest share of at-risk revenue.

---

## 👤 Author

**Krati Shrivastava**  
Data Analyst | Python · SQL · Power BI · GenAI

- 🔗 LinkedIn: [krati-shrivastava-analyst](https://linkedin.com/in/krati-shrivastava-analyst)
- 💻 GitHub: [krati1107](https://github.com/krati1107)

---

## 📜 License

MIT — see [LICENSE](LICENSE).
