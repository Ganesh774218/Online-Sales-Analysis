### **📄Data Analysis Online Sales Analysis — Detailed Project Report**

#### 

#### **📊 New Online Sales – Data Cleaning \& Preprocessing Report** 

**(Python | Pandas | Data Quality Analysis)**



#### **📝 Project Overview**



This project focuses on cleaning, preprocessing, and preparing an online retail sales dataset for further analysis and dashboarding.

The dataset initially contained missing values, inconsistent data types, and unnecessary columns.

The goal was to convert the raw file into a clean, analysis-ready dataset using Python, Pandas, and basic EDA techniques.

This report documents each step, the issues found, and how they were resolved.





##### 

##### **🚨 Data Issues Identified**

**✔ 1. Missing Values Detected**

| Column            | Missing Count |

| ----------------- | ------------- |

| CustomerID        | 4,978         |

| ShippingCost      | 2,489         |

| WarehouseLocation | 3,485         |

| Others            | 0             |





**✔ 2. Datetime Format Errors**

* InvoiceDate was not in a consistent or analyzable format.
* Correct parsing was required.





**✔ 3. Unnecessary Column**

* **DateTime column was redundant and removed.**





**✔ 4. Mixed Types \& Inconsistent Formatting**

* InvoiceDate needed conversion to proper datetime.
* DateTime needed removal.
* Numeric fields (UnitPrice, Quantity) were valid.
* Country, StockCode, Category had no missing values.





#### **📌 Conclusion**

* This project successfully transformed a raw online sales dataset into a fully cleaned, structured, analysis-ready dataset.
* Missing values were removed, date fields were standardized, and redundant columns were dropped. The final dataset is now suitable for deep analysis in Power BI, MySQL, Excel, or Python.











#### **🔍 MySQL Overview -** 

This project analyzes an Online Sales Dataset using MySQL, transformation, exploration, KPI generation, and advanced analytics.

The dataset includes product details, order information, shipping, discounts, returns, customer purchases, revenue trends, and warehouse activity.

The analysis extracts business insights, identifies top-performing items, uncovers problem areas, and helps stakeholders optimize sales, warehouse operations, pricing, shipping cost, and returns management.







#### **📊 Key Business Insights (Summary)**



**1️⃣ Distinct Operating Countries**

➡The business operates in multiple countries, allowing geographic performance comparison.



**2️⃣ Total Shipping Revenue**

➡ Shows total earnings from shipping charges.



**3️⃣ Best-Selling Categories (by Quantity Sold)**

Categories with highest purchases:

-Electronics

-Furniture

-Clothing

-Accessories









#### **📌 KPIs (Key Performance Indicators)**

✔ Total Revenue

✔ Total Quantity Sold

✔ Average Order Value

✔ Total Returns

✔ Return Rate %

✔ Monthly Revenue Trend

✔ Best-Selling Product

✔ Top Revenue Country

✔ Top Warehouse by Dispatch Volume

✔ Online vs Offline Revenue Split

✔ Average Shipping Cost per Provider

✔ Discount Impact %







#### **📈  Recommendations**



**🔵 Optimize Discounts**

* Some products show very high discount usage; adjust pricing strategy.



**🔵 Improve Logistics \& Shipping Costs**

* Analyze providers with higher costs → negotiate or switch.



**🔵 Reduce Return Rates**

* Focus on products with frequent returns.



**🔵 Improve Warehouse Performance**

* Shift inventory to more efficient warehouses.



**🔵 Strengthen High Revenue Markets**

* Countries with high revenue should receive targeted campaigns.



**🔵 Promote Best-Selling Items**

* Identify and push high-demand products.







#### **🧩 Conclusion**

* This MySQL-based Online Sales Analysis provides deep insights into product performance, revenue trends, customer behavior, warehouse efficiency, and returns management.
* It helps businesses optimize decision-making across sales, operations, marketing, logistics, and customer service.















### **📊 Online Sales Analysis Power BI Overview– Detailed Insight Report**



This analysis summarizes key insights obtained from the Online Sales Power BI dashboard, highlighting customer behavior, product performance, pricing patterns, shipping costs, and regional trends.

The dashboard consists of two pages, and the report below consolidates findings from both.







#### **🔹 Page 1 — Overview \& Category-Level Insights**

**1. Key Performance Indicators (KPIs)**

| KPI                     | Value             | Meaning                                     |

| ----------------------- | ----------------- | ------------------------------------------- |

| \*\*Total Shipping Cost\*\* | \*\*₹783.36K\*\*      | Total cost incurred for shipping all orders |

| \*\*Total Customers\*\*     | \*\*35K customers\*\* | Total unique customer count                 |

| \*\*Total Profit\*\*        | \*\*₹55.34M\*\*       | Total profit earned across all products     |

| \*\*Max Discount\*\*        | \*\*50%\*\*           | Highest discount offered across items       |

| \*\*Max Unit Price\*\*      | \*\*₹100\*\*          | Highest-priced single unit                  |

| \*\*Avg Unit Price\*\*      | \*\*₹50.62\*\*        | Average selling price per item              |

