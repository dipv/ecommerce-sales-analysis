# 🛒 E-Commerce Sales Analysis
### SQL · Excel · Power BI · Python

> End-to-end analysis of 100,000+ Brazilian e-commerce transactions to uncover revenue trends, customer behavior, and product performance insights.

---

## 📌 Project Overview

This project analyzes the **Brazilian E-Commerce Public Dataset by Olist**, covering orders placed between 2016 and 2018. The goal was to build a complete data analysis pipeline — from raw database queries to interactive dashboards — simulating a real-world data analyst workflow.

---

## 📦 Dataset

| Detail | Info |
|--------|------|
| **Name** | Brazilian E-Commerce Public Dataset by Olist |
| **Source** | [Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) |
| **Period** | September 2016 – October 2018 |
| **Size** | 100,000+ orders |
| **Tables** | customers, orders, payments, products, order_items, sellers |

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| **PostgreSQL** | Data storage, SQL querying, joins, aggregations |
| **Python (pandas)** | Data cleaning, transformation, automation |
| **Excel** | Exploratory analysis, pivot tables, KPI dashboard |
| **Power BI** | Interactive visual dashboard |
| **GitHub** | Version control and portfolio hosting |

---

## 📁 Project Structure

```
ecommerce-sales-analysis/
│
├── data/
│   └── dataset_link.md           # Kaggle dataset source link
│
├── sql/
│   ├── 01_create_tables.sql      # Table schema creation
│   ├── 02_import_data.sql        # CSV data import commands
│   ├── 03_basic_queries.sql      # Level 1 — basic exploration
│   ├── 04_join_analysis.sql      # Level 2 — multi-table joins
│   └── 05_analytical_queries.sql # Level 3 — advanced analytics
│
├── excel/
│   └── ecommerce_analysis.xlsx   # Dashboard with KPI cards and charts
│
├── powerbi/
│   └── ecommerce_dashboard.pbix  # Interactive Power BI report
│
├── images/
│   ├── Cards.png
│   ├── Category_sales.png
│   ├── Dashboard.png
│   ├── Monthly_Revenue.png
│   ├── PowerBI Dashboard.png
│   └── State_Revenue.png
│
└── README.md
```

---

## 🔄 Project Workflow

```
Kaggle Dataset (CSV files)
         ↓
PostgreSQL — Data Storage & SQL Analysis
         ↓
CSV Export from PostgreSQL
         ↓
Excel — Exploratory Analysis & Dashboard
         ↓
Power BI — Interactive Dashboard
         ↓
GitHub — Portfolio Publishing
```

---

## 🗄️ SQL Analysis

### Level 1 — Basic Exploration (`03_basic_queries.sql`)
- Total customers and total orders
- Distinct order statuses
- Total and average payment value
- Payment type distribution
- Top 5 cities by customer count
- Product count by category

### Level 2 — Join Analysis (`04_join_analysis.sql`)
- Orders per customer (customers → orders)
- Revenue per customer (customers → orders → payments)
- Revenue per product category (order_items → products)
- Orders per state (customers → orders)
- Delivery time analysis (order purchase vs delivery date)

### Level 3 — Analytical Queries (`05_analytical_queries.sql`)
- Monthly revenue trend using `DATE_TRUNC`
- Month with highest sales
- Top 10 product categories by revenue
- Customers with more than 5 orders using `HAVING`
- Average delivery days per month
- Payment method revenue breakdown

---

## 📊 Screenshots

### KPI Cards
![KPI Cards](images/Cards.png)

### Monthly Revenue
![Monthly Revenue](images/Monthly_Revenue.png)

### Category Sales
![Category Sales](images/Category_sales.png)

### Revenue by State
![Revenue by State](images/State_Revenue.png)

### Excel Dashboard
![Excel Dashboard](images/Dashboard.png)

### Power BI Dashboard
![Power BI Dashboard](images/PowerBI%20Dashboard.png)

