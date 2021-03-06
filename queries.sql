--Išsitraukti reikiamus duomenis. 
--customerName - vieta iš kurios ištraukiami duomenys,
--Customer - stulpelio užvadinimas.
SELECT customerName Customer, country Country
FROM customers;


-- Jei reikia visos lentelės 
SELECT * FROM customers;


--Surasti DB'eje klientus tik is USA
SELECT customerName 
FROM customers 
-- WHERE country = 'USA';                --<> - neligybes simbolis
arba WHERE NOT country IN ('USA', 'FRANCE'); -- is daugiau valstybiu

AND NOT creditLimit BETWEEN 0 AND 100000; -- AND prideda papildomai salygai. Galima naudoti AND arba OR, taip pat kaip && ir ||
                                          -- NOT = <>


SELECT productName, productLine, quantityInStock
FROM products
WHERE quantityInStock <1000
AND productLine="Planes"
OR productLine="Ships"
ORDER BY quantityInStock DESC;


SELECT firstName Vardas, lastName Pavarde 
FROM employees
WHERE reportsTo IS NOT NULL
ORDER BY Vardas ASC;


SELECT * 
FROM orders
WHERE orderDate 
BETWEEN "2003-01-01" 
AND "2003-12-31";

-- arba gali buti 
WHERE orderDate <"2003-01-01" --iki 2003-01-01


SELECT * 
FROM orders
WHERE status<>'Shipped'
AND status IN ("Resolved", "Disputed");


SELECT * 
FROM orders
WHERE status<>'Shipped'
AND NOT status IN ("Resolved", "Disputed")
ORDER BY orderDate DESC;

SELECT productName, productVendor
FROM products
WHERE productVendor LIKE "%on%"
AND productLine LIKE "%au%"
GROUP BY productVendor ;


-- Suskaičiuoti vienetus
SELECT SUM(quantityInStock) AS totalMotorcycles
FROM products
WHERE productLine = "Motorcycles";

-- Suskaičiuoti visas klases iš vienos lentelės
SELECT productLine, SUM(quantityInStock) AS Total
FROM products
GROUP BY productLine;

--Vidurkis 
SELECT AVG(buyPrice) AS Average
FROM products;

-- Did=iausia reiksme
SELECT MAX(MSRP) AS MaxPrice
FROM products
WHERE productScale Like "%12";

-- Skaiciuoja reiksmes (eilutes)
SELECT COUNT(productLine) AMAXS count 
FROM products

SELECT COUNT(productLine) AS count 
FROM products
WHERE productLine = "Motorcycles";


-- DISTINCT unikalios eilutes
SELECT COUNT(DISTINCT productLine) AS count 
FROM products;

-- Suskaiciuoti kiekvienos eilutes pelna
SELECT productName, buyPrice, MSRP, (MSRP - buyPrice) AS Profit 
FROM products
ORDER BY Profit DESC;

--Visas pelnas
SELECT productName, buyPrice, MSRP, SUM(MSRP - buyPrice) AS Profit 
FROM products
ORDER BY Profit DESC;

--Uzdarbis is motociklu paimant vidutini pelna.
SELECT (COUNT(productLine)*AVG(MSRP - buyPrice)) AS Profit
FROM products
WHERE productLine= "Motorcycles";

--Istraukti klases kuriu yra nedaugiau 50000 sandelyje
SELECT productLine, SUM(quantityInStock) AS Total
FROM products
GROUP BY productLine 
HAVING SUM(quantityInStock)<50000;



--?????????????????????????????????????????????????????????????????????????????????
                        -- JUNGIMAI
--?????????????????????????????????????????????????????????????????????????????????
SELECT customers.customerName, orders.orderNumber, orders.status 
FROM orders
JOIN customers ON customers.customerNumber = orders.customerNumber
ORDER BY orders.status ASC;


--????????????????????????????????????????????????????????????????????
                        -- INSERT
                -- Reiksmiu pridejimas
--????????????????????????????????????????????????????????????????????
INSERT INTO actor (first_name, last_name)
VALUES ('Jonas', 'Jonaitis')


--????????????????????????????????????????????????????????????????????
                        -- UPDATE
                -- Reiksmiu pakeitimas
                -- !!!!!!BUTINA PRIDETI WHERE, KITU ATVEJU PASIKEIS VISOS REIKSMES LENTELEJE
--????????????????????????????????????????????????????????????????????
UPDATE actor
SET last_name = 'Antanauskas'
WHERE actor_id = 202;

UPDATE address
SET postal_code = '00000'
WHERE address2 = NULL;


--????????????????????????????????????????????????????????????????????
                        -- DELETE
                -- Reiksmiu istrynimas
                -- !!!!!!BUTINA PRIDETI WHERE, KITU ATVEJU ISSITRINS VISOS REIKSMES LENTELEJE
--????????????????????????????????????????????????????????????????????
DELETE FROM actor
WHERE actor_id=202;