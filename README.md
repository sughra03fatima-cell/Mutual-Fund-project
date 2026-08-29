# Mutual Fund Project

## Project Overview

This project focuses on analyzing mutual fund data using SQL Server and Microsoft Power BI.

The objective is to understand mutual fund characteristics, performance, risk, fund categories, sectors, and ratings through SQL-based analysis and an interactive Power BI dashboard.

## Objectives

- Analyze the overall mutual fund dataset.
- Compare different fund types.
- Analyze fund performance using different return periods.
- Evaluate risk using Standard Deviation, Beta, Sharpe Ratio, and Sortino Ratio.
- Analyze funds across categories and sectors.
- Compare funds based on RupeeVest ratings.
- Identify top-performing funds.
- Create an interactive five-page Power BI dashboard.

## Tools & Technologies

- SQL Server
- SQL Server Management Studio (SSMS)
- Microsoft Power BI
- DAX
- Excel/CSV Dataset

## Dataset

The dataset contains information about mutual funds including:

- Fund Name
- Fund Type
- Category
- AUM
- NAV
- Expense Ratio
- 1 Year Return
- 5 Year Return
- 10 Year Return
- Standard Deviation
- Beta
- Sharpe Ratio
- Sortino Ratio
- Turnover Ratio
- Yield to Maturity
- RupeeVest Rating
- Fund Age
- Highest Sector

## SQL Analysis

SQL Server was used to:

- Validate the total number of records.
- Analyze fund type distribution.
- Analyze category-wise fund counts.
- Calculate average AUM and NAV.
- Calculate average returns.
- Analyze risk metrics.
- Analyze sector-wise performance.
- Analyze RupeeVest ratings.
- Identify top-performing funds.
- Check data availability and missing values.

## Power BI Dashboard

The project contains five interactive dashboard pages.

### 1. Mutual Fund Overview

Provides an overall view of the mutual fund dataset using:

- Total Funds
- Total AUM
- Average NAV
- Average Expense Ratio
- Fund Type Distribution
- Category-wise Fund Count
- Average AUM
- Average Return
- Risk Analysis

### 2. Performance Analysis

Focuses on mutual fund performance using:

- Top 10 Funds by 1 Year Return
- 5 Year vs 10 Year Average Return
- Sharpe Ratio
- Sortino Ratio
- Beta
- Turnover Ratio
- Yield to Maturity

### 3. Risk Analysis

Analyzes risk-related metrics such as:

- Standard Deviation
- Beta
- Sharpe Ratio
- Sortino Ratio
- NAV
- Turnover Ratio
- Yield to Maturity
- Fund Age
- Risk vs 1 Year Return

### 4. Fund Category & Sector Analysis

Provides category and sector-level analysis using:

- Fund Count by Sector
- Average AUM by Sector
- Average 1 Year Return by Sector
- Fund Count by Category
- Average Expense Ratio by Category
- Average Return by Category
- Average AUM by Category
- Fund Type Distribution by Category
- Risk and performance metrics by sector

### 5. Fund Rating & Investment Insights

Analyzes mutual funds according to RupeeVest Rating using:

- Fund Count by Rating
- Average 1 Year Return by Rating
- Average Sharpe Ratio by Rating
- Average Sortino Ratio by Rating
- Average Beta by Rating
- Average Expense Ratio by Rating
- Average Standard Deviation by Rating
- Average AUM by Rating
- Top 10 Funds by 1 Year Return
- Average NAV by Rating
- Average Yield to Maturity by Rating

## Interactive Features

The Power BI dashboard includes slicers for:

- Fund Type
- Category
- Highest Sector

These filters allow users to interactively explore the mutual fund data.

## Project Structure

```text
Mutual Fund Project
│
├── Dataset
│   └── Cleaned Mutual Fund Dataset
│
├── screenshots
│   ├── Dashboard_Page_1.png
│   ├── Dashboard_Page_2.png
│   ├── Dashboard_Page_3.png
│   ├── Dashboard_Page_4.png
│   └── Dashboard_Page_5.png
│
├── power bi
│   └── Mutual_Fund_Analysis.pbix
│
├── Sql
│   └── mutual_fund_analysis.sql
│
└── README.md

## Conclusion

This project demonstrates how SQL Server and Power BI can be used together to analyze mutual fund data.

SQL Server was used for data validation and analytical queries, while Power BI was used to create interactive dashboards for understanding fund performance, risk, categories, sectors, and ratings.

## Author

**Sughra Fatima**

*This project was created for learning and portfolio purposes.