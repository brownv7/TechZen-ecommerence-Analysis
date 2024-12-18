# Optimizing TechZen: A Data-Driven Approach. Project Objectives:

TechZen, a global e-commerce leader founded in 2018, that specializes in curating the latest consumer electronics and accessories. With a vast trove of sales, marketing, operational, product, and loyalty data, TechZen is now unlocking valuable insights to fuel its growth.
This comprehensive analysis will provide actionable recommendations on:

*	Sales Trends: Analyzing revenue, orders, and average order value to identify sales patterns and opportunities.
*	Product Performance: Evaluating product lines to pinpoint top-sellers, underperformers, and market trends.
*	Loyalty Program Effectiveness: Assessing the loyalty program's impact on customer retention and satisfaction.
*	Operational Efficiency: Optimizing operations with a comparative analysis across regions for cost-effectiveness.
*	Marketing Channel ROI: Determining the most effective marketing channels to maximize return on investment.


# Dataset and Structure

The database structure as seen below consists of four tables: orders, customers, geo_lookup, and order_status, with a total row count of 78,846 records.


#### ERD
![image](https://github.com/user-attachments/assets/3dde7d69-4761-4991-bf25-e4bb826579d5)

A preliminary data assessment was conducted to ensure its suitability for analysis. While the data was generally clean, several minor quality issues were identified and documented [here](https://github.com/brownv7/TechZen-ecommerence-Analysis/blob/main/Data%20Cleaning%20Doc.pdf). These issues included inconsistencies in product naming, missing country data, missing columns necessary for analysis, and null values.

# Insights Summary

TechZen sales has **been declining from previous years with 2022 sales and order count decreasing by 46% and 40%** respectively from 2021. This decline can primarily be attributed to a return to normalcy following the easing of the COVID-19 pandemic. 

*Sales*

   * 27in 4K Gaming Monitor: This product has consistently been the company's top seller based on revenue, accounting for **over 30%** of total product sales annually.
   * Bose Soundsport Headphones: This product has been the lowest-selling product, accounting for **less than 1% **of total product sales annually.
   * The Apple AirPods Headphones: the top-selling product with 48,000 units and **$7.7 million in revenue**, unexpectedly had the highest number of refunds at 2,636, indicating a potential issue with product quality or customer satisfaction.

![Yearly_summary](https://github.com/user-attachments/assets/02fd7e83-8bcc-48ef-8125-52fa11c3385c)

![Product_Perform](https://github.com/user-attachments/assets/b8fda0eb-6849-4e4f-bdac-705d549fea47)

*Loyalty Program*

   * Launched in 2019, the loyalty program has shown consistent year-over-year growth. In 2021, members generated $500K more in sales and spent an average of $35 more per order than non-members, indicating positive program performance and customer satisfaction.
   * In 2021, members contributed to a significant **64% of total revenue**.
   * Members are generating more sales ($500K more in 2021) and spending more per order on average ($35 more in 2022) compared to non-members.

![Loyalty_Program](https://github.com/user-attachments/assets/eae1ebad-d5a0-410b-ae58-bef916f9497f)

![Loyalty_Program2](https://github.com/user-attachments/assets/dc033f73-90b4-4372-b80f-a2a06575bdd5)

*Marketing Channel Effectiveness*

   * The ‘direct’ channel consistently generates the most revenue year-on-year, accounting for **83%** of total revenue and **78%** of total orders.
   * The 'social media’ channel accounts for **1%** of total revenue and orders.

![Marketing](https://github.com/user-attachments/assets/dbd644a7-af05-437a-bd42-67a1d3e5d911)

# Leveraging Data to Enhance TechZen Efficiency 

#### Based on the analysis of these insights, the team recommends the following strategic initiatives:

* **Products:**
    * TechZen should reevaluate the **Bose Soundsport Headphones** product line due to its minimal contribution to overall sales and lack of growth. Possibly **discount Bose SoundSport Headphones** from product offering. If more aggressive product line cuts are necessary, the Apple iPhone and Samsung Charging Cable Packs should be considered next, as they also have low sales contributions and have negatively impacted customer satisfaction.
    
* **Loyalty Program:**
    * Make enrollment easy and accessible by offering compelling incentives like exclusive discounts, while clearly communicating the benefits of membership and how to easily earn and redeem rewards.

* **Operational Effectiveness:**
    * As TechZen expands globally, we should conduct a deeper analysis of our **sales performance in LATAM** to understand the underlying factors contributing to lower sales and explore strategies for improvement.

![Region Growth](https://github.com/user-attachments/assets/26ae8bcc-d308-4396-a2df-98b4a43ef768)

![Region growth_bar](https://github.com/user-attachments/assets/3edc1b3b-ebbb-4a56-aef7-5665731dd2ff)

* **Marketing Channels:**
    * Given the continued **success of direct and email marketing**, TechZen should maintain its investment in these channels. However, we recommend re-evaluating our social media marketing efforts, as their contribution to sales has historically been minimal and is declining.
    
* **Platform Improvements:**
    * Our website continues to see strong demand for new accounts. We recommend **enhancements to continue to be made to our website and mobile apps** as both platforms continue to see strong growth.
 






















