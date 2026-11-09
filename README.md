# 🏦 Banking Analytics | Customer Intelligence, Transactions & Credit Risk

### An End-to-End Data Analytics Project Using Excel, SQL Server, Power BI & AI-Assisted Analytics

An end-to-end banking analytics project designed to explore customer behavior, account performance, transaction reliability, loan portfolios, and credit risk.

This project demonstrates how raw banking data can be transformed into meaningful business insights through data analysis, SQL querying, dashboard development, and AI-assisted analytical workflows.

---

## 📌 1. Business Problem

Banks generate large volumes of data across customers, accounts, transactions, loans, and credit records.

However, analyzing these separate datasets can make it difficult to understand overall banking performance, identify customer patterns, monitor transaction reliability, and evaluate loan portfolio risk.

### Problems This Project Addresses

This project focuses on answering the following business questions:

- Which regions have the highest and lowest customer concentration?
- How are customers distributed across different age groups and customer segments?
- Which account types hold the highest balances?
- How reliable are banking transactions?
- Which transaction channels generate the highest transaction volumes?
- How is the loan portfolio distributed across different loan categories?
- Which loan categories have higher default rates?
- How are customers distributed across different credit-risk categories?
- What trends can be identified in monthly transaction activity?

### Project Objective

To build an integrated banking analytics solution that converts structured banking datasets into actionable descriptive insights and presents them through interactive Power BI dashboards.

---

## 📊 2. Project Overview

| Project Detail | Description |
|---|---|
| Project Name | Banking Analytics |
| Domain | Banking & Financial Services |
| Project Type | End-to-End Data Analytics |
| Analysis Period | 2024–2025 transaction coverage |
| Dataset Type | Synthetic Practice Dataset |
| Data Analysis | Microsoft Excel |
| Database Analysis | SQL Server |
| Visualization | Microsoft Power BI |
| AI Integration | AI-Assisted Analytics |
| Reporting | Interactive Dashboards |

### Dataset Overview

The project contains six connected banking entities.

| Dataset | Records | Description |
|---|---:|---|
| Customers | 1,200 | Customer demographics, region, occupation, income, segment, and status |
| Accounts | 1,464 | Account types, account status, balances, and overdraft limits |
| Transactions | 15,000 | Transaction dates, amounts, channels, categories, and statuses |
| Loans | 1,800 | Loan types, principal amounts, outstanding balances, interest, and default flags |
| Credit Scores | 1,200 | Credit scores, risk categories, credit history, and missed payments |
| Branches | 20 | Branch names, cities, regions, and branch types |

**Transaction coverage:** January 1, 2024, through December 31, 2025.

The dataset is synthetic and intended for analytical practice and portfolio demonstration.

---

## 🔍 3. Key Business Findings

The following findings were identified through the supplied dataset and Power BI dashboard.

### 3.1 Banking Performance Overview

| KPI | Result |
|---|---:|
| Total Customers | 1,200 |
| Total Accounts | 1,464 |
| Total Transactions | 15,000 |
| Total Loan Book | 1,378,883,047 |
| Loan Defaults | 105 |
| Loan Default Rate | 5.83% |

### 3.2 Customer Analytics

| Finding | Result |
|---|---|
| Highest Customer Concentration | Central Region |
| Customers in Central Region | 262 |
| Largest Credit Risk Category | Medium |
| Medium-Risk Customers | 684 (57%) |
| High-Risk Customers | 311 (25.92%) |
| Largest Age Group | 65+ |
| Customers in 65+ Age Group | 227 |

**Business Interpretation:**

The Central region has the highest customer concentration in the dataset. Medium-risk customers represent the largest credit-risk category, accounting for approximately 57% of credit-score records.

### 3.3 Transaction Analytics

| Metric | Result |
|---|---:|
| Total Transactions | 15,000 |
| Successful Transactions | Approximately 97.25% |
| Highest-Volume Transaction Channel | UPI |
| UPI Transactions | 2,223 |

**Business Interpretation:**

Approximately 97.25% of recorded transactions are successful. UPI has the highest transaction volume among the channels shown in the dashboard.

