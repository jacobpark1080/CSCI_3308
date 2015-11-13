/*Question 1*/
SELECT name, statecode FROM states;

/*Question 2*/
SELECT * FROM counties WHERE name LIKE 'Prince%' ORDER BY statecode ASC;

/*Quesiton 3*/
SELECT population_2010 FROM states JOIN senators ON states.statecode=senators.statecode WHERE senators.name='Richard Lugar';

/*Question 4*/
SELECT Count(name) AS Number_of_Counties FROM counties WHERE statecode = 'MD';

/*Question 5*/
SELECT states.name FROM states WHERE admitted_to_union = (SELECT Max(admitted_to_union) FROM states);

/*Question 6*/
SELECT name FROM senators WHERE affiliation='D' && senators.name NOT IN (SELECT chairman FROM committees) ORDER BY name ASC;
