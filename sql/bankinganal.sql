create database bankinganalytics
use bankinganalytics
select * from customers
select 
distinct customer_segment from customers
order by Customer_Segment



select 
round(avg(cast(annual_income_inr as float )),2) as average_annual_income_inr
from customers


select 
min(age)as minimum_age,
max(age)as maximum_age
from customers

select 
account_type,
count(*) as total_accounts
from accounts
group by 
account_type
order by 
total_accounts desc

select 
sum(current_balance_inr) as total_balance_inr from 
accounts

select 
transaction_status,
count(*) as total_tranaction
from [dbo].[transaction]
group by 
transaction_status
order by
total_tranaction desc

select 
top 5

transaction_id,
transaction_date,
transaction_type,
channel,
amount_inr,
account_id,
transaction_status
from [dbo].[transaction]
order by 
Amount_INR desc



select 
loan_type,
count(*) as total_loans
from loans
group by 
loan_type
order by 
total_loans

select
sum(outstanding_amount_inr) as total_outstanding_amount_inr
from loans

select 
customer_status,
count(*) as total_customers
from customers
group by 
customer_status
order by total_customers desc


select 
customer_segment,
count(*) as total_customers,
avg(annual_income_inr) as   average_annual_income_inr
from customers
group by 
customer_segment
order by 
average_annual_income_inr desc

select 
channel,
count(*) as total_transaction
from [dbo].[transaction]
group by 
channel
order by 
total_transaction desc


select 
transaction_status,
count(*) as total_transaction,
cast
(
count(*)*100/ sum(count(*)) over()
as decimal (5,2)) as transaction_percentage
from [dbo].[transaction]
group by
transaction_status
order by 
total_transaction desc

SELECT
    Transaction_Status,
    COUNT(*) AS Total_Transactions,
    CAST(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER ()
        AS DECIMAL(5, 2)
    ) AS Transaction_Percentage
FROM [dbo].[transaction]
GROUP BY Transaction_Status
ORDER BY Total_Transactions DESC;


select 
channel ,
count(*) as total_transaction,
avg(amount_inr )as average_amount_inr ,
sum(amount_inr) as total_transaction_amount_inr
from [dbo].[transaction]
group by 
Channel
order by 
total_transaction_amount_inr desc,
average_amount_inr desc


SELECT
    Channel,
    COUNT(*) AS Total_Transactions,
    ROUND(
        AVG(CAST(Amount_INR AS FLOAT)), 2
    ) AS Average_Transaction_Amount_INR,
    ROUND(
        SUM(Amount_INR), 2
    ) AS Total_Transaction_Amount_INR
FROM [dbo].[transaction]
GROUP BY Channel
ORDER BY Average_Transaction_Amount_INR DESC;



select 
c.customer_id,
count(a.account_id) as total_accounts
from customers as c
inner join accounts as a
on c.Customer_ID = a.Customer_ID
group by 
c.Customer_ID
order by
total_accounts desc,c.Customer_ID

select top 10
c.customer_id,
sum(a.current_balance_inr) as total_account_balance_inr,
count(a.account_id) as total_accounts
from customers as c
inner join accounts as a
on c.Customer_ID = a.Customer_ID
group by c.Customer_ID
order by 
total_account_balance_inr desc



SELECT
    c.Customer_ID,
    COUNT(a.Account_ID) AS Total_Accounts
FROM dbo.Customers AS c
INNER JOIN dbo.Accounts AS a
    ON c.Customer_ID = a.Customer_ID
GROUP BY c.Customer_ID
ORDER BY Total_Accounts DESC, c.Customer_ID;


SELECT TOP 10
    c.Customer_ID,
    SUM(a.Current_Balance_INR) AS Total_Account_Balance_INR,
    COUNT(a.Account_ID) AS Total_Accounts
FROM dbo.Customers AS c
INNER JOIN dbo.Accounts AS a
    ON c.Customer_ID = a.Customer_ID
GROUP BY c.Customer_ID
ORDER BY Total_Account_Balance_INR DESC;




select
loan_type,
count(*) as total_loans,
sum(outstanding_amount_inr) as total_outstanding_amount_inr,
round(avg(cast(outstanding_amount_inr as float)),2 ) as average_outstanding_amount_inr
from loans
group by 
loan_type
order by 
average_outstanding_amount_inr desc


select
risk_category,
count(*) as total_customers,
round(avg(cast(credit_score as float)),2) as average_credit_score,
min(credit_score) as minimum_credit_score,
max(credit_score) as maximum_credit_score
from creditscore
group by 
Risk_Category
order by 
average_credit_score desc

select
region,
count(*) as total_customers
from
customers
group by 
region
order by 
total_customers 

