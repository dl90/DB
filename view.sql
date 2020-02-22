-- Database view (view) is used to store queries on to the db so it can be reused
-- Note a vew and a tabel can not have the same name

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