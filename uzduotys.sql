-- 1. Parašykite SQL užklausą, kuri ištrauktų visus stulpelius iš lentelės „actor“
SELECT *
FROM actor;

-- 2. Parašykite SQL užklausą, kuri ištrauktų visus stulpelius iš lentelės „actor“, surušiuotus pagal stulpelį „first_name“.
SELECT *
FROM actor
ORDER BY first_name ASC;


-- 3.Parašykite SQL užklausą, kuri ištrauktų visus stulpelius iš lentelės „actor“, surušiuotus pagal stulpelį „first_name“ mažėjimo tvarka.
SELECT *
FROM actor
ORDER BY first_name DESC;


-- 4.Parašykite užklausą, kuri ištrauktų stulpelį „first_name“ iš lentelės „actor“ .
SELECT first_name Vardai
FROM actor;


-- 5.Parašykite užklausą, kuri ištrauktų stulpelus „first_name“, „last_name“ iš lentelės „actor“ .
SELECT first_name Vardai, last_name Pavardes
FROM actor;


-- 6.Parašykite užklausą, kuri ištrauktų stulpelus „first_name“, „last_name“ iš lentelės „actor“ surušiuotus pagal „last_name“ didėjimo tvarka.
SELECT first_name Vardai, last_name Pavarde
FROM actor
ORDER BY last_name ASC;


-- 7.Parašykite užklausą, kuri ištrauktų stulpelus „first_name“, „last_name“ iš lentelės „actor“ surušiuotus pagal „last_name“ mažėjimo tvarka.
SELECT first_name Vardai, last_name Pavarde
FROM actor
ORDER BY last_name DESC;


-- 8. Parašykite užklausą, kuri ištrauktų stulpelus „first_name“, „last_name“ iš lentelės „actor“ sugrupuotus pagal stulpelį „first_name“ ir surušiuotus pagal „first_name“ mažėjimo tvarka.
SELECT first_name Vardai, last_name Pavarde
FROM actor
GROUP BY first_name
ORDER BY first_name DESC;


-- 9.Parašykite SQL užklausą, kuri ištrauktų visus stulpelius iš lentelės „actor“ , kur stulpelio „first_name“ reikšmė yra Nick.
SELECT first_name Vardai
FROM actor
WHERE first_name = "Nick";


-- 10.Parašykite SQL užklausą, kuri ištrauktų visas skirtingas stulpelio „first_name“ reikšmes iš lentelės „actor“.
SELECT DISTINCT first_name Vardai
FROM actor;


-- 11.Parašykite SQL užklausą, kuri rezultate stulpelius atvaizduotų tokia tvarka kaip pateikta žemiau.  Naudokite lentelę “actor”.
SELECT DISTINCT last_update Prisijungimai, last_name Pavardes, first_name Vardai
FROM actor;


-- 12.Parašykite SQL užklausą, kuri pateiktų visą informaciją apie filmus, kurių nuomos trukmė yra 6. Naudokite lentelę „film“.
SELECT*FROM film
WHERE rental_duration = 6;


-- 13. Parašykite SQL užklausą, kuri pateiktų filmo pavadinimą, aprašymą, išleidimo metus, reitingą, kai reitingas yra PG. Naudokite lentelę „film“.
SELECT title Title, description Description, release_year ReleaseYear, rating Ratings
FROM film
WHERE rating = "PG";


-- 14.Parašykite SQL užklausą, kuri pateiktų filmo pavadinimą, nuomos kainą ir filmo trukmę,  pagal filmo trukmę nuo trumpiausio iki ilgiausio. Naudokite lentelę „film“.
SELECT title, replacement_cost, length
FROM film
ORDER BY length ASC;


-- 15.Parašykite SQL užklausą, kuri ištrauktų filmo pavadinimą, nuomos trukmę, nuomos kainą,  kai nuomos kaina yra 4.99 arba mažiau, o nuomos trukmė 5 ir 6. Naudokite lentelę „film“.
SELECT title, rental_duration, rental_rate
FROM film
WHERE rental_rate <5
AND rental_duration BETWEEN 5 AND 6;


