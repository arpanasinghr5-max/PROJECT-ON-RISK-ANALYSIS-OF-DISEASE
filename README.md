# PROJECT-ON-RISK-ANALYSIS-OF-DISEASE
Disease risk prediction project using Logistic Regression in R. Analyzed the impact of height, weight, and gender on disease risk using t-test, chi-square test, EDA, and confusion matrix evaluation. The study found weight as a major factor influencing disease risk prediction.

## Overview
This project focuses on predicting disease risk using Logistic Regression in R programming. The analysis was performed using anthropometric variables such as height, weight, and gender to determine their influence on disease risk classification.

The study applies statistical techniques including Exploratory Data Analysis (EDA), Independent Sample t-test, Chi-square test, and Logistic Regression modeling to identify significant predictors of disease risk.

---

## Objectives
- Analyze the relationship between height, weight, gender, and disease risk.
- Perform statistical hypothesis testing.
- Build a Logistic Regression model for disease risk prediction.
- Evaluate model performance using a confusion matrix.
- Interpret the influence of predictors on disease risk.

---

## Dataset Information
The dataset contains:
- Gender
- Height
- Weight
- Index (Health Indicator)

A binary variable named **Risk** was created from the Index variable:
- 0 → Low Risk
- 1 → High Risk

Total observations: **500**

---

## Technologies & Libraries Used
- R Programming
- ggplot2
- Logistic Regression
- Statistical Hypothesis Testing

---

## Statistical Methods Used

### 1. Exploratory Data Analysis (EDA)
- Histogram for height distribution
- Boxplot for weight vs risk
- Contingency table for gender vs risk

### 2. Independent Sample t-test
Used to compare mean weight between low-risk and high-risk groups.

### 3. Chi-square Test
Used to check association between gender and disease risk.

### 4. Logistic Regression
Built a prediction model using:
- Height
- Weight
- Gender

---

## Key Findings
- Weight has a strong positive effect on disease risk.
- Height has a negative relationship with risk.
- Gender showed minimal impact on disease risk.
- High-risk individuals had significantly higher average weight.
- The logistic regression model achieved strong prediction performance.

---

## Model Evaluation
The model performance was evaluated using a confusion matrix, which demonstrated high classification accuracy for predicting disease risk categories.

---

## Conclusion
This project demonstrates how statistical analysis and machine learning techniques can be combined for disease risk prediction. The results indicate that weight is one of the most important predictors of disease risk, while gender has very little influence in this dataset.

---

## Repository Contents
- BMI DATA.csv
- BMI PROJECT.R
- Project Report PDF
- README.md

---

## Author
Rajput Arpana Badshah