> 📥 Power BI file available: [Download .pbix](https://drive.google.com/file/d/1QOWX9pt1_PezmDf8QdXsgeomWHXN_SWC/view?usp=sharinghttps://drive.google.com/file/d/1QOWX9pt1_PezmDf8QdXsgeomWHXN_SWC/view?usp=sharinghttps://drive.google.com/file/d/1QOWX9pt1_PezmDf8QdXsgeomWHXN_SWC/view?usp=sharing)

---

## 💡 Key Business Insights

### 1️⃣ Revenue Growth Trend
Revenue grew consistently from late 2016 through mid-2018, with a significant peak in **November 2017** likely driven by Black Friday promotional activity. This suggests customer purchasing behavior is heavily influenced by seasonal campaigns.

### 2️⃣ Product Category Concentration
A small number of product categories — led by **Health & Beauty**, **Watches & Gifts**, and **Bed & Bath** — generate a disproportionate share of total revenue. Prioritizing inventory and marketing for these categories could maximize returns.

### 3️⃣ Geographic Sales Concentration
Sales are heavily concentrated in **São Paulo (SP)**, **Rio de Janeiro (RJ)**, and **Minas Gerais (MG)**, which together account for the majority of total revenue. Expanding marketing efforts to lower-performing states represents a significant growth opportunity.

### 4️⃣ One-Time Customer Behavior
The majority of customers place only a single order, while a small segment of repeat buyers contributes disproportionately to overall revenue. Implementing a **customer loyalty program** could increase repeat purchase rates and improve lifetime value.

### 5️⃣ Payment Method Dominance
**Credit card** payments dominate across all transaction types, indicating strong customer preference for card-based payments. Offering installment plans or alternative payment methods could further reduce purchase friction and increase conversion.

### 6️⃣ High-Value Customer Segment
A small group of high-spending customers generates a large share of total revenue — a classic **Pareto distribution**. Identifying and targeting these customers with personalized promotions could significantly increase customer lifetime value (CLV).

---

## 📈 Key Metrics

| Metric | Value |
|--------|-------|
| Total Revenue | R$ 16,008,872 |
| Total Orders | 99,441 |
| Total Customers | 99,441 |
| Peak Month Revenue | R$ 1,194,882 (Nov 2017) |
| Top State | São Paulo (SP) |
| Top Category | Health & Beauty |
| Most Used Payment | Credit Card |

---

## ✅ Skills Demonstrated

- **SQL** — Joins, aggregations, subqueries, window functions, `HAVING`, `DATE_TRUNC`
- **Relational Database Design** — Multi-table schema, primary/foreign keys
- **Data Cleaning** — NULL handling, type casting, date formatting
- **Excel** — Pivot tables, KPI cards, charts, cross-sheet formulas
- **Power BI** — Interactive visuals, slicers, DAX measures
- **Python** — pandas for data transformation and Excel automation
- **Business Thinking** — Translating query results into actionable insights
- **Communication** — Documenting findings clearly for non-technical audiences

---

## 🚀 How to Reproduce

### 1. Set up PostgreSQL database
```sql
CREATE DATABASE ecommerce_analysis;
```

### 2. Create tables
```bash
psql -U postgres -d ecommerce_analysis -f sql/01_create_tables.sql
```

### 3. Import CSV data
```bash
psql -U postgres -d ecommerce_analysis -f sql/02_import_data.sql
```

### 4. Run SQL analysis
```bash
psql -U postgres -d ecommerce_analysis -f sql/03_basic_queries.sql
psql -U postgres -d ecommerce_analysis -f sql/04_join_analysis.sql
psql -U postgres -d ecommerce_analysis -f sql/05_analytical_queries.sql
```

### 5. Open Excel dashboard
Open `excel/ecommerce_analysis.xlsx` in Microsoft Excel 2016 or later.

### 6. Open Power BI dashboard
Open `powerbi/ecommerce_dashboard.pbix` in Power BI Desktop (free).

---

*Dataset credit: Olist — Brazilian E-Commerce Public Dataset, available on Kaggle under CC BY-NC-SA 4.0 license.*
