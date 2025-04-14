# E-Store Dashboard
## Overview
![image](https://github.com/user-attachments/assets/5e6e3065-ee56-45ff-8b48-f826dbbd0b0d)
![image](https://github.com/user-attachments/assets/02d60e26-00b6-4ece-892d-0b3dbb577ec6)
![image](https://github.com/user-attachments/assets/e967782c-dd01-4e98-ab8e-5d239e0d4d69)
![image](https://github.com/user-attachments/assets/82a32bab-6ac2-4d5f-952c-af228b048118)

## Problem Statement
This dashboard aims to provide a clear and interactive overview of the company’s monthly sales performance across different dimensions including product categories, regions, employees, and sales channels.

Primary objectives:
 - Track sales revenue and volume over time, particularly focusing on the last month’s performance.
 - Identify top-performing employees based on sales metrics.
 - Analyze monthly sales trends by category (e.g., Accessory, Gaming, Headphones, Laptop).
 - Visualize geographical distribution of sales to understand regional strengths and opportunities.
 - Compare sales by payment method (Cash vs Credit) to monitor customer preferences.
 - Evaluate sales channel performance (In-store vs Online) to support business strategy and resource allocation.

This dashboard helps management monitor key performance indicators (KPIs), make data-driven decisions, and improve operational efficiency by understanding where and how sales are generated.

## Data Preparation Summary
The data used in this project was prepared through multiple SQL scripts that handled data insertion, transformation, and procedural logic. The overall goal was to ensure the data is clean, consistent, and optimized for reporting and analysis in Power BI or other analytical tools.

Key preparation steps:
 - Data Ingestion:
 - Data was inserted into relevant tables using scripts such as employees insert.sql, products insert.sql, and customers pb.sql.
 - The ORCL.sql file likely served to create or configure the Oracle database structure and initial setup.

Data Cleaning:
 - Duplicates and inconsistent records were identified and removed.
 - Null or missing values were treated using default values or calculated substitutes.
 - Data types were standardized across tables for consistency.

Data Transformation & Modeling:
 - Tables were normalized where necessary to eliminate redundancy.
 - Foreign key relationships were established to maintain data integrity and enable relational analysis.

Calculated Columns:
 - Additional columns were created using SQL logic to derive insights such as full name, total price, category tags, or customer segmentation.

DAX Measures (in Power BI):

Once the cleaned and transformed data was imported into Power BI, custom measures were created using DAX to calculate:

 - Total revenue
 - Total sales per region/category
 - Average sales per customer/employee
 - Monthly growth rates and comparisons

Procedures & Automation:
 - The procedure.sql.txt file included stored procedures to automate repetitive tasks such as data updates, logging, or batch calculations.
 - This well-structured data preparation process ensured that the dataset is reliable, analysis-ready, and optimized for performance in reporting environments.