use bankinganalytics
select 
year(transaction_date) as transaction_year,
month(transaction_date) as transaction_month,
count(*) as total_transactions,
sum(amount_inr) as total_transaction_amount_inr
from [dbo].[transaction]
group by 
year(transaction_date),
month(transaction_date)
order by
transaction_year,
transaction_month
select 
channel,
sum(amount_inr ) as total_successful_amount_inr,
round(avg(cast(amount_inr as float)),2) as average_successful_amount_inr
from [dbo].[transaction]
where Transaction_Status = 'successful'
group by channel
order by 
total_successful_amount_inr desc




with accountcounts as (
select
customer_id,
count(*) as total_accounts
from accounts
group by Customer_ID
having count(*)>= 2),
loancustomers as (
select distinct customer_id
from loans)
select 
a.customer_id,
a.total_accounts,
'yes' as has_loan
from accountcounts as a
inner join loancustomers as l
on a.customer_id = l.Customer_ID
order by 
a.total_accounts desc,
a.Customer_ID


select 
loan_type,
count(*) as total_loans,
sum( case 
when default_flag = 1 then 1
else 0
end) as total_defaults,
cast(
100* sum(case
when default_flag =1 then 1 
else 0 end)/ nullif (count(*),0) as decimal(6,2)) as default_rate_percentage
from loans
group by 
loan_type
order by default_rate_percentage desc



SELECT
    Risk_Category,
    COUNT(*) AS Total_Customers,
    CAST(
        100.0 * COUNT(*) / SUM(COUNT(*)) OVER ()
        AS DECIMAL(5, 2)
    ) AS Customer_Percentage
FROM dbo.CreditScore
GROUP BY Risk_Category
ORDER BY Total_Customers DESC;

select 
top 10 
loan_id,
loan_type,
outstanding_amount_inr,
loan_status,
days_past_due,
default_flag
from loans
order by Outstanding_Amount_INR desc
select * from branches
SELECT
b.branch_name,
b.branch_id,
count(distinct c.customer_id) as total_customers
from branch as b 
left join customers as c
on b.branch_id = c.Branch_ID
group by 
b.branch_id,
b.branch_name
order by total_customers desc




WITH ChannelTotals AS (
    SELECT
        Channel,
        COUNT(*) AS Total_Transactions,
        SUM(Amount_INR) AS Total_Transaction_Amount_INR
    FROM [dbo].[transaction]
    GROUP BY Channel
)
SELECT
    Channel,
    Total_Transactions,
    ROUND(
        Total_Transaction_Amount_INR, 2
    ) AS Total_Transaction_Amount_INR,
    CAST(
        100.0 * Total_Transaction_Amount_INR /
        NULLIF(
            SUM(Total_Transaction_Amount_INR) OVER (),
            0
        )
        AS DECIMAL(6, 2)
    ) AS Transaction_Amount_Percentage
FROM ChannelTotals
ORDER BY Total_Transaction_Amount_INR DESC;

SELECT
    Account_ID,
    Customer_ID,
    Account_Type,
    Current_Balance_INR
FROM dbo.Accounts
WHERE Current_Balance_INR > (
    SELECT AVG(CAST(Current_Balance_INR AS FLOAT))
    FROM dbo.Accounts
)
ORDER BY Current_Balance_INR DESC;



SELECT
    Loan_Type,
    COUNT(*) AS Total_Loans,
    ROUND(
        AVG(CAST(Outstanding_Amount_INR AS FLOAT)), 2
    ) AS Average_Outstanding_Amount_INR
FROM dbo.Loans
GROUP BY Loan_Type
HAVING AVG(CAST(Outstanding_Amount_INR AS FLOAT)) > (
    SELECT AVG(CAST(Outstanding_Amount_INR AS FLOAT))
    FROM dbo.Loans
)
ORDER BY Average_Outstanding_Amount_INR DESC;

with customerbalnces as (
select 
customer_id,
sum(current_balance_inr ) as total_account_balance_inr
from accounts
group by customer_id)
select
customer_id,
total_account_balance_inr,
dense_rank() over( order by total_account_balance_inr desc ) as balance_bank
from customerbalnces
order by 
balance_bank, Customer_ID

with customertransactiontotals as (
select
c.customer_id,
c.region,
sum(t.amount_inr) as total_transaction_value_inr
from customers as c
inner join accounts as a
on a.Customer_ID = c.Customer_ID
inner join [dbo].[transaction] as t
on  a.account_id = t.account_id
group by 
c.customer_id,
c.region),
rankedcustomers as(
select
customer_id,
region,
total_transaction_value_inr,
row_number() over( partition by region
order by total_transaction_value_inr desc, customer_id ) as regional_rank
from customertransactiontotals
)
select
customer_id,
region,
round(total_transaction_value_inr,2)
as total_transaction_value_inr,
regional_rank
from rankedcustomers
where regional_rank<= 3
order by region,regional_rank