-- 16.Parašykite SQL užklausą, kuri ištraukia filmo pavadinimą, filmo trukmę, nuomos kainą,  žanro tipą, išskyrus tuos filmus, kur žanras nėra “Trailers”, pirmiausiai surušiuojant nuo trumpiausių iki ilgiausiai trunkančių filmų, o paskui pagal nuomos kainą. Naudokite lentelę „film“.
SELECT title, length, rental_rate, special_features
FROM film
WHERE special_features = "Trailers"
ORDER BY length, rental_rate ASC



-- 1. Parašykite SQL užklausą, kuri ištrauktų visus filmus, kurių žanro aprašyme nėra žodžio “Trailers”. Naudokite lentelę „film“. 
SELECT title, length, rental_rate, special_features
FROM film
WHERE special_features NOT LIKE "%Trailers%"
ORDER BY length, rental_rate ASC


-- 2. Parašykite SQL užklausą, kuri ištrauktų visus filmus, kurių žanro aprašymas prasideda žodžiu “Trailers”. Naudokite lentelę „film“. 
SELECT title, length, rental_rate, special_features
FROM film
WHERE special_features LIKE "%Trailers%" --or "Trailers%"
ORDER BY length, rental_rate ASC;


-- 3. Parašykite užklausą, kuri ištraukia visus filmų pavadinimus, kurie prasideda raide „z“. Naudokite lentelę „film“. 
SELECT title
FROM film
WHERE title LIKE "z%";


-- 4. Parašykite užklausą, kuri ištraukia visus filmų pavadinimus, kurių antroji raidė yra “w”. Naudokite lentelę „film“
SELECT title
FROM film
WHERE title LIKE "_w%";


-- 5. Parašykite SQL užklausą, kuri ištraukia visus filmų pavadinimus, kurių antroji raidė yra “w”, o ketvirtoji raidė yra “e”. Naudokite lentelę „film“. 
SELECT title
FROM film
WHERE title LIKE "_w_e%";


-- 6. Parašykite SQL užklausą, kuri stulpelius title, description pervadina į stulpelius ‘filmo pavadinimas’, ‘aprašymas’ atitinkamai. ”. Naudokite lentelę „film“. 
SELECT title 'Filmo pavadinimas', description Aprasymas
FROM film;


-- 7. Parašykite SQL užklausą, kuri ištraukia filmo pavadinimą, aprašymą, trukmę, kai trukmė yra tarp 46 ir 50, pradedant nuo trumpiausių. ”. Naudokite lentelę „film“. 
SELECT title 'Filmo pavadinimas', description Aprasymas, length Trukme
FROM film
WHERE length BETWEEN 46 AND 50
ORDER BY length ASC;


-- 8. Parašykite SQL užklausą, kuri ištrauktų filmų pavadinimus, nuomos kainą, trukmę, kai nuomos kaina yra 2.99 arba trukmė yra 130. Naudokite lentelę „film“
SELECT title 'Filmo pavadinimas', rental_rate Kaina, length Trukme
FROM film
WHERE rental_rate = 2.99 
OR length = 130;


-- 9. Parašykite SQL užklausą, kuri ištraukia filmų pavadinimus, trukmę, nuomos kainą, kai trukmė yra 48 arba nuomos kaina nedidesnė negu 2.99. Naudokite lentelę „film“. 
SELECT title 'Filmo pavadinimas', rental_rate Kaina, length Trukme
FROM film
WHERE length = 48 
OR rental_rate <= 2.99;


-- 10. Parašykite užklausą, pateikiančią visus klientus, kurie dar negrąžino išsinuomotų filmų. Naudokite lentelę “rental”. 
SELECT customer_id
FROM rental
WHERE return_date IS NULL;


