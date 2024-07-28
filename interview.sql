CREATE TABLE products
(
    productID    SERIAL PRIMARY KEY,
    productName  VARCHAR(255) NOT NULL,
    unitsInStock INT          NOT NULL
);

INSERT INTO products (productName, unitsInStock) VALUES
('Product A', 0),
('Product B', 25),
('Product C', 75),
('Product D', 150),
('Product E', 50),
('Product F', 10),
('Product G', 60),
('Product H', 110),
('Product I', 30),
('Product J', 0),
('Product K', 200),
('Product L', 45),
('Product M', 90),
('Product N', 5),
('Product O', 130);

SELECT count(*),
       CASE
           WHEN unitsInStock = 0 THEN 'None'
           WHEN unitsInStock BETWEEN 1 AND 50 THEN 'Low'
           WHEN unitsInStock BETWEEN 51 AND 100 THEN 'Moderate'
           ELSE 'High'
           END AS stockAvailability
FROM products
GROUP BY CASE
             WHEN unitsInStock = 0 THEN 'None'
             WHEN unitsInStock BETWEEN 1 AND 50 THEN 'Low'
             WHEN unitsInStock BETWEEN 51 AND 100 THEN 'Moderate'
             ELSE 'High'
             END;


WITH T1 as (
SELECT *,
       CASE
           WHEN unitsInStock = 0 THEN 'None'
           WHEN unitsInStock BETWEEN 1 AND 50 THEN 'Low'
           WHEN unitsInStock BETWEEN 51 AND 100 THEN 'Moderate'
           ELSE 'High'
           END AS stockAvailability
FROM products)
SELECT count(CASE WHEN stockAvailability in ('None','Low') then 1 end) as lowers_count,
count(CASE WHEN stockAvailability not in ('None','Low') then 1 end) as highers_count FROM T1;
SELECT * FROM products;




-- Further breaks down the rental data by year and month, including Manhattan vs. non-Manhattan counts and percentages.
-- SELECT extract(YEAR  FROM  rt.begin_rental) AS rentalYear,
--        extract( MONTH FROM rt.begin_rental) AS rentalMonth,
--        COUNT(*) AS COUNT_TOTAL,
--        COUNT(CASE WHEN ro.neighbourhood_group IN ('Manhattan') THEN 1 END) AS Manhattan_CNT,
--        COUNT(CASE WHEN ro.neighbourhood_group NOT IN ('Manhattan') THEN 1 END) AS Not_Manhattan_CNT,
--        FORMAT(COUNT(CASE WHEN ro.neighbourhood_group IN ('Manhattan') THEN 1 END) * 1.0 / COUNT(*), 'P') AS Manhattan_PCT,
--        FORMAT(COUNT(CASE WHEN ro.neighbourhood_group NOT IN ('Manhattan') THEN 1 END) * 1.0 / COUNT(*), 'P') AS Non_Manhattan_PCT
-- FROM rooms ro JOIN rentals rt
-- ON ro.id = rt.room_id
-- GROUP BY YEAR(rt.begin_rental), MONTH(rt.begin_rental)
-- ORDER BY YEAR(rt.begin_rental), MONTH(rt.begin_rental);