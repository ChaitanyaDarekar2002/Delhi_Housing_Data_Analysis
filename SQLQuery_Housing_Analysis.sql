select * from Houshing_Price_Clean_dataset


--1. What is the total number of properties in the dataset?

select COUNT(*) as Total_properties from Houshing_Price_Clean_dataset

--2. What is the average property price?

select avg(price) as avg_price from Houshing_Price_Clean_dataset

--3. What is the highest property price?

select MAX(price) as Property_price from Houshing_Price_Clean_dataset

--4. What is the lowest property price?

select MIN(price) as Low_price from Houshing_Price_Clean_dataset

--5. Which property type has the highest number of listings?

select Furnished_status,COUNT(*) as Total_property from Houshing_Price_Clean_dataset
group by Furnished_status

--6. Which are the top 10 localities with the most properties?

select Top 10 Address,count(*) as Total_property  from Houshing_Price_Clean_dataset
group by Address
order by Total_property

--7. Which locality has the highest average property price?

select top 10 Address,max(price) as max_Property_Price  from Houshing_Price_Clean_dataset
group by Address
order by max_Property_Price desc

--8. What is the average property price in each locality?

select top 10 Address,AVG(price) as Avg_Property_Price  from Houshing_Price_Clean_dataset
group by Address
order by Avg_Property_Price desc

--9. How many properties exist for each bedroom category?

select  Bedrooms,count(*) as Total_bedroom from Houshing_Price_Clean_dataset
group by Bedrooms
order by Total_bedroom

--10. What is the average property price based on the number of bedrooms?

select Bedrooms,round(AVG(price),2) as avg_price  from Houshing_Price_Clean_dataset
group by Bedrooms
order by avg_price desc

--11. What is the average area for each property type?

select type_of_building, ROUND(AVG(area),2) as avg_area from Houshing_Price_Clean_dataset
group by type_of_building
order by avg_area desc

--12. What is the distribution of furnishing status?

select Furnished_status,COUNT(*) Distribution from Houshing_Price_Clean_dataset
group by Furnished_status
order by Distribution

--13. What is the distribution of balcony availability?

select Balcony,count(*) as Total_Balcony from Houshing_Price_Clean_dataset
group by Balcony
order by Total_Balcony

--14. What percentage of properties have no balcony?

select count(*) as no_balcony from Houshing_Price_Clean_dataset where Balcony='0'

--15. What is the average number of bathrooms for each bedroom category?

select Bedrooms,Round(avg(Bathrooms),2) as Avg_Bathroom from Houshing_Price_Clean_dataset
group by Bedrooms
order by Avg_Bathroom desc

--16. Which properties have prices above the overall average price?

SELECT *
FROM Houshing_Price_Clean_dataset
WHERE price >
(
    SELECT AVG(price)
    FROM Houshing_Price_Clean_dataset
    );

--17. What are the top 5 most expensive properties?

select top 5 * from Houshing_Price_Clean_dataset order by price desc

--18. Which properties have more than 3 bedrooms?

select Address,Bedrooms,price from Houshing_Price_Clean_dataset where Bedrooms > 3
order by price desc

--19. What is the price per square foot for each property?

select Address,area,(price/area) as price_per_square_foot from Houshing_Price_Clean_dataset

--20. Which locality has the highest price per square foot?

select Address,round(MAX(Price_sqft),2) max_Price_sqft from Houshing_Price_Clean_dataset
group by Address
order by max_Price_sqft desc
