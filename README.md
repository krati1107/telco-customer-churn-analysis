# 📊 Telecom Customer Churn Prediction & Retention Analysis

An end-to-end data analytics and machine learning project to analyze telecom customer churn, identify customer retention patterns, and predict customers who may leave the service.

## 🎯 Project Objectives

- Analyze customer churn patterns and behavior.
- Identify factors associated with customer churn.
- Build a machine learning model to predict churn.
- Present business insights to support customer retention decisions.

## 🛠️ Tools & Technologies

- **Python:** Data cleaning, exploratory data analysis, and preprocessing
- **Pandas & NumPy:** Data manipulation
- **Matplotlib & Seaborn:** Data visualization
- **Scikit-learn:** Machine learning and model evaluation
- **Power BI:** Interactive dashboard and business reporting
- **Jupyter Notebook:** Analysis and experimentation

## 📁 Project Structure

```text
telco-customer-churn-analysis/
├── data/
│   └── README.md
├── dashboard/
│   └── Power BI dashboard file (.pbix)
├── notebooks/
│   └── 01_churn_eda.ipynb
├── screenshots/
├── business_insights.csv
├── model_performance.csv
├── requirements.txt
├── .gitignore
└── README.md
```

*This shows the intended structure. Your actual files may differ.*

## 🔍 Project Workflow

1. **Data Cleaning:** Handled missing or invalid values and prepared the dataset for analysis.
2. **Feature Engineering:** Created a tenure group feature to help analyze customer behavior.
3. **Exploratory Data Analysis:** Examined churn patterns and customer characteristics.
4. **Model Building:** Trained a Random Forest classifier.
5. **Model Evaluation:** Evaluated predictions using accuracy, precision, recall, F1-score, and a confusion matrix.
6. **Dashboard Development:** Used Power BI to present customer churn metrics and business insights.

## 📈 Dataset Summary

| Metric | Value |
|---|---:|
| Original records | 7,043 |
| Records after cleaning | 7,032 |
| Customers who churned | 1,869 |
| Overall churn rate | 26.58% |

The original dataset contains telecom customer information, including tenure, services, contract details, charges, and churn status.

## 🤖 Machine Learning Model

A **Random Forest Classifier** was used to predict customer churn.

| Evaluation Metric | Result |
|---|---:|
| Accuracy | 76.12% |
| Precision | 54.26% |
| Recall | 64.71% |
| F1-score | 59.02% |

These results are from the current model evaluation. Accuracy alone does not fully measure churn prediction quality, so precision, recall, and F1-score are also included.

## 📊 Dashboard & Project Screenshots

Screenshots will help recruiters quickly understand the analysis and dashboard.

### 1. Power BI Dashboard

![Power BI Dashboard]https://1drv.ms/i/c/0C3C682A870456A0/IQClRVAu6sPlQ74lfJbZk8EcAYAWmPEskQ42tbAG2c5KBX4?e=5KcLUO

### 2. Exploratory Data Analysis

![Exploratory Data Analysis]https://1drv.ms/i/c/0C3C682A870456A0/IQAkXOYOvVa4QJLlvhZCpLGOASI00szlN9muHXnw8jrCMXA?e=vHRtTI

### 3. Model Performance

![Model Performance]https://1drv.ms/i/c/0C3C682A870456A0/IQC4ROwmP777SYIvWPG7s41KAdCTFk2T-5xZV9VIiadyC1Q?e=zZlzmb

> **Note:** Upload your actual screenshots using these exact filenames, or change the image paths above to match your filenames. The images will not display until the files exist in the repository.

## 💡 Business Value

This project demonstrates how customer data can be used to:

- Understand customer churn and retention patterns.
- Identify customer groups that may need retention attention.
- Communicate analytical findings through visualizations.
- Support data-driven business decisions.

## 🚀 How to Run the Project

1. Clone or download this repository.
2. Install the dependencies listed in `requirements.txt`.
3. Obtain the original dataset from its source and follow its license terms.
4. Place the dataset in the `data/` folder.
5. Open `notebooks/01_churn_eda.ipynb` in Jupyter Notebook.
6. Update the dataset path in the notebook if necessary and run the cells.

The Power BI dashboard can be opened in Power BI Desktop if the `.pbix` file is included.

## ⚠️ Limitations

- Model performance depends on the available dataset and selected features.
- Predictions are not guarantees that a customer will churn.
- The model should be evaluated and improved before any real-world business deployment.
- This repository does not claim a live deployed prediction service.

## 👩‍💻 Author

**Krati Srivastava**

GitHub: [@krati1107](https://github.com/krati1107)