-- 11. Parašykite SQL užklausą, pateikiančią visus klientus, kurie grąžino išsinuomotus filmus. Naudokite lentelę “rental”. 
SELECT customer_id
FROM rental
WHERE return_date IS NOT NULL;


-- 12. Parašykite SQL užklausą, kuri pateikia visą informaciją apie miestus, išskyrus miestus Adana, Abu Dhabi ir Aden. Naudokite lentelę “city”. 
SELECT * FROM city
WHERE NOT city IN ("Adana", "Abu Dhabi", "Aden");


-- 13. Parašykite SQL užklausą, kuri pateikia visą informaciją apie nuomą tarp išnuomavimo laikotarpių '2005-05-24 22:54:33' ir '2005-05-24 23:05:21'. Naudokite lentelę “rental”. 
SELECT * FROM rental
WHERE rental_date BETWEEN '2005-05-24 22:54:33' AND '2005-05-24 23:05:21'
ORDER BY rental_date ASC;


-- 3.1.  Parašykite SQL užklausą, kuri ištraukia filmo pavadinimą, nuomos kainą, (pavėluoto) grąžinimo kainą, o bendra nuomos kaina ir (pavėluoto) grąžinimo kaina pateikiama naujame stulpelyje “total”. Naudokite lentelę „film“. 
SELECT title, rental_rate, replacement_cost, (rental_rate + replacement_cost) AS Total
FROM film;


-- 3.2. Parašykite SQL užklausą, kuri pateiktų filmų sąrašą ir paskaičiuotų, kiek vieno filmo nuoma kainuoja per dieną. Rezultatą pateikite naujame stulpelyje „cost per day“. Naudokite lentelę „film“. 
SELECT title Pavadinimas, (rental_rate/rental_duration) AS "Cost per day"
FROM film;


-- 3.3. Parašykite SQL užklausą, kuri paskaičiuoja bendrą visų mokėjimų sumą. Rezultatą pateikite stulpelyje „Iš viso“. Naudokite lentelę „payment“.
SELECT SUM(amount) AS "Is viso"
FROM payment;


-- 3.4. Parašykite SQL užklausą, kuri paskaičiuoja vidutinę visų mokėjimų sumą. Rezultatą pateikite stulpelyje „Vidutinė suma“. Naudokite lentelę „payment“. 
SELECT SUM(amount) AS "Is viso", AVG(amount) AS "Vidutine suma"
FROM payment;


-- 3.5. Parašykite SQL užklausą, kuri paskaičiuotų, kiek yra darbuotojų. Rezultatą pateikite stulpelyje “'Darbuotojų skaičius”. Naudokite lentelę „payment“. 
SELECT COUNT(DISTINCT staff_id) AS "Darbuotoju skaicius"
FROM payment;


--?????????????????????????????????????????????????????????????????????????????????
-- 3.6. Parašykite SQL užklausą, kuri paskaičiuoja, kiek yra atlikta mokėjimų. Rezultatą pateikite stulpelyje „Iš viso mokėjmų“. Paskaičiuoti galima keliais būdais. Naudokite lentelę „payment“. 
SELECT COUNT(payment_id) AS "Is viso mokejimu"
FROM payment; (16049)

-- SELECT COUNT(DISTINCT rental_id) AS "Is viso mokejimu"
-- FROM payment; (16044)
--?????????????????????????????????????????????????????????????????????????????????



-- 3.7. Parašykite SQL užklausą, kuri ištraukia didžiausią atliktą įmoką. Rezultatą pateikite stulpelyje „Didžiausias mokėjimas”. Naudokite lentelę „payment“.
SELECT MAX(amount) AS "Didziausias mokejimas"
FROM payment; 

-- 3.8. Parašykite SQL užklausą, kuri ištraukia mažiausią atliktą įmoką. Rezultatą pateikite stulpelyje „Mažiausias mokėjimas”. Naudokite lentelę „payment“. 
SELECT MIN(amount) AS "Maziausias mokejimas"
FROM payment
-- WHERE amount IS NOT NULL;


