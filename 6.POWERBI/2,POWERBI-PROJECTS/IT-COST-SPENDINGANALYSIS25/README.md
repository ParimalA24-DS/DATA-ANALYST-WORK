# IT Cost Spending Analysis
## Overview
This project transforms complex IT cost data into interactive dashboards using Power BI. The goal is to provide real-time insights into IT spending, enabling better decision-making and efficient budget control for a small IT company.

![Executive Summary Dashboard](https://github.com/ParimalA24-DS/DATA-ANALYST-WORK/blob/main/6.POWERBI/2%2CPOWERBI-PROJECTS/IT-COST-SPENDINGANALYSIS25/IMAGES-IT/db1.PNG)
![Departmental Breakdown Dashboard](https://github.com/ParimalA24-DS/DATA-ANALYST-WORK/blob/main/6.POWERBI/2%2CPOWERBI-PROJECTS/IT-COST-SPENDINGANALYSIS25/IMAGES-IT/vdb2.PNG)

## Business Challenge
- **Limited Visibility:** The finance team relied on outdated spreadsheets, causing delays in decision-making.
- **Budget Overruns:** Uncontrolled spending led to budget overruns and inefficient resource allocation.
- **Manual Processes:** Manual reporting slowed down the ability to detect cost variances quickly.

## My Role & Responsibilities
- **Data Integration:** Combined data in one Exscelsheet 
- **Data Transformation:**  Power Query to clean and transform millions of cost records.
- **Dashboard Development:** Created two interactive dashboards in Power BI:
  - **Executive Summary:** High-level view of total IT spending, budget versus actual costs, and key variances.
  - **Departmental Breakdown:** Detailed analysis of spending by IT function, region, and time period.
- **Automation:** Integrated Power Automate for scheduled data refreshes and alerts.
- **Optimization:** Applied best practices in data modeling to enhance report performance.

## Key Insights & Impact
- **IT Spending vs. Budget:**  
  - Functional IT and BU Support overspent compared to their planned budgets.
  - Infrastructure spending was below the planned budget, indicating potential savings.
- **Spending Trends:**  
  - IT spending increased gradually over time with certain spikes that impact cash flow.
  - Monthly fluctuations helped in forecasting high-cost periods for proactive budgeting.
- **Regional Analysis:**  
  - The USA had the highest overspend, highlighting regional inefficiencies.
- **Variance Analysis:**  
  - Specific departments showed significant deviations (e.g., Infrastructure overspent by $81M; R&D underspent by $10M).
- **Performance Improvement:**  
  - Dashboards now load in around 7 seconds, reducing decision-making time by 50%.
- **Cost Savings:**  
  - The project led to an estimated 15–20% reduction in IT spending by identifying and correcting inefficiencies.

## Technologies & Data Sources
- **Data Sources:** Excel, SQL Server, and cloud data from Azure SQL.
- **Technologies Used:**
  - **Power BI Desktop:** For dashboard creation and interactive visualization.
  - **Power Query:** For data extraction, cleaning, and transformation.
  - **DAX:** To calculate metrics and build dynamic measures.
  - **Power Automate:** For scheduling automatic data refresh and alerts.
  
## DAX Measures Examples
- **Total IT Spending:**  
 ```DAX
Actual = CALCULATE(SUM(Fact[Value]), Scenario[ScenarioDescription] = "Actual")
Plan = CALCULATE(SUM(Fact[Value]), Scenario[ScenarioDescription] = "Plan")
Var_Plan = CALCULATE([Actual] - [Plan])
Var_Plan_Percentage = DIVIDE([Var_Plan], [Plan], BLANK())

LE1 = CALCULATE(SUM(Fact[Value]), Scenario[ScenarioDescription] = "Latest Estimate 1")
LE2 = CALCULATE(SUM(Fact[Value]), Scenario[ScenarioDescription] = "Latest Estimate 2")
LE3 = CALCULATE(SUM(Fact[Value]), Scenario[ScenarioDescription] = "Latest Estimate 3")

Var_LE1 = CALCULATE([Actual] - [LE1])
Var_LE1_Percentage = DIVIDE([Var_LE1], [LE1], BLANK())

Var_LE2 = CALCULATE([Actual] - [LE2])
Var_LE2_Percentage = DIVIDE([Var_LE2], [LE2], BLANK())

Var_LE3 = CALCULATE([Actual] - [LE3])
Var_LE3_Percentage = DIVIDE([Var_LE3], [LE3], BLANK())

These measures compute three different "Latest Estimate" values for IT spending. They compare each estimate with the actual spending to find the variance and the percentage difference, allowing for detailed performance analysis.
DAX```
-------------------------------
## Conclusions

This Power BI project transforms 166,216 rows of complex IT cost data into clear, actionable dashboards.
By using robust DAX measures and advanced data modeling techniques, the solution delivers real-time insights,
reduces manual reporting, and enhances decision-making. It has led to faster variance detection a
nd significant cost savings, empowering the finance team to manage IT spending effectively.