select * from [dbo].[transaction]







with monthlytransactions as(
select
datefromparts(
year(Transaction_date),
month(Transaction_date),
1
) as transaction_month,
sum(amount_inr) as monthly_transaction_value_inr
from[dbo].[customers]
group by 
year(transaction_date),
month(transaction_date))
monthlycomparison as (
select 
transaction_month,
monthly_transaction_value_inr,
lag(monthly_transaction_value_inr) over (
order by transaction_month) as previous_month_value_inr
from monthlytransaction)

select
transaction_month,
round(monthly_transaction_value_inr,2)
as monthly_transaction_value_inr,
round(previous_month_value_inr,2)
as previous_month_value_inr,
round( 100*(monthly_transaction_value_inr - previous_month_value_inr)
/ nullif (previous_month_value_inr,0),2) as month_over_growth_percentage
from monthlycomparison
order by
transaction_month



WITH MonthlyTransactions AS (
    SELECT
        DATEFROMPARTS(
            YEAR(Transaction_Date),
            MONTH(Transaction_Date),
            1
        ) AS Transaction_Month,
        SUM(Amount_INR) AS Monthly_Transaction_Value_INR
    FROM [dbo].[transaction]
    GROUP BY
        YEAR(Transaction_Date),
        MONTH(Transaction_Date)
),
MonthlyComparison AS (
    SELECT
        Transaction_Month,
        Monthly_Transaction_Value_INR,
        LAG(Monthly_Transaction_Value_INR) OVER (
            ORDER BY Transaction_Month
        ) AS Previous_Month_Value_INR
    FROM MonthlyTransactions
)
SELECT
    Transaction_Month,
    ROUND(Monthly_Transaction_Value_INR, 2)
        AS Monthly_Transaction_Value_INR,
    ROUND(Previous_Month_Value_INR, 2)
        AS Previous_Month_Value_INR,
    ROUND(
        100.0 *
        (Monthly_Transaction_Value_INR - Previous_Month_Value_INR)
        / NULLIF(Previous_Month_Value_INR, 0),
        2
    ) AS Month_Over_Month_Growth_Percentage
FROM MonthlyComparison
ORDER BY Transaction_Month;

SELECT
    c.Customer_ID,
    c.Customer_Segment,
    c.Region,
    c.Annual_Income_INR
FROM dbo.Customers AS c
LEFT JOIN dbo.Loans AS l
    ON c.Customer_ID = l.Customer_ID
WHERE l.Customer_ID IS NULL
ORDER BY c.Customer_ID;
























with accountsummary as (
select
customer_id,
count(*) as total_accounts,
sum(current_balance_inr) as total_account_balance_inr
from
accounts
group by 
customer_id),
transactionsummary as (
select 
a.customer_id,
count(t.transaction_id)as total_transactions,
sum(t.amount_inr) as total_transaction_value_inr,
sum(
case
when t.transaction_status = 'successful' then 1
else 0
end) as successful_transactions,
sum(
case
when t.transaction_status = 'failed'
then 1 
else 0
end ) as failed_transactions
from[dbo].[transaction]
inner join [dbo].[transaction] as t
on a.account_id = t.Account_ID
group by
a.customer_id
),
loansummary as (
select
customer_id,
count(*) as total_loans,
sum(outstanding_amount_inr) as total_outstanding_loan_inr,
sum(
case
when default_flag = 1 then 1
else 0 
end) as total_defaulted_loans
from loans
group by customer_id)
select
c.customer_id,
c.age,
c.customer_id,
c.region,
c.annual_income_inr,
coalesce(a.total_accounts ,0) as total_accounts,
coalesce(a.total_account_balance_inr ,0 ) as total_account_balance_inr,
coalesce(t.total_transactions,0) as total_transactions,
coalesce(t.total_transaction_value_inr,0) as total_transaction_value_inr,
coalesce(t.successful_transaction , 0) as successful_transaction,
coalesce(t.failed_transaction ,0) as failed_transaction,
 COALESCE(l.Total_Loans, 0) AS Total_Loans,
    COALESCE(l.Total_Outstanding_Loan_INR, 0)
        AS Total_Outstanding_Loan_INR,
    COALESCE(l.Total_Defaulted_Loans, 0)
        AS Total_Defaulted_Loans,
    cs.Credit_Score,
    cs.Risk_Category
FROM dbo.Customers AS c
left join accountsummary as a
on c.Customer_ID =  a.Customer_ID
left join transactionsummary as t
on c.Customer_ID = t.customer_id
LEFT JOIN LoanSummary AS l
    ON c.Customer_ID = l.Customer_ID
LEFT JOIN dbo.CreditScore AS cs
    ON c.Customer_ID = cs.Customer_ID
ORDER BY c.Customer_ID;

select * from accounts