# Overview
This dashboard is designed to analyze order value KPIs by examining month-over-month (MoM) performance changes and identifying whether growth is driven by customer volume or spending intensity per customer.
<br />
The analysis covers the period from November 1, 2022 to December 30, 2022.
![KPI Dashboard Overview](kpi_dashboard_overview.png)

# Business Question
How do order value metrics (AOV, ARPPU) evolve month-over-month, and which product categories and customer segments drive higher-value orders?

# Dashboard
- **Tableau Public:** [View Dashboard on Tableau Public](https://public.tableau.com/app/profile/jungwon.hur/viz/Part10-1_KPI/KPIDashboard)
- **Core components:**
   - Top-level KPIs summarizing overall order value performance (Sales, Quantity, Customers, AOV, ARPPU)
   - MoM comparisons highlighting short-term performance changes
   - Hierarchical views enabling drill-down from overall performance by category and region
- **Key filters:**
    - Date range (MoM comparison)
    - Product category (All, Furniture, Office Supplies, Technology)
    - Sub-category and geography

# Key Insights

**Overview**
- Overall MoM performance weakened in December despite a positive yearly trend, indicating short-term contraction across both volume and value metrics.
- Compared to the prior year, performance was notably stronger in November, which makes the December slowdown appear more pronounced and suggests that the year-end demand peak may have shifted earlier in the calendar rather than reflecting a structural weakening in overall performance.

**By Category**
- **Office Supplies** was the only category showing MoM growth across all major metrics, including customers, AOV, and ARPPU, indicating a balanced improvement in both volume and value dimensions.
- **Furniture** showed growth in total sales driven by increases in both quantity and customer count, indicating volume-led expansion. However, declines in AOV and ARPPU suggest that this growth was not supported by value metrics and was likely driven by lower per-order and per-customer spend.
- **Technology** experienced broad-based declines across key metrics, with the most pronounced weakness observed in value metrics such as AOV and ARPPU, indicating a contraction driven primarily by reduced per-order and per-customer spend rather than volume alone.

**By Region**
- High-ARPPU regions did not always align with high order volume, highlighting regional differences in revenue drivers.

# Business Implications
- Short-term performance monitoring should prioritize MoM KPIs over YoY trends.
- Investment strategies should distinguish between volume-driven and value-driven categories.
- Targeted, category-specific approaches are likely to be more effective than uniform growth strategies in categories where volume and value metrics exhibit divergent performance trends.
