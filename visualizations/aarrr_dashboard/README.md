# Overview
This dashboard is designed to analyze the AARRR funnel (Acquisition, Activation, Retention, Revenue, Referral) to understand how users move through key lifecycle stages and where conversion performance meaningfully changes.
Rather than focusing on a single KPI, the dashboard provides a stage-by-stage view of user behavior, highlighting which parts of the funnel drive improvements and where friction remains.

![AARRR Dashboard Highlight](aarrr_dashboard_highlight.png)

# Business Question
* Which stages of the AARRR funnel show meaningful improvement, and are gains driven by broad funnel optimization or by specific downstream steps?
* How should conversion improvements be interpreted in the context of overall funnel health?

# Dashboard
* Tableau Public: [View AARRR Dashboard](https://public.tableau.com/app/profile/jungwon.hur/viz/Part10-3_AARRR/AARRR)
* **Core components:**
    * **Acquisition:** installs and signups by channel (last 30 days)
    * **Activation:** event-based activation funnel (last 30 days)
      * **Custom Conversion Rate:** flexible comparison between any two funnel events
    * **Retention:** weekly cohort retention
    * **Revenue:** monthly revenue trends
    * **Referral:** friend-invite activity (last 30 days)

# Key Insights

* **Acquisition:** Installs and signups were driven primarily by organic channels, suggesting that recent user growth relied more on baseline demand or brand-driven traffic than on incremental gains from paid acquisition.
* **Activation:** Conversion rates across early activation steps, such as content views, searches, and add-to-cart events, remained flat or declined compared to the last 30 days, indicating persistent friction before users fully engage with the product’s core value. However, the conversion rate from purchase to complete registration increased sharply, implying that recent improvements were localized to a specific downstream step rather than reflecting end-to-end funnel optimization.
* **Retention:** While overall retention did not show a sustained trend, clear spikes in first-event activity were observed around weeks 4–5 and again in weeks 8–9, suggesting that specific re-engagement moments or interventions temporarily reactivated users.

# Business Implications
* Gains at the purchase-to-registration stage may reflect UX or process improvements specific to account completion, but do not necessarily indicate healthier top-of-funnel engagement.
* Accordingly, future optimization efforts should prioritize reducing early-stage friction to ensure downstream improvements translate into sustainable growth.
* The observed retention spikes suggest an opportunity for lifecycle-triggered CRM campaigns around weeks 4 and 9, where timely re-engagement messaging could convert temporary reactivation into more sustained user retention.
