-- creating a database and useing it
CREATE DATABASE telco_churn;
use telco_churn;
SELECT DATABASE();

-- import data  and check the tables present in your database 
SHOW TABLES;
SELECT COUNT(*) FROM telco_churn_sql;
SELECT COUNT(*) FROM `telco_churn_sql (1)`;
SELECT * FROM `telco_churn_sql (1)` LIMIT 10;
DESCRIBE `telco_churn_sql (1)`;

-- rename the column1 name to customer_id
ALTER TABLE `telco_churn_sql (1)`
RENAME COLUMN column1 TO customer_id;

SELECT COUNT(*) AS total_customers
FROM `telco_churn_sql (1)`;

-- rename the table name telco_churn_sql (1) into customers
RENAME TABLE `telco_churn_sql (1)` TO customers;

-- delete the tables that are not usefull
DROP TABLE `telco-customer-churn-cleaned`;
DROP TABLE telco_churn_sql;
SHOW tables;

-- how large is the customer base
SELECT COUNT(*) AS total_customers FROM customers;

-- how many unique customers are ther 
select count(DISTINCT customer_id) as unique_customers 
FROM customers;

-- are there duplicate customer ids
select customer_id,count(*) as occurences
from customers 
group by customer_id
having count(*)>1;

-- how many customers are churned
select churn,count(*) as customer_count
from customers
group by churn;

-- what percentage of the comapany are leaving a company
select count(*) as total_customers,
sum(case when churn='Yes' then 1 else 0 end) as churned_customer,
round(sum(case when churn='Yes' then 1 else 0 end)*100.0/count(*),2) as churn_rate_percentage
from customers;

-- which contract type has the higher churn rate
select contract,count(*) as total_customers,sum(case when churn='Yes' then 1 else 0 end) as churned_customers,
round(sum(case when churn="Yes" then 1 else 0 end) * 100.0/count(*),2) as churn_rate
from customers
group by contract
order by churn_rate desc;

-- are newer customers morelikely to leave the long term customers
SELECT
    CASE
        WHEN tenure BETWEEN 0 AND 12 THEN '0-12 Months'
        WHEN tenure BETWEEN 13 AND 24 THEN '13-24 Months'
        WHEN tenure BETWEEN 25 AND 48 THEN '25-48 Months'
        ELSE '49-72 Months'
    END AS tenure_segment,

    COUNT(*) AS total_customers,

    SUM(CASE
        WHEN churn = 'Yes' THEN 1
        ELSE 0
    END) AS churned_customers,

    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate

FROM customers
GROUP BY tenure_segment
ORDER BY MIN(tenure);

-- does the type of internet service influence customers churn
select internet_service ,count(*) as total_customers,
sum(case when churn="Yes" then 1 else 0 end) as churned_customers,
round(sum(case when churn ="Yes" then 1 else 0 end)*100.0/count(*),2) as churn_rate
from customers
group by internet_service
order by churn_rate desc;

-- customers using certain certain payment methods more likely to churn
select payment_method,count(*) as total_customers,
sum(case when churn ="Yes" then 1 else 0 end) as churned_customers,
round(sum(case when churn='Yes' then 1 else 0 end)*100.0 /count(*),2)as churn_rate
from customers
group by payment_method
order by churn_rate desc;

-- are customers paying higher monthly charges more likely to leave
select case 
when monthly_charges<35 then 'low charges'
when monthly_charges between 35 and 70 then 'medium charges'
else 'high charges'
end as charge_segment,
count(*) as total_customers,
sum(case when churn='Yes' then 1 else 0 end) as churned_customers,
round(sum(case when churn='Yes' then 1 else 0 end)*100.0/count(*),2) as churn_rate,
round(avg(monthly_charges),2)as avg_monthly_charges
from customers
group by charge_segment
order by churn_rate desc;

-- is churn deifferent between senior citizen and non senior citizen
select case when senior_citizen=1 then "senior_citizen" else "not_senior_citizen" end as customer_category,
count(*) as total_customers,
sum(case when churn='Yes' then 1 else 0 end)as churned_customers,
round(sum(case when churn='Yes' then 1 else 0 end)*100.0/count(*),2) as churn_rate
from customers
group by senior_citizen
order by churn_rate desc;

-- customers without technical support 
SELECT
    tech_support,

    COUNT(*) AS total_customers,

    SUM(
        CASE
            WHEN churn = 'Yes' THEN 1
            ELSE 0
        END
    ) AS churned_customers,

    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate

FROM customers

GROUP BY tech_support

ORDER BY churn_rate DESC;





