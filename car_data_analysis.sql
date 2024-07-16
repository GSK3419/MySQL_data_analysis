create database data_new;
use data_new;

-- RAED DATA --
SELECT * FROM car_dekho; 

-- total cars --
SELECT count(*) as "total_cars" FROM car_dekho;

-- how many cars are available in 2023 --
SELECT count(*) as "cars_2023" FROM car_dekho WHERE year=2023;

-- how many cars are available in 2020 , 2021 and 2022 --
SELECT count(*) "cars_2020" FROM car_dekho WHERE year=2020;
SELECT count(*) "cars_2021" FROM car_dekho WHERE year=2021;
SELECT count(*) "cars_2022" FROM car_dekho WHERE year=2022;
-- group by --
SELECT count(*) FROM car_dekho WHERE year IN(2020,2021,2022) GROUP BY year;

-- count total of all cars by year --
SELECT year, count(*) as "cars" FROM car_dekho GROUP BY year;

-- how many diesel cars will be there in 2020 -- 
SELECT count(*) as "diesel" FROM car_dekho WHERE fuel="Diesel" and year=2020;
-- how many petrol cars will be there in 2020 -- 
SELECT count(*) as "petrol" FROM car_dekho WHERE fuel="petrol" and year=2020;

-- print all the fuel cars (petrol,diesel,CNG) come by all years --
SELECT  year, count(*) as "petrol" FROM car_dekho WHERE fuel="petrol" GROUP BY year;
SELECT  year, count(*) as "diesel" FROM car_dekho WHERE fuel="diesel" GROUP BY year;
SELECT  year, count(*) as "CNG" FROM car_dekho WHERE fuel="CNG" GROUP BY year;

-- in which year more than 100 cars are there --
SELECT year, count(*) as "cars_in_each_yaer" FROM car_dekho GROUP BY year having (count(*)>100) ;

-- all car counts between year 2015 and 2023 --
SELECT count(*) as "cars_2015_2023" FROM car_dekho WHERE year BETWEEN 2015 and 2023;

-- all cars details between year 2015 and 2023 --
SELECT * FROM car_dekho WHERE year BETWEEN 2015 AND 2023;

-- END -- 
