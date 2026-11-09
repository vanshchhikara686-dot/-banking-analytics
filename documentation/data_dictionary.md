# Banking Analytics Data Dictionary

All records in this workbook are synthetic practice data.

| Worksheet | Column | Description |
|---|---|---|
| Customers | Customer_ID | Unique customer identifier |
| Customers | Age, Gender, City, Region, Occupation | Customer profile attributes |
| Customers | Annual_Income_INR | Synthetic annual income in INR |
| Customers | Customer_Segment | Customer segment label |
| Customers | Customer_Since | Synthetic customer relationship start date |
| Customers | Branch_ID | Associated branch identifier |
| Customers | Customer_Status | Customer status |
| Accounts | Account_ID | Unique account identifier |
| Accounts | Customer_ID | Account holder identifier |
| Accounts | Account_Type | Account product type |
| Accounts | Account_Status | Account status |
| Accounts | Current_Balance_INR | Synthetic current balance in INR |
| Accounts | Overdraft_Limit_INR | Synthetic overdraft limit in INR |
| Transactions | Transaction_ID | Unique transaction identifier |
| Transactions | Account_ID | Related account identifier |
| Transactions | Transaction_Date | Transaction date |
| Transactions | Transaction_Type | Credit/debit classification |
| Transactions | Amount_INR | Transaction amount in INR |
| Transactions | Channel | Transaction channel |
| Transactions | Transaction_Category | Transaction category |
| Transactions | Transaction_Status | Transaction outcome/status |
| Loans | Loan_ID | Unique loan identifier |
| Loans | Customer_ID | Borrower identifier |
| Loans | Loan_Type | Loan product type |
| Loans | Loan_Amount_INR | Original loan amount in INR |
| Loans | Outstanding_Amount_INR | Outstanding loan amount in INR |
| Loans | Interest_Rate_Pct | Interest rate percentage |
| Loans | Tenure_Months | Loan tenure in months |
| Loans | Disbursement_Date | Synthetic disbursement date |
| Loans | Loan_Status | Loan status |
| Loans | Days_Past_Due | Synthetic days-past-due value |
| Loans | Default_Flag | 1 when Loan_Status is Defaulted; otherwise 0 |
| Credit_Scores | Customer_ID | Customer identifier |
| Credit_Scores | Credit_Score | Synthetic credit score |
| Credit_Scores | Risk_Category | Synthetic risk category |
| Credit_Scores | Credit_Check_Date | Synthetic credit check date |
| Credit_Scores | Credit_History_Years | Synthetic credit history duration |
| Credit_Scores | Missed_Payments_Last_12M | Synthetic missed-payment count |
| Branches | Branch_ID | Unique branch identifier |
| Branches | Branch_Name | Branch name |
| Branches | City, Region | Branch location |
| Branches | Branch_Type | Branch classification |

## Relationships

- Customers.Customer_ID → Accounts.Customer_ID
- Accounts.Account_ID → Transactions.Account_ID
- Customers.Customer_ID → Loans.Customer_ID
- Customers.Customer_ID → Credit_Scores.Customer_ID
- Branches.Branch_ID → Customers.Branch_ID, Accounts.Branch_ID and Loans.Branch_ID

## Data limitations

The dataset is synthetic and intended for learning. Transactions span 2024-01-01 through 2025-12-31; other dates are synthetic. Do not use these values for real credit decisions, customer eligibility or bank performance claims.