| \*\*Max Shipping Cost\*\*   | \*\*₹30\*\*           | Highest shipping cost paid by a customer    |

| \*\*Avg Shipping Cost\*\*   | \*\*₹17.48\*\*        | Average shipping cost across orders         |

| \*\*Avg Discount\*\*        | \*\*0.25\*\*          | Average discount percentage offered         |







**2. Product Performance Insights**

The table (Description-wise statistics) reveals:

* Top Selling Items (by Quantity Sold)
* T-shirt (100,488 units)
* Blue Pen (100,163 units)
* Desk Lamp (101,943 units)
* Headphones (99,419 units)
* Notebook (99,543 units)

**These are high-turnover items contributing to volume-based revenue.**



**Highest Profit Generating Products**

* Backpack – ₹50.65M
* Desk Lamp – ₹50.63M
* Blue Pen – ₹50.01M
* Headphones – ₹49.52M

**Backpack leads profit margin despite medium cost—indicating strong demand and margin efficiency.**





**3. Customer Distribution by Shipment Provider**

Pie-chart insights:

* Shipments are evenly distributed among:
* FedEx, Royal Mail, DHL, UPS → Nearly 25% each

This implies a decentralised shipping strategy \& reduced over-reliance on a single provider.







**4. Customer Distribution by Category**

All main categories have nearly equal distribution (~8.5K customers each):

| Category    | Customer Count |

| ----------- | -------------- |

| Furniture   | 8.6K           |

| Stationery  | 8.5K           |

| Electronics | 8.5K           |

| Accessories | 8.5K           |

| Apparel     | 8.5K           |



➡️ Balanced consumer demand across all categories, implying a well-diversified portfolio.





**5. Shipping Cost by Category**

* Furniture has the highest shipping cost (~159K)
* Other categories are almost identical (~156K)

➡️ Furniture drives higher logistics costs due to size/weight.





**6. Customers by Payment Method**

* Bank Transfer: 13.9K
* Credit Card: 13.8K
* PayPal: 13.6K



➡️ Customers use all payment methods almost equally.

➡️ Payment diversity is strong—lower dependency on a single gateway.





**7. Filters Used in Dashboard**

* SalesChannel: In-store / Online
* PaymentMethod: Bank Transfer / Credit Card / PayPal
* Order Priority: High / Medium / Low



These filters help slice data for specific business scenarios.







#### **🔹 Page 2 — Category and Country-Level Analysis**

**1. Shipping Cost vs Discount (Line Chart)**

Insights:

* Furniture has the highest shipping cost but not the highest discount.
* Stationery has the highest discount but lower shipping cost.
* Electronics, Accessories, Apparel show very similar shipping patterns.



**Key takeaway:**

➡️ Products needing bigger packaging → higher shipping cost but not necessarily higher discounts.





**2. Total Customers by Country (Treemap)**

Top contributing countries:

| Country        | Customers |

| -------------- | --------- |

| France         | 3.74K     |

| Germany        | 3.69K     |

| Sweden         | 3.68K     |

| Netherlands    | 3.68K     |

| Norway         | 3.67K     |

| Portugal       | 3.67K     |

| Belgium        | 3.65K     |

| United Kingdom | 3.64K     |

| Australia      | 3.63K     |

| United States  | 3.62K     |

| Spain          | 3.62K     |

| Italy          | 3.58K     |



**Observations:**

✔ Very evenly distributed customer base across countries

No single country dominates—makes business stable and less risky.



✔ European region is the strongest customer zone

France, Germany, Sweden, Netherlands, Norway, and Portugal are top in customer contribution.







##### **🔹 Overall Business Insights**

**📌 High-Level Observations**

**1️⃣ Very Balanced Customer Base**

Demand across:

* Categories
* Countries
* Payment methods



Shipment providers is extremely uniform → This indicates strong market consistency.





**2️⃣ High Profits Despite Shipping Costs**

* Profit margin is significantly higher than shipping expenditure.
* Shipping is not harming profitability.



**3️⃣ Top products drive most revenue**

* Although product variety is wide, a few items (Backpack, Desk Lamp, Blue Pen) make up major profit share.



**4️⃣ Furniture remains logistically expensive**

* But still attracts many customers—signifying high-value products.



**5️⃣ Consistent International Market Presence**

* No single region dominates the market → growth is diversified.





#### 

#### **Conclusion**

* This end-to-end data analysis project demonstrates the complete lifecycle of transforming raw data into meaningful business insights using Python, MySQL, and Power BI.
* Each stage contributed a critical layer of value—cleaning, analysis, and visualization—to build a reliable and actionable analytical solution.

This project successfully demonstrates full-stack data analysis capability:



✔ Python ensured the dataset was clean, consistent, and analysis-ready.

✔ MySQL provided deep statistical and analytical insights through structured queries.

✔ Power BI turned those insights into visually engaging dashboards for business decisions.



The entire workflow resembles real-world analytics pipelines used by data analysts and BI professionals.

It also showcases your capability to:

* Clean \& preprocess data
* Build analytical queries
* Interpret patterns
* Create business-ready dashboards
* Present insights professionally







