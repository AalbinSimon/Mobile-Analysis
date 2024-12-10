create schema Project;
use Project;
select * from mobile;
-- 1. Check mobile features and price list--
select phone_name , price from mobile ;
-- 2. Find out the price of five expensive phones--
select * from mobile;
select phone_name , price from mobile order by price desc limit 5;
-- 3. Find out the 5 most cheapest phones--
select phone_name , price  from mobile order by price asc limit 5;
-- 4. List of top 5 samsung phones with price and all features --
select * from mobile where Brands ='Samsung' order by price desc limit 5;
-- 5. Must have android phone list then top 5 High price android phones --
select * from mobile where Operating_System_Type = 'Android' order by price desc limit 5;
-- 6. Must have android phone list then top 5 lower price android phones --
select * from mobile where Operating_System_Type = 'Android' order by price asc limit 5;
-- 7. Must have IOS phone list then top 5 High price IOS phones --
select * from mobile where Operating_System_Type = 'IOS' order by price desc limit 5;
-- 8. Must have IOS phone list then top 5 lower price IOS phones --
select * from mobile where Operating_System_Type = 'IOS' order by price asc limit 5;
-- 9. Write a query which phones suppoert 5g and also top 5 phones with 5g support --
select * from mobile;
select * from mobile where 5G_Availability = 'Yes' order by price desc limit 5;
-- Total price of all mobile is to be found with brand name -- 
select brands, sum(price) as 'Total Price' from mobile group by brands ;
