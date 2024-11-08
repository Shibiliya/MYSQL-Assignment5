USE entri_d42;
CREATE TABLE Country2(
Id INT PRIMARY KEY,
Country_name VARCHAR(100),
Population INT,
Area INT 
);
CREATE TABLE Persons2(
Id INT PRIMARY KEY,
Fname VARCHAR(50),
Lname VARCHAR(50),
Population INT,
Rating DECIMAL(3,1),
Country_id INT,
Country_name VARCHAR(100),
FOREIGN KEY (Country_id) REFERENCES Country(Id)
);

INSERT INTO Country2(Id,Country_name,Population,Area) VALUES
(1,'USA',342000000,9876543),
(2,'Canada',377865780,9987654),
(3,'India',1388765340,8766439),
(4,'UK',6810000,876488),
(5,'Australia',26540000,897564),
(6,'Brazil',211356770,5675446),
(7,'Germany',76537899,353345),
(8,'France',5798700,408669),
(9,'Japan',1254535600,3865680),
(10,'South korea',51346789,100032);

INSERT INTO Persons2(Id,Fname,Lname,Population,Rating,Country_id,Country_name) VALUES
(1,'John','Doe',342000000,4.9,1,'USA'),
(2,'Jane','Smith',377865780,4.7,2,'Canada'),
(3,'Robbert','Brown',1388765340,4.5,3,'India'),
(4,'Emily','Johnson',6810000,3.9,4,'UK'),
(5,'Michael','Williams',26540000,5.0,5,'Australia'),
(6,'Linda','Jones',211356770,4.3,6,'Brazil'),
(7,'James','Miller',76537899,4.6,7,'Germany'),
(8,'Peter','Davis',76537899,4.8,8,'France'),
(9,'David','Bazook',1254535600,3.5,9,'Japan'),
(10,'Mary','Queery',51346789,4.2,10,'South korea');

SELECT LEFT(Country_name,3) AS Country_Abbreviation FROM Country2;

SELECT CONCAT(Fname,' ',Lname) AS Full_name FROM Persons2;

SELECT COUNT( DISTINCT Country_name) AS Unique_Countries FROM Persons2;

SELECT MAX(Population) AS Max_Population FROM Country2;

SELECT MIN(Population) AS Min_Population FROM Persons2;

INSERT INTO persons2 VALUES
(11,'Elizabeth',NULL,132000,4.4,1,'USA'),
(12,'Maltinez',NULL,9075457,3.9,2,'Canada');
 SELECT *FROM  Persons2;
 SELECT COUNT(Lname)  AS Lname_count FROM Persons2;
 
 
 SELECT COUNT(*) AS Total_rows FROM Persons2;
 
 SELECT Population FROM Country2 LIMIT 3;
 
 SELECT *FROM Country2 ORDER BY RAND() LIMIT 3;
 
 SELECT*FROM Persons2 ORDER BY Rating DESC;
 
 SELECT Country_name,SUM(Population) AS Total_population FROM Persons2 GROUP BY Country_name;
 
 SELECT Country_name,SUM(Population) AS Total_population  FROM Persons2 
 GROUP BY Country_name HAVING  SUM(Population) >50000;
 
 SELECT Country_name,COUNT(*) AS Total_persons,AVG(Rating) AS Avg_rating FROM Persons2
 GROUP BY Country_name  HAVING COUNT(*)>2 ORDER BY Avg_rating ASC;
 
 