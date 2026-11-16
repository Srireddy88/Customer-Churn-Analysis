
# 📊 IBM Telco Customer Churn Analysis

An end-to-end Data Analytics project focused on analyzing customer churn in the telecommunications industry using **Python, SQL, Excel, and Power BI**.

## 📌 Project Overview

Customer churn refers to the percentage of customers who stop using a company's products or services over a given period.

For telecommunications companies, understanding why customers leave is important for improving customer retention and maintaining revenue.

In this project, I analyzed the IBM Telco Customer Churn dataset to identify customer behavior patterns, explore factors associated with churn, and generate insights that can support better business decisions.

The project follows an end-to-end data analytics workflow, starting with data cleaning and preprocessing, followed by exploratory data analysis, SQL analysis, and Power BI dashboard development.

## 🎯 Project Objectives

- Understand customer churn patterns.
- Clean and preprocess the raw dataset.
- Perform exploratory data analysis (EDA).
- Identify relationships between customer attributes and churn.
- Answer business questions using SQL.
- Build an interactive Power BI dashboard.
- Generate actionable business insights and recommendations.

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| Microsoft Excel | Data inspection and cleaning |
| Python | Data analysis and preprocessing |
| Pandas & NumPy | Data manipulation and analysis |
| Matplotlib & Seaborn | Data visualization |
| MySQL | SQL queries and business analysis |
| Power BI | Interactive dashboard and reporting |
| Git & GitHub | Project documentation and version control |

## 📂 Project Workflow

### 1. Data Cleaning & Preprocessing

Cleaned and prepared the dataset to ensure data quality and consistency.

Tasks performed:

- Handled missing and blank values.
- Checked and removed duplicate records.
- Standardized column names and text values.
- Validated data types.
- Identified and examined potential outliers.
- Prepared the cleaned dataset for further analysis.

**Dataset after cleaning:**
- Total Records: 7,043
- Total Columns: 21
- Missing Values: 0
- Duplicate Records: 0

### 2. Exploratory Data Analysis (EDA)

Performed EDA using Python to understand customer characteristics and identify patterns in churn behavior.

Analysis included:

- Understanding dataset structure and statistical summaries.
- Univariate analysis of numerical and categorical variables.
- Bivariate and multivariate analysis.
- Customer churn distribution.
- Analysis of numerical features using mean, median, standard deviation and quartiles.
- Correlation analysis.
- Outlier detection using the IQR method.
- Visualizations using Matplotlib and Seaborn.

### 3. Data Analysis & Business Questions

Explored the following business questions:

1. What is the overall customer churn rate?
2. Which contract type has the highest churn rate?
3. Which payment method is associated with the highest churn?
4. Does customer tenure affect churn?
5. Which customer segments are more likely to leave?
6. How do monthly charges relate to customer churn?
7. Does internet service type influence churn?
8. Are customers without technical support more likely to churn?

### 4. SQL Analysis – MySQL

Imported the cleaned dataset into MySQL and performed business-oriented analysis.

SQL concepts used:

- SELECT and DISTINCT
- WHERE and ORDER BY
- GROUP BY and HAVING
- Aggregate functions (COUNT, SUM, AVG)
- CASE statements
- Data validation and duplicate checks
- Customer segmentation and churn-rate calculations

Analyzed churn across contract types, tenure groups, payment methods, internet services, monthly charges, and customer demographics.

### 5. Power BI Dashboard

Developed an interactive Power BI dashboard to present customer churn patterns and key metrics.

Dashboard analysis includes:

- Customer churn distribution.
- Churn by contract type.
- Churn by payment method.
- Churn by internet service.
- Customer demographics and churn.
- Customer tenure analysis.
- Monthly charges and churn patterns.

The dashboard helps communicate important findings through interactive visualizations and KPI reporting.

## 📈 Key Findings

The analysis revealed several patterns:

| Customer Segment | Churn Rate |
|---|---:|
| Month-to-month contracts | 42.71% |
| One-year contracts | 11.27% |
| Two-year contracts | 2.83% |
| Electronic check payments | 45.29% |
| Fiber optic internet | 41.89% |
| Customers without technical support | 31.19% |
| Senior citizens | 41.68% |

Additional findings:

- Average monthly charges for churned customers: 74.44
- Average monthly charges for retained customers: 61.27
- Overall churn rate: 26.54%

*Note: These are descriptive findings from the cleaned dataset.*
<img width="1167" height="677" alt="Screenshot 2026-11-16 232325" src="https://github.com/user-attachments/assets/cda8b8ff-7d58-4a9c-a390-86f363c77bdb" />

<img width="1161" height="647" alt="Screenshot 2026-11-16 232341" src="https://github.com/user-attachments/assets/a36507e9-9940-469a-ab4a-9c0d1241ccfb" />

## 💡 Business Recommendations

Based on the analysis, the following recommendations could help improve customer retention:

1. **Promote long-term contracts:** Offer suitable incentives to encourage customers to move from month-to-month contracts to longer-term plans.

2. **Improve payment experience:** Investigate the high churn associated with electronic-check payments and encourage convenient automatic payment options.

3. **Focus on fiber optic customers:** Investigate service quality, pricing, and customer satisfaction among fiber optic subscribers.

4. **Improve technical support:** Encourage customers to use technical support services and provide proactive assistance.

5. **Focus on senior customers:** Explore personalized support and retention strategies for senior citizens.

6. **Monitor new customers:** Pay closer attention to customer experience during the early stages of their subscription.

## 📊 Project Outcome

This project demonstrates an end-to-end data analytics workflow, transforming raw customer data into meaningful insights through data cleaning, exploratory analysis, SQL querying, and interactive dashboard development.

This project helps businesses understand customer behavior, identify churn patterns, and make informed decisions to improve customer retention.

## 🚀 Skills Demonstrated

- Data Cleaning & Preprocessing
- Exploratory Data Analysis (EDA)
- Python for Data Analytics
- SQL Querying and Business Analysis
- Data Visualization
- Power BI Dashboard Development
- Customer Segmentation
- Business Insights & Analytical Thinking
- Data Storytelling