Monthly transaction amounts fluctuate across the 2024–2025 period.

### 3.4 Account Analytics

| Account Type | Approximate Total Balance |
|---|---:|
| Savings | 80M |
| Salary | 26M |
| Current | 21M |
| Fixed Deposit | 13M |

**Business Interpretation:**

Savings accounts hold the largest aggregate account balance among the account types displayed in the dashboard.

### 3.5 Loan Portfolio & Credit Risk

| Loan Type | Loan Default Rate |
|---|---:|
| Auto | 7.02% |
| Business | 6.29% |
| Home | 5.99% |
| Gold | 5.76% |
| Education | 5.16% |
| Personal | 5.09% |

**Key Findings:**

- Auto loans have the highest default rate among the displayed loan categories.
- Home loans have the largest outstanding loan amount, approximately 0.64bn.
- The dashboard records 105 loan defaults.
- The overall loan default rate is approximately 5.83%.

**Business Interpretation:**

Loan categories show different default rates and outstanding balances. These differences can help demonstrate how analysts compare portfolio exposure and descriptive risk indicators.

These results are patterns in synthetic data, not actual lending-risk predictions.

---

## 📈 4. Power BI Dashboard & Visual Analysis

The Power BI report provides a visual overview of banking performance across customers, accounts, transactions, loans, and credit risk.

The dashboard includes KPI cards, trend analysis, customer segmentation, regional comparisons, account balance analysis, and loan default comparisons.

### Dashboard 1: Banking Executive Overview

![Banking Executive Overview](screenshots/Screenshot%202026-11-09%20085006.png)

**Key information displayed:**
- Total customers, accounts, and transactions.
- Total loan book and loan defaults.
- Credit-risk distribution.
- Monthly transaction amount trends.
- Customer reach by region.
- Transaction reliability.

### Dashboard 2: Customer & Account Analysis

![Customer and Account Analysis](screenshots/Screenshot%202026-11-09%20085031.png)

**Key information displayed:**
- Customer distribution by region.
- Total account balance by account type.
- Regional customer concentration.
- Comparison of savings, salary, current, and fixed deposit accounts.

### Dashboard 3: Loan Portfolio & Credit Risk

![Loan Portfolio and Credit Risk](screenshots/Screenshot%202026-11-09%20085053.png)

**Key information displayed:**
- Loan distribution by loan status.
- Customer distribution by credit-risk category.
- Loan default rate by loan type.
- Risk-category filtering.

### Dashboard 4: Transaction Performance

![Transaction Performance](screenshots/Screenshot%202026-11-09%20085144.png)

**Key information displayed:**
- Monthly transaction amount trends.
- Transaction success rate by status.
- Transaction volume by channel.
- Outstanding loan amount by loan type.

### Dashboard 5: Customer Intelligence

![Customer Intelligence](screenshots/Screenshot%202026-11-09%20085217.png)

**Key information displayed:**
- Customer distribution by segment.
- Customer distribution by age group.
- Average account balance by account type.
- Interactive age-group filtering.

---

## 🛠️ 5. Tools & Technologies

| Technology | How It Was Used |
|---|---|
| Microsoft Excel | Data exploration, calculations, analysis worksheets, and dashboard preparation |
| SQL Server | Relational data analysis, joins, aggregations, and analytical queries |
| Power BI | Interactive dashboards, KPI cards, charts, and business reporting |
| AI Tools | Analytical brainstorming, SQL assistance, debugging, documentation, and insight development |

### Technical Skills Demonstrated

**Microsoft Excel**
- Data exploration and analysis
- Data organization and calculations
- KPI development
- Analytical worksheets
- Dashboard preparation

**SQL Server**
- SELECT statements
- Filtering and sorting
- Aggregate functions
- GROUP BY and HAVING
- INNER JOIN and LEFT JOIN
- Common Table Expressions (CTEs)
- Window functions
- LAG() function
- Customer and transaction analysis
- Loan and credit-risk analysis

**Power BI**
- Interactive dashboard development
- KPI cards
- Bar and column charts
- Line charts
- Donut charts
- Slicers and filters
- Customer segmentation
- Transaction trend analysis
- Loan portfolio visualization
- Credit-risk reporting

