# 📊 Sales Performance & Customer Insights Dashboard

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

Key analysis performed:

- Sales by region, category, and sub-category
- Customer Lifetime Value (CLV)
- Discount vs Profit impact
- Top-performing products
- Regional performance comparison

Example query:

```sql
SELECT
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY region
ORDER BY total_sales DESC;
📈 Excel Dashboard

Built using:

Pivot Tables

KPI Cards (Sales, Profit, Orders, Discount)

Slicers (Region, Category, Segment)

📌 Focus:

Quick business overview

Interactive filtering

Clean layout

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

🎯 What I Learned

Data cleaning is a critical step in any analysis

SQL is powerful for extracting business insights

Dashboard design should prioritize clarity over complexity

Small data issues can significantly impact results

📸 Dashboard Preview

(Add your Power BI screenshot here)

📂 Project Structure
sales-performance-analysis/
│
├── data/
│   ├── raw/
│   └── cleaned/
│
├── sql/
│   └── analysis_queries.sql
│
├── excel/
│   └── dashboard.xlsx
│
├── powerbi/
│   └── dashboard.pbix
│
└── README.md
💼 About Me

I’m an aspiring Data Analyst with a background in Applied Statistics & IT, passionate about turning data into insights that drive decisions.

🔗 Let’s connect on LinkedIn
🔗 Open to entry-level Data Analyst roles & internships

⭐ If You Like This Project

Feel free to:

⭐ Star the repository

🍴 Fork it

💬 Share feedback


---
