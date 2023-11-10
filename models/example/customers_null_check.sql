-- models/customers_null_check.sql

-- This model checks for null values in the Customers table

-- Null check for CustomerID
SELECT
  COUNT(*) AS null_check_customer_id
FROM
  {{ ref('customers') }}
WHERE
  CustomerID IS NULL;

-- Null check for FirstName
SELECT
  COUNT(*) AS null_check_first_name
FROM
  {{ ref('customers') }}
WHERE
  FirstName IS NULL;

-- Null check for LastName
SELECT
  COUNT(*) AS null_check_last_name
FROM
  {{ ref('customers') }}
WHERE
  LastName IS NULL;

-- Add similar checks for other columns as needed (Email, PhoneNumber, Address, City, Country)
