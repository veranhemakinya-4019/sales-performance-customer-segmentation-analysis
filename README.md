# 📊 Sales Performance & Customer Insights Dashboard

![Status](https://img.shields.io/badge/status-completed-brightgreen)
![Tools](https://img.shields.io/badge/tools-SQL%20%7C%20Excel%20%7C%20PowerBI-blue)
![Level](https://img.shields.io/badge/level-entry--level-orange)

An end-to-end data analytics project focused on transforming raw sales data into actionable business insights using **SQL, Excel, and Power BI**.

---

## 🚀 Project Overview

This project analyzes retail sales data to uncover trends in **revenue, profitability, customer behavior, and product performance**.

The goal was to simulate a real-world business scenario:

> Turning raw, messy data into decision-ready insights through data cleaning, analysis, and visualization.

---

## 🧠 Key Business Questions

- Which region generates the most sales?  
- Which product categories are most profitable?  
- How do discounts impact profit?  
- Who are the most valuable customers?  
- What are the sales trends over time?  

---

## 📊 Key Insights

- 📍 **West region** generates the highest revenue  
- 💻 **Technology category** is the most profitable  
- ⚠️ Higher discounts are associated with lower profit margins  
- 📈 Sales show clear monthly trends with peak periods  
- 🛍️ A small group of products drives a large share of revenue  

---

## 💼 Business Impact

This analysis helps stakeholders:

- Identify high-performing regions and allocate resources effectively  
- Optimize pricing strategies by understanding discount impact  
- Focus on profitable product categories  
- Support data-driven decision-making  

---

## 🛠 Tools & Technologies

- **Python (Pandas)** → Data cleaning  
- **PostgreSQL** → Data analysis & querying  
- **Excel** → Pivot tables, KPIs, dashboard  
- **Power BI** → Interactive dashboard & storytelling  

---

## 🧹 Data Cleaning Process

- Handled missing values  
- Fixed CSV formatting issues (unterminated quoted fields)  
- Standardized column names  
- Converted data types (dates, numeric fields)  
- Exported clean dataset for analysis  

---

## 🗄 SQL Analysis

### 🔍 Key Analysis Performed

- Sales by region, category, and sub-category  
- Customer Lifetime Value (CLV)  
- Discount vs Profit impact  
- Top-performing products  
- Regional performance comparison  

### 🔍 Sample SQL Query (Sales by Region)

```sql
SELECT
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY region
ORDER BY total_sales DESC;

👉 Full queries available in: sql/sales_analysis.sql

📈 Excel Dashboard

Built using:

Pivot Tables
KPI Cards (Sales, Profit, Orders, Discount)
Slicers (Region, Category, Segment)

📌 Focus:

Quick business overview
Interactive filtering
Clean and structured layout
📊 Power BI Dashboard
Features:
KPI Cards (Total Sales, Profit, Orders, Profit Margin)
Sales by Region (Bar Chart)
Sales by Category (Column Chart)
Monthly Sales Trend (Line Chart)
Top Products (Top N Analysis)
Interactive slicers (Region, Category, Segment)

📌 Design Focus:

Clean, recruiter-level layout
Consistent color theme
Clear storytelling with insights
📸 Dashboard Preview

📂 Project Structure
sales-performance-customer-segmentation-analysis/
│
├── data/
│   ├── raw/
│   └── cleaned/
│
├── notebooks/
│
├── sql/
│   └── sales_analysis.sql
│
├── excel/
│   └── dashboard.xlsx
│
├── powerbi/
│   ├── sales_dashboard.pbix
│   └── sales_dashboard.png
│
└── README.md
⚙️ How to Use This Project
Clone the repository
git clone https://github.com/veranhemakinya-4019/sales-performance-customer-segmentation-analysis.git
Open project files:
SQL → /sql
Excel → /excel
Power BI → /powerbi
Load dataset into PostgreSQL or Power BI
🎯 What I Learned
Data cleaning is a critical step in any analysis
SQL is powerful for extracting business insights
Dashboard design should prioritize clarity over complexity
Small data issues can significantly impact results
💼 About Me

I’m an aspiring Data Analyst with a background in Applied Statistics & IT, passionate about turning data into insights that drive decisions.

🔗 LinkedIn: https://linkedin.com/in/vera-data-analyst

📧 Email: veranhemakinya@gmail.com

🎯 Open to entry-level Data Analyst roles & internships

⭐ Support

If you found this project useful:

⭐ Star the repository
🍴 Fork it
💬 Share feedback

---