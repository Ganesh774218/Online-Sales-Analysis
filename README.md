# Online-Sales-Analysis
Introduction-
This project presents an end-to-end analysis of online sales data, transforming raw datasets into actionable business insights through a comprehensive workflow that integrates Power BI visualizations, Python-based data cleaning, and advanced SQL analytics. It showcases a complete data pipeline—from initial exploration to structured querying—demonstrating proficiency in identifying trends, optimizing strategies, and enabling data-driven decision-making in the e-commerce domain.

Problem Statement- what are the trends with sales volume or specific purchases?

Tools and Files - 
- 📂 Excel (Raw Dataset)
- 📊 Power BI (Data Visualization & Transformation)
- 🐍 Python,Jupyter notebook and Library - Pandas (Data Cleaning & Manipulation)
- 🛢️ MySQL Workbench (Structured Querying)

Workflow Description - 
1) Excel Dataset (Raw Format)
- Started with a raw dataset in Excel format containing null values, inconsistent formats, and unstructured entries.

2) Power BI Visualization & Transformation
- Imported the Excel file into Power BI.
- Used Power Query to perform initial transformations, Date formatting and column cleanup.
- Removal of blank rows and duplicates
- Created charts and dashboards to analyze:
- Country-wise sales trends
- Product-wise quantities sold
- Temporal sales distribution

3) Python (Pandas) Data Manipulation -
- Re-imported the raw Excel data into Python.
- Performed in-depth data manipulation including:
- Handling of missing values
- Correcting data types and inconsistent entries
- Exported the cleaned dataset as a CSV for SQL analysis

4) SQL Analysis in MySQL Workbench -
- Loaded the cleaned CSV file into MySQL database.
- Executed SQL queries to:
  a) Calculate total sales and quantity per country
  b) Rank products by performance using RANK() and PARTITION BY
  c) Identify high-performing invoices and customer segments
