-- Databricks notebook source
REPLACE TABLE Customers(
    CustomerID INT,
    CustomerName STRING,
    City STRING,
    AccountType STRING,
    Balance INT,
    LoanAmount INT
    );
    insert into Customers values
    (101,'John','Dallas','Savings',5000,10000),
    (102,'Mary','Austin','Current',2500,5000),
    (103,'David','Dallas','Savings',8000,0),
    (104,'Emma','Houston','Savings',1500,3000),
    (105,'Alex','Austin','Current',7000,12000),
    (106,'Sophia','Dallas','Savings',5000,8000);


-- COMMAND ----------

SELECT CustomerName, City, Balance, LoanAmount
FROM Customers;



-- COMMAND ----------



SELECT DISTINCT City
FROM Customers;



-- COMMAND ----------

SELECT CustomerName, City, Balance, LoanAmount
FROM Customers;




-- COMMAND ----------



SELECT *
FROM Customers
ORDER BY LoanAmount DESC;



-- COMMAND ----------


SELECT COUNT(*) AS Total_Loan
FROM Customers;



-- COMMAND ----------

SELECT SUM(LoanAmount) AS Total_Loan
FROM Customers;



-- COMMAND ----------

SELECT MIN(Balance) AS Minimum_Balance
FROM Customers;



-- COMMAND ----------

SELECT MAX(Balance) AS Maximum_Balance
FROM Customers;



-- COMMAND ----------

SELECT AVG(Balance) AS Average_Balance
FROM Customers;

-- COMMAND ----------

SELECT *
FROM Customers
ORDER BY LoanAmount DESC
LIMIT 5;
