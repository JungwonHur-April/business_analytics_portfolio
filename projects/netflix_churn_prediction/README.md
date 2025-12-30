# Netflix Churn Prediction

## Project Context
This analysis uses customer-level subscription data from a Netflix-like streaming service, including user demographics, subscription information, and usage-related features.
The dataset captures whether users churned or retained their subscriptions, enabling analysis of behavioral and account-level factors associated with customer churn.

## Project Objectives
- Predict customer churn using supervised machine learning classification models
- Identify which user characteristics and behavioral signals are most strongly associated with churn

## Approach
The analysis applies a supervised classification framework, using Logistic Regression as a baseline model and comparing it with Decision Tree, Random Forest, Neural Network (MLP), and XGBoost models.
Model performance was evaluated using standard classification metrics and confusion matrices to ensure fair comparison.

## Key Findings
Among the evaluated models, XGBoost showed the strongest predictive performance.
Feature importance analysis consistently highlighted usage-related variables—such as watch time and recent activity—as key drivers distinguishing churned users from retained users.

## Business Implications
The results suggest that churn is less driven by static demographic attributes and more by sustained engagement patterns over time.
This highlights the importance of retention strategies that focus on maintaining user activity, particularly for users showing early signs of disengagement.
Potential actions include targeted content recommendations, timely in-app prompts, and experimentation with engagement-driven interventions.

## Repository Contents
[netflix_churn_prediction.ipynb](netflix_churn_prediction.ipynb) - Full data preparation, modeling, evaluation, and interpretation

## Environment
Python 3.12.12 with common data science libraries (pandas, numpy, scikit-learn)

## Notes
The dataset is a simulated, Netflix-like subscription dataset used for analytical purposes.
