/* =========================================================
   1. CHECK TOTAL RECORDS
   ========================================================= */

SELECT COUNT(*) AS Total_Funds
FROM dbo.final_cleaned_mutual_fund_data;


/* =========================================================
   2. VIEW ALL DATA
   ========================================================= */

SELECT *
FROM dbo.final_cleaned_mutual_fund_data;


/* =========================================================
   3. CHECK COLUMNS
   ========================================================= */

SELECT
    COLUMN_NAME,
    DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'final_cleaned_mutual_fund_data'
ORDER BY ORDINAL_POSITION;


/* =========================================================
   4. FUND CATEGORY ANALYSIS
   ========================================================= */

SELECT
    Category,
    COUNT(*) AS Fund_Count,
    ROUND(AVG(AUM_in_Rs_cr), 2) AS Average_AUM
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY Category
ORDER BY Fund_Count DESC;


/* =========================================================
   5. FUND TYPE ANALYSIS
   ========================================================= */

SELECT
    Fund_Type,
    COUNT(*) AS Fund_Count
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY Fund_Type
ORDER BY Fund_Count DESC;


/* =========================================================
   6. FUND MANAGER ANALYSIS
   ========================================================= */

SELECT
    Fund_Manager,
    COUNT(*) AS Fund_Count
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY Fund_Manager
ORDER BY Fund_Count DESC;


/* =========================================================
   7. AUM ANALYSIS
   ========================================================= */

SELECT
    COUNT(*) AS Total_Funds,
    ROUND(SUM(AUM_in_Rs_cr), 2) AS Total_AUM,
    ROUND(AVG(AUM_in_Rs_cr), 2) AS Average_AUM,
    ROUND(MAX(AUM_in_Rs_cr), 2) AS Maximum_AUM,
    ROUND(MIN(AUM_in_Rs_cr), 2) AS Minimum_AUM
FROM dbo.final_cleaned_mutual_fund_data;


/* =========================================================
   8. TOP 10 FUNDS BY AUM
   ========================================================= */

SELECT TOP 10
    Funds,
    Fund_Manager,
    Category,
    AUM_in_Rs_cr
FROM dbo.final_cleaned_mutual_fund_data
ORDER BY AUM_in_Rs_cr DESC;


/* =========================================================
   9. LOWEST 10 FUNDS BY AUM
   ========================================================= */

SELECT TOP 10
    Funds,
    Fund_Manager,
    Category,
    AUM_in_Rs_cr
FROM dbo.final_cleaned_mutual_fund_data
ORDER BY AUM_in_Rs_cr ASC;


/* =========================================================
   10. EXPENSE RATIO ANALYSIS
   ========================================================= */

SELECT
    Category,
    ROUND(AVG(ExpenseRatio), 2) AS Average_Expense_Ratio
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY Category
ORDER BY Average_Expense_Ratio DESC;


/* =========================================================
   11. NAV ANALYSIS
   ========================================================= */

SELECT
    COUNT(*) AS Total_Funds,
    ROUND(AVG(NAV), 2) AS Average_NAV,
    ROUND(MAX(NAV), 2) AS Maximum_NAV,
    ROUND(MIN(NAV), 2) AS Minimum_NAV
FROM dbo.final_cleaned_mutual_fund_data;


/* =========================================================
   12. RETURN ANALYSIS - 1 YEAR
   ========================================================= */

SELECT
    Category,
    ROUND(AVG(Return_1_yr), 2) AS Average_1_Year_Return
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY Category
ORDER BY Average_1_Year_Return DESC;


/* =========================================================
   13. RETURN ANALYSIS - 3 YEAR
   ========================================================= */

SELECT
    Category,
    ROUND(AVG(Return_3_yrs), 2) AS Average_3_Year_Return
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY Category
ORDER BY Average_3_Year_Return DESC;


/* =========================================================
   14. RETURN ANALYSIS - 5 YEAR
   ========================================================= */

SELECT
    Category,
    ROUND(AVG(Return_5_yrs), 2) AS Average_5_Year_Return
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY Category
ORDER BY Average_5_Year_Return DESC;


/* =========================================================
   15. BEST PERFORMING FUNDS - 1 YEAR
   ========================================================= */

SELECT TOP 10
    Funds,
    Category,
    Fund_Manager,
    Return_1_yr
FROM dbo.final_cleaned_mutual_fund_data
WHERE Return_1_yr IS NOT NULL
ORDER BY Return_1_yr DESC;


/* =========================================================
   16. BEST PERFORMING FUNDS - 3 YEAR
   ========================================================= */

SELECT TOP 10
    Funds,
    Category,
    Fund_Manager,
    Return_3_yrs
FROM dbo.final_cleaned_mutual_fund_data
WHERE Return_3_yrs IS NOT NULL
ORDER BY Return_3_yrs DESC;


/* =========================================================
   17. RISK ANALYSIS
   ========================================================= */

SELECT
    Category,
    ROUND(AVG(Sharpe), 2) AS Average_Sharpe,
    ROUND(AVG(Sortino), 2) AS Average_Sortino,
    ROUND(AVG(Beta), 2) AS Average_Beta,
    ROUND(AVG(Standard_Deviation), 2) AS Average_Standard_Deviation
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY Category
ORDER BY Average_Sharpe DESC;


/* =========================================================
   18. SHARPE RATIO - TOP FUNDS
   ========================================================= */

SELECT TOP 10
    Funds,
    Category,
    Sharpe
