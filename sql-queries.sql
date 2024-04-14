-- Query 1: Retrieve all usernames and emails of users who are managers
SELECT USERNAME, EMAIL
FROM USERS
WHERE ROLE = 'manager';

-- Query 2: Count the number of rides each driver has completed
SELECT DRIVER_ID, COUNT(*) AS Total_Rides
FROM RIDE
GROUP BY DRIVER_ID;

-- Query 3: Find the average fare for rides completed on a specific date
SELECT AVG(FARE) AS Average_Fare
FROM RIDE
WHERE DATE_OF_RIDE = '2024-04-14';

-- Query 4: List the vehicle types and their corresponding driver usernames
SELECT VEHICLE.VEHICLE_TYPE, USERS.USERNAME AS Driver_Name
FROM VEHICLE
JOIN DRIVER ON VEHICLE.DRIVER_ID = DRIVER.DRIVER_ID
JOIN USERS ON DRIVER.USER_ID = USERS.USER_ID;

-- Query 5: Calculate the total fare earned on a specific date
SELECT SUM(FARE) AS Total_Fare_Earned
FROM PAYMENT
WHERE DATE_OF_RIDE = '2024-04-14';

-- Query 6: Find the usernames and emails of users who have not made any rides
SELECT USERNAME, EMAIL
FROM USERS
LEFT JOIN CUSTOMER ON USERS.USER_ID = CUSTOMER.USER_ID
WHERE CUSTOMER.USER_ID IS NULL;

-- Query 7: List the drivers and their ratings, ordered by highest rating first
SELECT USERS.USERNAME AS Driver_Name, DRIVER.DRIVER_RATING
FROM DRIVER
JOIN USERS ON DRIVER.USER_ID = USERS.USER_ID
ORDER BY DRIVER_RATING DESC;

-- Query 8: Find the total number of customers who have used each payment method
SELECT PAYMENT_METHOD, COUNT(*) AS Total_Customers
FROM CUSTOMER
GROUP BY PAYMENT_METHOD;

-- Query 9: Calculate the total number of rides completed by each customer
SELECT CUSTOMER_ID, COUNT(*) AS Total_Rides
FROM RIDE GROUP BY CUSTOMER_ID;

-- Query 10: List the vehicle numbers and their types along with the corresponding driver names and ratings
SELECT VEHICLE.VEHICLE_NUMBER, VEHICLE.VEHICLE_TYPE, USERS.USERNAME AS Driver_Name, DRIVER.DRIVER_RATING
FROM VEHICLE
JOIN DRIVER ON VEHICLE.DRIVER_ID = DRIVER.DRIVER_ID
JOIN USERS ON DRIVER.USER_ID = USERS.USER_ID;