---

## 🤖 6. AI-Assisted Analytics

AI was integrated into the analytical workflow as a productivity and learning assistant.

### AI-Assisted Activities

- Brainstorming business problems and analytical questions.
- Drafting and refining SQL queries.
- Debugging SQL queries and DAX expressions.
- Understanding unfamiliar SQL functions and analytical concepts.
- Developing analytical approaches.
- Assisting with data dictionaries and project documentation.
- Refining business insights and explanations.
- Reviewing calculations and interpreting analytical results.

### Responsible AI Usage

AI-assisted outputs were treated as suggestions rather than automatically accepted results.

Data validation, query execution, calculation checks, and business interpretation remain essential parts of the analytical process.

The objective was to combine AI-assisted productivity with independent analytical understanding and verification.

---

## 💻 7. SQL Server Analysis

The `sql/` directory contains the SQL source file supplied with the project.

The analysis explores:

- Customer segmentation and average annual income.
- Account types and account balances.
- Transaction status, channel, and amount.
- Loan types and outstanding balances.
- Credit-risk categories.
- Regional customer distribution.
- Customer-account relationships.
- Customers with multiple accounts and loans.
- Loan default rates.
- Monthly transaction trends using CTEs and LAG().
- Customer ranking using window functions.

### SQL Import Note

The SQL source file contains exploratory query iterations and uses table names such as `dbo.transaction`, `dbo.CreditScore`, and `dbo.branch` in places.

When importing the workbook into SQL Server, worksheet names may instead become `Transactions`, `Credit_Scores`, and `Branches`.

Check and align table names with the actual imported schema before running the full script.

The source file is preserved as supplied and is not represented as fully execution-validated.

---

## 📁 8. Repository Structure

The project is organized into separate folders for data, SQL analysis, Power BI reporting, screenshots, and documentation.

```text
banking-analytics/
│
├── README.md
├── .gitignore
│
├── data/
│   └── Banking_Analytics_Dataset.xlsx
│
├── sql/
│   ├── banking_analytics_source.sql
│   └── README.md
│
├── powerbi/
│   ├── Banking_Analytics.pbix
│   └── README.md
│
├── screenshots/
│   ├── README.md
│   ├── Screenshot 2026-11-09 085006.png
│   ├── Screenshot 2026-11-09 085031.png
│   ├── Screenshot 2026-11-09 085053.png
│   ├── Screenshot 2026-11-09 085144.png
│   └── Screenshot 2026-11-09 085217.png
│
└── documentation/
    ├── README.md
    └── data_dictionary.md
```

---

## ⚠️ 9. Limitations & Responsible Use

- This project uses synthetic practice data, not actual banking or customer records.
- Transaction coverage is limited to 2024–2025.
- `Default_Flag` is defined in the workbook as 1 when `Loan_Status` is Defaulted.
- The data dictionary notes that `Days_Past_Due` is synthetic.
- The dataset is not suitable for real credit decisions, customer targeting, or regulatory reporting.
- Findings should be interpreted as patterns within this synthetic dataset only.
- AI-assisted analysis must be validated against the original data.

---

## 🎯 10. Project Outcome

This project demonstrates an end-to-end analytical workflow involving:

1. Understanding a business problem.
2. Exploring structured banking datasets.
3. Analyzing relationships across multiple entities.
4. Writing SQL queries to investigate business questions.
5. Performing analytical calculations in Excel.
6. Developing interactive Power BI dashboards.
7. Identifying and communicating business insights.
8. Using AI tools responsibly to support analytical productivity.

The project demonstrates practical skills in data analysis, SQL, business intelligence, dashboard development, and AI-assisted workflows.

---

## 👨‍💻 11. Author

**Vansh Chhikara**

Aspiring Data Analyst | BSc Agriculture Student

**Technical Skills:**

SQL Server | Microsoft Excel | Power BI | Data Analytics | AI-Assisted Analytics

This project is part of my Data Analytics portfolio, demonstrating practical analytical skills through end-to-end projects.

---