-- 3.9. Parašykite SQL užklausą, kuri pateikia kiekvieno kliento didžiausią mokėjimą mažėjimo tvarka. Naudokite lentelę „payment“.
SELECT customer_id, amount "Didziausias mokejimas"
FROM payment
GROUP BY customer_id
ORDER BY MAX(amount) DESC;


-- 3.10. Parašykite SQL užklausą, kuri pateikia kiekvieno kliento didžiausią per dieną atliktą mokėjimą. Naudokite lentelę „payment“. 
SELECT customer_id, DATE(payment_date), MAX(amount) 
FROM payment 
GROUP BY customer_id, DATE(payment_date);
-- Kaip padaryti, kad būtų tik vienas kliento mokėjimas?


-- 3.11. Parašykite SQL užklausą, kuri pateikia mažiausią kiekvieno kliento mokėjimą, atliktą 2005-07-08. Naudokite lentelę „payment“. 
SELECT customer_id, DATE(payment_date), MIN(amount) 
FROM payment 
WHERE DATE(payment_date) = '2005-07-08'
GROUP BY customer_id, DATE(payment_date);


-- 3.12. Parašykite SQL užklausą, kuri pateiktų visus klientus, atlikusius mokėjimą 2005-07-08. Naudokite lentelę „payment“. 
SELECT customer_id, DATE(payment_date) 
FROM payment 
WHERE DATE(payment_date) = '2005-07-08'
GROUP BY customer_id, DATE(payment_date);

-- 3.13. Parašykite SQL užklausą, pateikiančią klientų sąrašą ir didžiausią kiekvieno kliento mokėjimą, bet tik tų klientų, kurių didžiausias atliktas mokėjimas didesnis negu 6.99, rušiuojant pagal didžiausią mokėjimą didėjimo tvarka. Naudokite lentelę „payment“. 
SELECT customer_id, MAX(amount) 
FROM payment 
GROUP BY customer_id 
HAVING MAX(amount)>6.99 
ORDER BY MAX(amount) ASC;


-- 3.14. Parašykite SQL užklausą, pateikiančią klientų sąrašą su mokėjimo data ir didžiausiu kiekvieno kliento mokėjimu per dieną, bet tik tų klientų, kurių atliktas didžiausias mokėjimas per dieną yra  tarp 3.99 ir 4.99. Naudokite lentelę „payment“. 
SELECT customer_id, MAX(amount), DATE(payment_date) 
FROM payment 
GROUP BY customer_id, DATE(payment_date) 
HAVING MAX(amount) BETWEEN 3.99 AND 4.99; 


--?????????????????????????????????????????????????????????????????????????????????
                        -- JUNGIMAI
--?????????????????????????????????????????????????????????????????????????????????

-- Parašykite SQL užklausą, kuri pateikia sąrašą su pardavėjo vardu ir pavarde, kliento vardu ir pavarde, ir parduotuvės ID, kuriai priklauso ir pardavėjas, ir klientas (pardavėjas dirba, o klientas ateina išsinuomoti filmo). Naudokite lenteles staff ir customer.
SELECT staff.first_name, staff.last_name, customer.first_name, customer.last_name, staff.store_id
FROM staff
INNER JOIN customer ON customer.store_id = staff.store_id;


-- Parašykite SQL užklausą, sudarančią sąrašą su kliento vardu, kliento pavarde, atliktu mokėjimu ir mokėjimo kodu, tiems mokėjimams, kurių vertė yra tarp 4.99 ir 6.99. Naudokite lenteles customer ir payment.
SELECT customer.first_name, customer.last_name, payment.amount, payment.payment_id
FROM customer
INNER JOIN payment ON payment.customer_id = customer.customer_id
WHERE payment.amount BETWEEN 4.99 AND 6.99


-- Parašykite SQL užklausą, parodančią, kokie pardavėjai kokius klientus aptarnauja. Naudokite lenteles „customer“ ir „ staff“.
SELECT customer.first_name, customer.last_name, staff.first_name, staff.last_name
FROM staff
INNER JOIN customer ON customer.store_id = staff.store_id;


