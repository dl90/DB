-- Database view (view) is used to store queries on to the db so it can be reused
-- Note a vew and a tabel can not have the same name
-- You can created views based on existing views

-- CREATE [OR REPLACE] VIEW [db_name.]view_name [(column_list)]
CREATE VIEW view_name AS 
  SELECT 
    customerName, 
    checkNumber, 
    paymentDate, 
    amount
  FROM
    customers
  INNER JOIN
    payments USING (customerNumber);

-- To use the saved query
SELECT * FROM view_name;

-- To see if tables are table or view
SHOW FULL TABLES;

