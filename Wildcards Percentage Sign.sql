-- Using Wildcard Filtering --

/* What are wildcards? 
Wildcards are special characters used to match parts of a value.

Using wildcards, you can create search patterns that can be compared againist your data.

Wildcard searching can only be used with text fields (strings).
*/

-- The Percentage Sign --

/*
The most frequently used wildcard is the percent sign (%). Within a search string, % means match any number of occurences of any character. 
For example, to find all products that start with the word F, the following select statement can be issued.
*/
-- Retrieve customer names that start with F --
SELECT c.customerNumber, c.customerName
FROM classicmodels.customers as c
WHERE customerName LIKE 'F%';

-- Retrieve customer names that start with B --
SELECT c.customerNumber, c.customerName
FROM classicmodels.customers as c
WHERE customerName LIKE 'B%'; -- This example uses the search pattern of 'B%', when this clause is evalauted any value that starts with B will be retrieved --

-- Retrieve product line that contain 'motor'--
SELECT c.productCode, c.productLine
FROM classicmodels.products as c
WHERE productLine LIKE '%motor%'; -- This retrieves productLine that contain the word 'Motor' anywhere within it, regardless of any characters before or after that text --


-- Finds products that start with M and end with a T --
SELECT c.productVendor
FROM classicmodels.products as c
WHERE productVendor LIKE 'm%t';