-- 7. Parašykitr SQL užklausą, pateikiančią kliento vardą, kliento pavardę, atliktą mokėjimą, mokėjimo datą tiems mokėjimams, kurių vertė yra 2.99, 4.99, 6.99. Naudokite lenteles „customer“ ir „payment“.
SELECT customer.first_name, customer.last_name, payment.payment_id, payment.payment_date
FROM customer
INNER JOIN payment ON payment.customer_id = customer.customer_id
WHERE payment.amount IN ('2.99', '4.99', '6.99');


-- 8. Parašykite SQL užklausą, pateikiančią kliento vardą, kliento pavardę, šalį (district) ir adresą. Naudokite lenteles „customer“ ir „address“.
SELECT customer.first_name, customer.last_name, address.district, address.address
FROM customer
INNER JOIN address ON address.address_id = customer.customer_id;


-- 9. Parašykite SQL užklausą, pateikiančią mokėjimo ID, mokėjimo datą, mokėjimo sumą, kliento vardą ir pavardę, pardavėjo vardą ir pavardę. Naudokite lenteles „payment“, „customer“, „staff“
SELECT payment.payment_id, payment.payment_date, payment.amount, customer.first_name, customer.last_name, staff.first_name, staff.last_name
FROM payment
JOIN customer ON payment.payment_id = customer.customer_id
JOIN staff ON staff.store_id = customer.store_id;


-- 10. Parašykite SQL užklausą, pateikiančią kiekvieno kliento, išleidusio nuomai iš viso nuo 150 iki 200, vardą ir pavardę. Taip pat pateikite ir pardavėjo vardą bei pavardę, aptarnavusio šiuos klientus. Rezultatą surušiuokite pagal iš viso išleistą sumą nuomai didėjimo tvarka. Naudokite lenteles „payment“, „customer“, „staff“.
SELECT customer.first_name, customer.last_name, staff.first_name, staff.last_name, SUM(payment.amount)
FROM payment
JOIN customer ON customer.customer_id = payment.customer_id
JOIN staff ON staff.staff_id = payment.staff_id
GROUP BY payment.customer_id
HAVING SUM(payment.amount) BETWEEN 150 AND 200
ORDER BY SUM(payment.amount) ASC;

-- 11. Parašykite užklausą, kuri pateikia 2006-02-14 išnuomuotų filmų pavadinimus. Naudokite lenteles
-- „film“, „inventory“, „rental“.
SELECT film.film_id, film.title, rental.rental_date
FROM film
JOIN inventory ON film.film_id = inventory.film_id
JOIN rental ON inventory.inventory_id = rental.inventory_id
WHERE DATE(rental.rental_date) = '2006-02-14';


-- 12. Parašykite užklausą, kuri paskaičiuoja, kiek klientė BARBARA JONES išleido nuomai per 2005 metus.
-- Naudokite lenteles „customer“ ir „payments“.
SELECT customer.first_name, customer.last_name, SUM(payment.amount)
FROM customer
JOIN payment ON payment.customer_id = customer.customer_id
WHERE customer.first_name = 'BARBARA' AND customer.last_name = 'JONES' 
AND DATE(payment.payment_date) LIKE '2005%';


-- 13. Parašykite SQL užklausą, pateikiančią klientų, gyvenančių Californijoje, vardus ir pavardes. Naudokite
-- lenteles „customer“ ir „address“.
SELECT customer.first_name, customer.last_name, address.district
FROM customer
JOIN address ON customer.address_id = address.address_id
WHERE address.district = 'California';


-- 14. Parašykite užklausą, kuri paskaičiuoja, kiek yra klientų, gyvenančių Kalifornijoje.

SELECT address.district, COUNT(customer.customer_id)
FROM customer
JOIN address ON customer.address_id = address.address_id
WHERE address.district = 'California';

-- OR

