CREATE TABLE country_stats (
 country VARCHAR(100),
 child_mort INT,
 income INT,
 life_expec INT,
 health INT,
 gdpp INT,
 Trade_Balance INT,
 segment VARCHAR(50)
);

-- Aid priority countries
SELECT * FROM country_stats WHERE segment='High Risk Country';

-- Income vs Life Expectancy
SELECT segment, AVG(income), AVG(life_expec) FROM country_stats GROUP BY segment;

-- Health Critical
SELECT country FROM country_stats WHERE health < 5 AND child_mort > 70;