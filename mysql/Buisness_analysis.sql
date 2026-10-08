CREATE DATABASE zomato_analysis;
USE zomato_analysis;
SELECT DATABASE();
SHOW TABLES;

SHOW TABLES;

DESCRIBE zomato_cleaned;

-- Which cities have the largest restaurant markets, and how do their average ratings compare?


CREATE VIEW vw_city_restaurant_analysis AS
SELECT city , 
COUNT(Restaurant_ID) AS restaurant_count ,
ROUND(AVG(Aggregate_rating),2) AS average_rating
FROM zomato_cleaned 
GROUP BY city ;


SELECT *
FROM vw_city_restaurant_analysis
ORDER BY restaurant_count DESC
LIMIT 10;

/* New Delhi has by far the largest restaurant market, with 5,473 restaurants,
 followed by Gurgaon (1,118) and Noida (1,080). However, restaurant count and average rating vary considerably across cities,
 and cities with very small restaurant counts should be interpreted cautiously. */
 
 
 -- Which cities have at least 10 restaurants and the highest average ratings?
 
 CREATE VIEW vw_city_rating_analysis AS
 SELECT city ,
 COUNT(Restaurant_ID) AS restaurant_count,
 ROUND(AVG(Aggregate_rating),2) AS average_rating
 FROM zomato_cleaned
 GROUP BY city 
 HAVING restaurant_count >= 10 ;
 
 SELECT *
FROM vw_city_rating_analysis
ORDER BY average_rating DESC
LIMIT 10;
 
 /* The cities shown have relatively high average ratings among cities with at least 10 restaurants in this dataset.
 However, even 10–20 restaurants is a much smaller sample 
 than New Delhi's 5,473, so these averages should be presented with their restaurant counts rather than treated as directly equivalent market-wide evidence.*/
 
 
 -- How are restaurants distributed across different price ranges, and how does the average rating change with price range?
 
  CREATE VIEW vw_price_range_analysis AS
  SELECT Price_range ,
  COUNT(Restaurant_ID) AS restaurant_count,
  ROUND(AVG(Aggregate_rating),2) AS average_rating 
  FROM zomato_cleaned
  GROUP BY Price_range ;
  
SELECT *
FROM vw_price_range_analysis
ORDER BY Price_range;

 /* 
 
 There is a clear association in this dataset:
- Price range 1 has the largest number of restaurants but the lowest average rating.
- As price range increases, average rating also increases.
- Price range 4 has the highest average rating, but only 586 restaurants. */


 -- Which price range receives the highest average number of votes per restaurant?
 
 CREATE VIEW vw_price_range_engagement AS 
 SELECT Price_range ,
 AVG(Votes)  AS average_votes 
 FROM zomato_cleaned 
 GROUP BY price_range ;
   
   
SELECT *
FROM vw_price_range_engagement
ORDER BY average_votes DESC ;


/* 
Price range 3 has the highest average customer engagement, with about 444 votes per restaurant, followed by price range 4 with about 369 votes. */


-- How does online delivery availability relate to restaurant ratings and customer engagement?


CREATE VIEW vw_online_delivery_analysis AS
SELECT Has_Online_delivery , 
COUNT(Restaurant_ID) AS restaurant_count,
ROUND(AVG(Aggregate_rating),2) AS average_rating,
ROUND(AVG(Votes),2) AS average_votes
FROM zomato_cleaned 
GROUP BY Has_Online_delivery;

SELECT *
FROM vw_online_delivery_analysis;

/* Restaurants offering online delivery have a higher average rating (3.25 vs 2.47) 
and higher average customer engagement (211 vs 138 votes) than restaurants without online delivery.*/



-- How does table-booking availability relate to restaurant ratings and customer engagement?

CREATE VIEW vw_table_booking_analysis AS 
SELECT Has_Table_booking,
ROUND(AVG(Aggregate_rating),2) AS average_rating,
ROUND(AVG(Votes),2) AS average_votes 
FROM zomato_cleaned 
GROUP BY Has_Table_booking;

SELECT * FROM vw_table_booking_analysis;


/*Restaurants offering table booking have higher average ratings (3.44 vs. 2.56)
 and higher average customer engagement (353.11 vs. 129.84 votes) than restaurants without table booking.*/
 
 
 -- Which cuisines have the highest average ratings, while having a meaningful number of restaurants?
 
 CREATE VIEW vw_cuisine_rating_analysis AS 
 SELECT Cuisines,
 COUNT(Restaurant_ID) AS restaurant_count,
 ROUND(AVG(Aggregate_rating),2) AS average_rating
 FROM zomato_cleaned 
 GROUP BY Cuisines 
 HAVING restaurant_count >=20;
 
 
 SELECT * FROM vw_cuisine_rating_analysis 
 ORDER BY average_rating DESC
 LIMIT 10;
 
 /* Among cuisine categories with at least 20 restaurants, American and Italian categories have the highest average ratings in this dataset. */
 

