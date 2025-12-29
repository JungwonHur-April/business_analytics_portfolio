# Overview
This dashboard uses a metric hierarchy framework to break down month-over-month (MoM) changes in total sales into breadth (order and customer volume) and depth (value per purchasing customer).
Rather than treating sales as a single outcome, the dashboard clarifies which underlying metrics actually drove MoM changes, and how those drivers differ across product categories.

![Metric Hierarchy Dashboard Overview](metric_hierarchy_dashboard_overview.png)

# Business Question
* When total sales change month-over-month, are those changes driven more by an increase in orders and customers, or by higher spending per customer and per order?
* How do these mechanisms vary across product categories?

# Dashboard
* **Tableau Public:** [View Metric Hierarchy Dashboard](https://public.tableau.com/app/profile/jungwon.hur/viz/Part10-2_MetricHierarhcy/MetricHierarchyDashboard)
* **Core structure:** Sales decomposed into Breadth (Orders, Customers, Quantity) and Depth (ARPPU, AOV, Repurchase behavior)
* **Key filters:**
    * Date range (MoM comparison)
    * Product category (All, Furniture, Office Supplies, Technology)
    * Sub-category
* *Notes: This dashboard uses a dataset distinct from the KPI dashboard to support metric hierarchy analysis.*

# Key Insights
* Overall MoM sales growth was driven by an increase in ARPPU while customer and order counts remained relatively stable, suggesting that short-term performance relied more on extracting higher value from existing purchasers than on demand expansion.
* Furniture’s MoM sales increase came from a rise in orders and customers, while per-customer value metrics remained flat or declined, indicating volume-led growth rather than higher-priced purchases.
* Office Supplies achieved MoM growth through simultaneous increases in ARPPU, AOV, and customer counts, suggesting structurally healthy demand where higher spending and repeat purchasing reinforced each other.
* Technology sales were supported by relatively high ARPPU and AOV despite declining orders and customers, implying that revenue was concentrated in fewer, high-value purchases and remained sensitive to purchase timing and cycles.

# Business Implications
* Volume-led growth (e.g., Furniture) may require margin monitoring due to promotion dependence.
* Categories showing balanced breadth and depth growth (e.g., Office Supplies) are more likely to support sustainable performance.
* Depth-driven categories like Technology benefit from timing-aware and targeted strategies rather than broad volume expansion.