SELECT address.district, COUNT(DISTINCT customer.first_name)
FROM customer
JOIN address ON customer.address_id = address.address_id
WHERE address.district = 'California';

-- ??????????????????????????LEFT JOIN???????????????????????????

-- 1. Parašykite SQL užklausą, pateikiančią kiekvieno kliento vardą ir pavardę, ką jis išsinuomavo, išsinuomavimo datą, grąžinimo datą, nuomos mokestį. Rezultatą surušiuokite pagal kliento ID. Naudokite lenteles „customer“ ir „rental“, „payment“.
SELECT customer.first_name, customer.last_name, rental.inventory_id, rental.rental_date, rental.return_date, payment.amount
FROM customer
LEFT JOIN rental ON customer.customer_id = rental.customer_id
LEFT JOIN payment ON rental.rental_id = payment.rental_id
ORDER by customer.customer_id;


-- 2. Parašykite SQL užklausą, pateikiančią, ką klientas, vardu 'BARBARA' ir pavarde 'JONES', išsinuomavo, išsinuomavimo datą, grąžinimo datą, nuomos mokestį. Rezultatą surūšiuokite pagal invetoriaus ID didėjimo tvarka. Naudokite lenteles „customer“ ir „rental“, „payment“.
SELECT customer.first_name, customer.last_name, rental.inventory_id, rental.rental_date, rental.return_date, payment.amount
FROM customer
LEFT JOIN rental ON customer.customer_id = rental.customer_id
LEFT JOIN payment ON rental.rental_id = payment.rental_id
WHERE customer.first_name LIKE "BARBARA" AND customer.last_name LIKE "JONES"
ORDER by rental.inventory_id ASC;

-- ??????????????????????????RIGHT JOIN???????????????????????????

-- 1.  Parašykite SQL užklausą, kuri pateikia filmų negrąžinusių klientų vardą, pavardę, el.pašto adresą. Naudokite lenteles „customer“ ir „rental“. Rezultatą surūšiuokite pagal kliento ID didėjimo tvarka.
SELECT customer.first_name, customer.last_name, customer.email, rental.return_date
FROM customer
RIGHT JOIN rental ON rental.customer_id = customer.customer_id
WHERE rental.return_date IS NULL
ORDER BY customer.customer_id ASC;

-- ??????????????????????????VISOKIE???????????????????????????

-- 1. Pateikite filmus, kurių trukmė neilgesnė negu 90.
SELECT film.title, film.length
FROM film
WHERE film.length <= 90
ORDER BY film.length ASC;

-- 2. Pateikite filmų pavadinimus, nuomos kainą, trukmę, kai nuomos kaina yra 3.99 arba trukmė yra 130.
SELECT film.title, film.rental_rate, film.length
FROM film
WHERE film.length = 130 OR film.rental_rate = 3.99
ORDER BY film.length ASC;


-- 3. Pateikite visą informaciją apie filmų kategorijas, kurių pavadinimas prasideda bet kuria kita raide negu tarp A ir E.
SELECT *
FROM film
WHERE title BETWEEN 'E' AND 'Z'
ORDER BY title ASC; 


-- 4. Pateikite visą informaciją apie filmų kategorijas, kurių pavadinimas prasideda raide F, ketvirtoji raidė yra I, o likusios raidės gali būti bet kokios. 
SELECT *
FROM film
WHERE title LIKE 'F__I%'
ORDER BY title ASC;


-- 5. Pateikite filmų sąrašą, kurių pavadinimas susideda iš 5 raidžių, o ketvirtoji raidė yra „m“.
SELECT *
FROM category
WHERE name LIKE '___m_'
ORDER BY name ASC;


-- 6. Pateikite filmų sąrašą, kurių pavadinime ketvirtoji raidė yra „m“.SELECT *
FROM film
WHERE title LIKE '___m%'
ORDER BY title ASC;


