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
*Sales*

TechZen sales has **been declining from previous years with 2022 sales and order count decreasing by 46% and 40%** respectively from 2021. This decline can primarily be attributed to a return to normalcy following the easing of the COVID-19 pandemic.  **27in 4K Gaming Monitor** consistently has been the company's best-selling product (based on revenue), accounting for **over 30% of total product sales each year**, while **Bose Soundsport Headphones** has been the lowest, accounting for **less than 1% of total product sales each year**. We are seeing customers in the loyalty program generating more sales for TechZen ($500K more in 2021) and **spending more per order on average** ($35 more in 2022) compared to those not in the loyalty program, suggesting that the loyalty program is trending positively and proving popular amongst our customers.

*Loyalty Program*

The loyalty program, launched in 2019, has gained significant popularity among customers, consistently demonstrating year-over-year growth. In 2021, **members contributed to a substantial 64% of total revenue**.

However, a recent analysis in 2022 revealed an interesting trend: **non-members, on average, spend $40 more per transaction ($275 vs. $240) than loyalty program members**. This suggests that while the program has been successful in driving customer loyalty, it may not be maximizing revenue potential.

# Leveraging Data to Enhance TechZen Efficiency 

#### Based on the analysis of these insights, the team recommends the following strategic initiatives:

* **Products:**
    * TechZen should reevaluate the **Bose Soundsport Headphones** product line due to its minimal contribution to overall sales and lack of growth. Possibly **discount Bose SoundSport Headphones** from product offering. If more aggressive product line cuts are necessary, the Apple iPhone and Samsung Charging Cable Packs should be considered next, as they also have low sales contributions and have negatively impacted customer satisfaction.
    
* **Loyalty Program:**
    * Make enrollment easy and accessible by offering compelling incentives like exclusive discounts, while clearly communicating the benefits of membership and how to easily earn and redeem rewards.

* **Operational Effectiveness:**
    * As TechZen expands globally, we should conduct a deeper analysis of our **sales performance in LATAM** to understand the underlying factors contributing to lower sales and explore strategies for improvement.

* **Marketing Channels:**
    * Given the continued **success of direct and email marketing**, TechZen should maintain its investment in these channels. However, we recommend re-evaluating our social media marketing efforts, as their contribution to sales has historically been minimal and is declining.
    
* **Platform Improvements:**
    * Our website continues to see strong demand for new accounts. We recommend **enhancements to continue to be made to our website and mobile apps** as both platforms continue to see strong growth.
 
# Technical Analysis
![Yearly_summary](https://github.com/user-attachments/assets/6aa14f4c-a948-4a6a-8fc5-8cfe50b37eec)
![Yearly sales _region](https://github.com/user-attachments/assets/50b12857-03a5-43dd-8ba3-3603c87dd1d5)
![Product_Sales_Graph](https://github.com/user-attachments/assets/03d84c4b-1130-4400-a4c1-a9711ae20c6f)
![Loyalty_Program](https://github.com/user-attachments/assets/f8ab206b-aec3-4741-8b94-164d16652472)
![Marketing](https://github.com/user-attachments/assets/1ecc9d43-cfdd-4908-a709-1be48f209d60)








