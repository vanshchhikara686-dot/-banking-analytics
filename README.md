# Banking Analytics | Customer, Accounts, Transactions & Credit Risk

An end-to-end banking analytics portfolio project exploring customer profiles, account balances, transaction activity, loan portfolios, credit scores and branch-level performance.

The project uses **Microsoft Excel, SQL Server and Power BI**, with **AI-assisted analytics workflows** to support exploration, query development, debugging, interpretation and documentation.

> **Data disclaimer:** The workbook describes a synthetic practice dataset. It contains no real customer records and must not be treated as actual bank performance, used for lending decisions, or interpreted as a real credit-risk model.

## 1. Project scope

The analysis is organised around six connected banking entities:

- Customers
- Accounts
- Transactions
- Loans
- Credit Scores
- Branches

The workbook also includes prepared analysis worksheets and a `BANKING_DASHBOARD` worksheet.

## 2. Dataset at a glance

| Table / worksheet | Records | Purpose |
|---|---:|---|
| Customers | 1,200 | Customer demographics, region, occupation, income, segment and status |
| Accounts | 1,464 | Account type, status, balance and overdraft limit |
| Transactions | 15,000 | Transaction date, type, amount, channel, category and status |
| Loans | 1,800 | Loan type, principal, outstanding amount, interest, status and default flag |
| Credit_Scores | 1,200 | Credit score, risk category, credit history and missed payments |
| Branches | 20 | Branch name, city, region and branch type |

Transactions cover **1 January 2024 through 31 December 2025**. Other dates in the workbook are synthetic practice dates.

### Entity relationships

- `Customers.Customer_ID` → `Accounts.Customer_ID`
- `Accounts.Account_ID` → `Transactions.Account_ID`
- `Customers.Customer_ID` → `Loans.Customer_ID`
- `Customers.Customer_ID` → `Credit_Scores.Customer_ID`
- `Branches.Branch_ID` → customer, account and loan branch identifiers

A customer can have multiple accounts and loans, and an account can have multiple transactions.

## 3. Business questions

1. How are customers distributed across customer segments, age groups and regions?
2. What is the total account balance by account type?
3. Which transaction channels account for the largest transaction value and volume?
4. What is the transaction success/failure distribution?
5. How does transaction value change month over month?
6. Which loan types carry the largest outstanding balances?
7. How do loan status and default flags vary across loan types?
8. How are customers distributed across credit-risk categories?
9. Which branches serve the largest customer populations?
10. Which customers hold multiple accounts and loans?

## 4. Excel analysis

The supplied workbook includes analysis sheets for:

- Customer segment and income analysis
- Regional customer distribution
- Age-group analysis
- Account-type balance analysis
- Transaction-channel value analysis
- Loan outstanding analysis
- Loan-status/default analysis
- A `BANKING_DASHBOARD` worksheet

The workbook's prepared summaries show, among other descriptive results:

- 1,200 customer records
- 1,464 accounts
- 15,000 transactions
- 1,800 loans
- ₹14,13,38,339 total current account balance in the account summary
- ₹90,31,41,06.68 total transaction amount in the transaction summary
- ₹1,37,88,30,47 total outstanding loan amount in the loan summary
- 105 loans marked `Defaulted` in the loan-status summary

These are synthetic dataset summaries, not actual bank metrics. Transaction totals should be interpreted according to the workbook's aggregation and status treatment; they are not automatically equivalent to successful transaction value.

## 5. SQL Server analysis

The `sql/` folder contains the SQL file supplied with the project. Its queries explore:

- Customer segments and average annual income
- Account types and account balances
- Transaction status, channel and amount
- Loan types and outstanding amounts
- Credit-risk categories
- Regional customer counts
- Customer-account relationships
- Customers with multiple accounts and loans
- Loan default rates
- Monthly transaction trends using CTEs and `LAG()`
- Ranking customers using window functions

### SQL import note

The SQL source file contains exploratory query iterations and uses table names such as `dbo.transaction`, `dbo.CreditScore` and `dbo.branch` in places. When importing the workbook into SQL Server, the worksheet names may instead become `Transactions`, `Credit_Scores` and `Branches`. Check and align table names with the actual imported schema before running the full script. The source file is preserved as supplied; it has not been represented as fully execution-validated.

## 6. Power BI

The `powerbi/` folder contains the `.pbix` report supplied for this project.

The Excel workbook also includes a `BANKING_DASHBOARD` worksheet. Dashboard screenshots can be added to `screenshots/` and embedded here after exporting the actual Power BI report pages.

## 7. Technical skills demonstrated

**Excel**
- Multi-worksheet dataset exploration
- Pivot-table summaries
- Customer, account, transaction and loan analysis
- KPI and dashboard presentation

**SQL Server**
- Filtering, grouping and aggregation
- Joins and subqueries
- CASE expressions
- Common Table Expressions (CTEs)
- Window functions including `ROW_NUMBER`, `DENSE_RANK` and `LAG`
- Customer, transaction and loan portfolio analysis

**Power BI**
- Interactive report development
- KPI and visual reporting
- Banking customer and portfolio analytics

**AI-assisted analytics**
- Using AI tools to brainstorm business questions and analytical approaches
- Drafting and refining SQL queries
- Debugging SQL and DAX expressions
- Explaining unfamiliar functions and analytical concepts
- Assisting with data dictionaries, documentation and insight narratives
- Reviewing calculations and checking AI suggestions against source data

AI is used as a productivity and learning aid. It does not replace validation: query results, formulas, data types, joins and business interpretations must be checked against the source dataset.

## 8. Repository structure

```text
banking-analytics/
├── README.md
├── .gitignore
├── data/
│   └── Banking_Analytics_Dataset.xlsx
├── sql/
│   ├── banking_analytics_source.sql
│   └── README.md
├── powerbi/
│   ├── Banking_Analytics.pbix
│   └── README.md
├── screenshots/
│   └── README.md
└── documentation/
    ├── data_dictionary.md
    └── README.md
```

## 9. Limitations and responsible use

- This is synthetic practice data, not actual customer or bank data.
- Transaction coverage is limited to 2024–2025.
- `Default_Flag` is defined in the workbook as 1 when `Loan_Status` is `Defaulted`; the data dictionary notes that `Days_Past_Due` is synthetic.
- The dataset is not suitable for real credit decisions, customer targeting or regulatory reporting.
- Any portfolio insights should be described as patterns in this synthetic dataset only.

## Author

**Vansh Chhikara**  
Aspiring Data Analyst | BSc Agriculture Student

**Skills:** SQL Server | Microsoft Excel | Power BI | Data Analytics | AI-Assisted Analytics

---

*Created as part of a data analytics portfolio to demonstrate practical analysis, database querying, dashboard reporting and responsible use of AI tools.*