-- Which cuisine categories receive the highest average number of votes per restaurant, considering only categories with at least 20 restaurants?
 
 CREATE VIEW vw_cuisine_engagement_analysis AS
 SELECT Cuisines ,
 COUNT(Restaurant_ID) AS restaurant_count,
 ROUND(AVG(Votes),2) AS average_votes 
 FROM zomato_cleaned 
 GROUP BY Cuisines
 HAVING restaurant_count >= 20;
 
 SELECT * FROM vw_cuisine_engagement_analysis
 ORDER BY average_votes DESC 
 LIMIT 10;
 
 
 /* Among cuisine categories with at least 20 restaurants
 , North Indian, Continental has the highest average customer engagement, 
 with about 384 votes per restaurant. Italian follows with about 274 votes per restaurant. */
 
 
 
 -- Which cities have the highest average customer engagement, while having at least 10 restaurants?
 
 CREATE VIEW vw_city_engagement_analysis AS 
 SELECT City,
 COUNT(Restaurant_ID) AS restaurant_count,
 ROUND(AVG(Votes),2) AS average_votes
 FROM zomato_cleaned 
 GROUP BY City
 HAVING restaurant_count >= 10;
 
 
 SELECT * 
 FROM vw_city_engagement_analysis
 ORDER BY average_votes DESC
 LIMIT 10;
 
 /* Among cities with at least 10 restaurants, Bangalore has the highest average customer engagement 
 at 2,805.75 votes per restaurant, followed by Kolkata and Mumbai. */ 
 
 -- How does online delivery adoption vary across different price ranges?
 
 
 CREATE VIEW vw_delivery_by_price_range AS
 SELECT Price_range,
 COUNT(Restaurant_ID) AS total_restaurants,
 SUM(
 CASE
 WHEN Has_Online_delivery = 'Yes' THEN 1 
 ELSE 0
 END) AS delivery_restaurants ,
 ROUND(
 SUM(
 CASE 
 WHEN Has_Online_delivery = 'Yes' THEN 1 ELSE 0
 END)*100 / COUNT(Restaurant_ID),2) AS delivery_adoption_pct
 FROM zomato_cleaned 
 GROUP BY Price_range;
 
 
 SELECT *
 FROM vw_delivery_by_price_range
 ORDER BY Price_range;
 
 /* Price Range 2 has the highest online-delivery adoption at 41.31%, while Price Range 4 has the lowest at 9.04%.*/ 
 
 
 -- How does table-booking adoption vary across different price ranges?
 
 CREATE VIEW vw_table_booking_by_price_range AS 
 SELECT Price_range,
 COUNT(Restaurant_ID) AS total_restaurants , 
 SUM(
 CASE WHEN Has_Table_booking = 'Yes' THEN 1 ELSE 0 END) AS table_booking_restaurants ,
 ROUND(SUM( 
 CASE WHEN Has_Table_booking = 'Yes' THEN 1 ELSE 0 END )*100 / COUNT(Restaurant_ID),2) AS table_booking_pct
 FROM zomato_cleaned
 GROUP BY Price_range;
 
 SELECT * 
 FROM vw_table_booking_by_price_range
 ORDER BY Price_range;
 
 /* Table-booking adoption increases substantially with higher price ranges. Price Range 4 has the highest adoption at 46.76%, 
 closely followed by Price Range 3 at 45.74%, while Price Range 1 has almost no table-booking adoption at 0.02%.*/
 
 
 -- Which restaurants can be considered high-performing based on both customer ratings and customer engagement?
 
 
CREATE VIEW vw_restaurant_performance AS
SELECT 
Restaurant_ID,
Restaurant_Name,
City,
Price_range,
Aggregate_rating,
Votes,
CASE WHEN Aggregate_rating >= 4.0 AND Votes >= 100 THEN 'High Performing'
WHEN Aggregate_rating >= 4.0 AND Votes < 100 THEN 'High Rated - Low Engagement'
WHEN Aggregate_rating < 4.0 AND Votes >= 100 THEN 'High Engagement - Lower Rating'
ELSE 'Lower Rating - Lower Engagement'
END AS performance_segment
FROM zomato_cleaned;


SELECT
performance_segment,
COUNT(*) AS restaurant_count
FROM vw_restaurant_performance
GROUP BY performance_segment
ORDER BY restaurant_count DESC;

/* There are 1,158 high-performing restaurants in the dataset.
The largest segment is Lower Rating - Lower Engagement, with 6,503 restaurants, while 1,668 restaurants have high engagement despite having ratings below 4.0.*/


