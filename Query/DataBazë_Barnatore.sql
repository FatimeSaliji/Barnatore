-- query 1
Select * from punëtorët where id='3';

-- query 2
select * from barnat where Emri LIKE 'c%';

-- query 3
SELECT   Kategoria
FROM    Porosia
WHERE   Totali>11000;

-- query 4
SELECT Emri
FROM  Pacienti
WHERE  Mosha BETWEEN '30' AND '60';

-- query 5
SELECT Emri_i_barnave
FROM   Recepti
WHERE  Emri_i_barnave   IN  ('Paracetamoll');

-- query 6
SELECT max(Rroga) As 'Rroga me e madhe'  
FROM punëtorët;

-- query 7
SELECT * FROM Recepti
WHERE Data='2024-03-01';

-- query 8
SELECT * FROM kategoria
WHERE Emri='Antibiotik' AND Sasia='80';

-- query 9
SELECT SUM(Totali)
FROM Porosia;

-- query 10
SELECT Emri_i_barnave, Mënyra_e_përdorimit FROM Recepti;