-- 7. . Pateikite klientų sąrašą su mokėjimo data ir didžiausiu kiekvieno kliento mokėjimu, bet tik tų klientų, kurių didžiausias mokėjimas per dieną didesnis negu 6.99, rušiuojant pagal didžiausią mokėjimą mažėjimo tvarka. 
SELECT customer.first_name, customer.last_name, payment.payment_date, payment.amount
FROM customer
JOIN payment ON customer.customer_id = payment.customer_id
WHERE payment.amount >= 6.99
ORDER by payment.amount DESC;


-- 8. Pateikite klientų sąrašą su mokėjimo data ir didžiausiu kiekvieno kliento mokėjimu, bet tik tų klientų, kurie turi didžiausią mokėjimą per dieną, lygų 2.99, 3.99 ir 4.99. 
SELECT customer.first_name, customer.last_name, payment.payment_date, payment.amount
FROM customer
JOIN payment ON customer.customer_id = payment.customer_id
WHERE payment.amount IN ('2.99', '3.99', '4.99')
GROUP BY customer.customer_id
ORDER by payment.amount DESC;


-- 9. Pateikite klientus, kurie nuomai išleido 200 ir daugiau. Nuomai išleistą sumą pateikite stulpelyje „Iš viso“. 
SELECT customer.first_name, customer.last_name, SUM(payment.amount) 'Iš viso'
FROM customer
JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id
HAVING SUM(payment.amount) >= 200;


-- 10. Paskaičiuokite, kiek nuomai išleido klientas, kurio ID yra 15. Nuomai išleistą sumą pateikite stulpelyje „Išleido“. 
SELECT customer.first_name, customer.last_name, SUM(payment.amount) 'Iš viso'
FROM customer
JOIN payment ON customer.customer_id = payment.customer_id
WHERE customer.customer_id = 15;

-- 11. Jums paskambino klientė Helen Harris ir klausia, ar yra filmų, kurių ji dar negrąžino? Jeigu taip, kokie tų filmų pavadinimai?
SELECT customer.first_name, customer.last_name, film.title, rental.return_date
FROM customer
JOIN rental ON customer.customer_id = rental.customer_id 
JOIN film ON film.film_id = rental.inventory_id
WHERE rental.return_date IS NULL AND customer.first_name LIKE "Helen" AND customer.last_name LIKE "Harris";


-- 12. Kokiuose filmuose vaidino aktorė Uma Wood?
SELECT actor.first_name, actor.last_name, film.title
FROM actor
JOIN film_actor ON film_actor.actor_id = actor.actor_id
JOIN film ON film.film_id = film_actor.film_id
WHERE actor.first_name = "Uma" AND actor.last_name = "Wood";


-- 13. Kiek klientė Amy Lopez sumokėjo už filmo Rocky War nuomą?
SELECT customer.first_name, customer.last_name, film.title, SUM(payment.amount)
FROM payment
JOIN customer ON customer.customer_id = payment.customer_id
JOIN rental ON rental.rental_id = payment.rental_id
JOIN inventory ON inventory.inventory_id = rental.inventory_id
JOIN film ON film.film_id = inventory.film_id
WHERE customer.first_name = "Amy" AND customer.last_name = "Lopez" AND film.title = "Rocky War";


-- 14. Pateikite Graikijoje gyvenančių klientų vardą, pavardę ir miesto pavadinimą.
SELECT customer.first_name, customer.last_name, city.city, country.country
FROM customer
JOIN address ON customer.address_id = address.address_id
JOIN city ON city.city_id = address.city_id
JOIN country ON city.country_id = country.country_id
WHERE country.country = "greece";


-- 15. Kiek iš viso kiekvienoje šalyje yra išleidžiama filmų nuomai?
SELECT SUM(payment.amount) AS 'Isleista nuomai',country.country
FROM payment
LEFT JOIN customer ON customer.customer_id=payment.customer_id
LEFT JOIN address ON address.address_id=customer.address_id
LEFT JOIN city ON city.city_id = address.city_id
LEFT JOIN country ON country.country_id = city.country_id
GROUP BY country.country_id 
ORDER BY SUM(payment.amount) DESC;