FROM dbo.final_cleaned_mutual_fund_data
WHERE Sharpe IS NOT NULL
ORDER BY Sharpe DESC;


/* =========================================================
   19. ALPHA ANALYSIS
   ========================================================= */

SELECT
    Category,
    ROUND(AVG(Alpha), 2) AS Average_Alpha
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY Category
ORDER BY Average_Alpha DESC;


/* =========================================================
   20. BETA ANALYSIS
   ========================================================= */

SELECT
    Category,
    ROUND(AVG(Beta), 2) AS Average_Beta
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY Category
ORDER BY Average_Beta;


/* =========================================================
   21. MARKET CAPITALIZATION ANALYSIS
   ========================================================= */

SELECT
    Category,
    ROUND(AVG(Avg_Market_Cap_in_Rs_cr), 2) AS Average_Market_Cap
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY Category
ORDER BY Average_Market_Cap DESC;


/* =========================================================
   22. LARGE CAP / MID CAP / SMALL CAP
   ========================================================= */

SELECT
    SUM(Large_Cap) AS Total_Large_Cap,
    SUM(Mid_Cap) AS Total_Mid_Cap,
    SUM(Small_Cap) AS Total_Small_Cap
FROM dbo.final_cleaned_mutual_fund_data;


/* =========================================================
   23. SECTOR ANALYSIS
   ========================================================= */

SELECT
    Highest_Sector,
    COUNT(*) AS Fund_Count
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY Highest_Sector
ORDER BY Fund_Count DESC;


/* =========================================================
   24. MATURITY ANALYSIS
   ========================================================= */

SELECT
    Category,
    ROUND(AVG(Avg_Maturity_in_yrs), 2) AS Average_Maturity
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY Category
ORDER BY Average_Maturity DESC;


/* =========================================================
   25. MODIFIED DURATION ANALYSIS
   ========================================================= */

SELECT
    Category,
    ROUND(AVG(Mod_Duration_in_yrs), 2) AS Average_Modified_Duration
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY Category
ORDER BY Average_Modified_Duration DESC;


/* =========================================================
   26. YIELD TO MATURITY
   ========================================================= */

SELECT
    Category,
    ROUND(AVG(Yield_To_Maturity), 2) AS Average_YTM
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY Category
ORDER BY Average_YTM DESC;


/* =========================================================
   27. FUND AGE ANALYSIS
   ========================================================= */

SELECT
    Category,
    ROUND(AVG(Fund_Age_Years), 2) AS Average_Fund_Age
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY Category
ORDER BY Average_Fund_Age DESC;


/* =========================================================
   28. RATING ANALYSIS
   ========================================================= */

SELECT
    RupeeVestRating,
    COUNT(*) AS Fund_Count
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY RupeeVestRating
ORDER BY Fund_Count DESC;


/* =========================================================
   29. RATING + AUM
   ========================================================= */

SELECT
    RupeeVestRating,
    COUNT(*) AS Fund_Count,
    ROUND(AVG(AUM_in_Rs_cr), 2) AS Average_AUM
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY RupeeVestRating
ORDER BY Average_AUM DESC;


/* =========================================================
   30. TURNOVER RATIO
   ========================================================= */

SELECT
    Category,
    ROUND(AVG(Turnover_Ratio), 2) AS Average_Turnover_Ratio
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY Category
ORDER BY Average_Turnover_Ratio DESC;


/* =========================================================
   31. NUMBER OF STOCKS
   ========================================================= */

SELECT
    Category,
    ROUND(AVG(No_ofStocks), 2) AS Average_Number_of_Stocks
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY Category
ORDER BY Average_Number_of_Stocks DESC;


/* =========================================================
   32. BENCHMARK ANALYSIS
   ========================================================= */

SELECT
    Benchmark_Index,
    COUNT(*) AS Fund_Count
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY Benchmark_Index
ORDER BY Fund_Count DESC;


/* =========================================================
   33. CLASSIFICATION ANALYSIS
   ========================================================= */

SELECT
    classification,
    COUNT(*) AS Fund_Count
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY classification
ORDER BY Fund_Count DESC;


/* =========================================================
   34. EXIT LOAD ANALYSIS
   ========================================================= */

SELECT
    Exit_load_Remarks,
    COUNT(*) AS Fund_Count
FROM dbo.final_cleaned_mutual_fund_data
GROUP BY Exit_load_Remarks
ORDER BY Fund_Count DESC;


/* =========================================================
   35. FINAL INVESTMENT SUMMARY
   ========================================================= */

SELECT
    COUNT(*) AS Total_Funds,
    ROUND(SUM(AUM_in_Rs_cr), 2) AS Total_AUM,
    ROUND(AVG(AUM_in_Rs_cr), 2) AS Average_AUM,
    ROUND(AVG(Return_1_yr), 2) AS Average_1_Year_Return,
    ROUND(AVG(Return_3_yrs), 2) AS Average_3_Year_Return,
    ROUND(AVG(Return_5_yrs), 2) AS Average_5_Year_Return,
    ROUND(AVG(Sharpe), 2) AS Average_Sharpe,
    ROUND(AVG(Beta), 2) AS Average_Beta,
    ROUND(AVG(Standard_Deviation), 2) AS Average_Standard_Deviation
FROM dbo.final_cleaned_mutual_fund_data;


/* =========================================================
   END OF MUTUAL FUND SQL ANALYSIS
   ========================================================= */