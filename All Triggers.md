# Database Triggers

## 1. Calculate Driver Rating Trigger
- **Description**: Calculates the average rating of a driver after each ride and updates the DRIVER table.
- **Trigger Event**: AFTER INSERT ON RIDE
- **Trigger Action**:
    ```sql
    DELIMITER $$
    CREATE TRIGGER calculate_driver_rating
    AFTER INSERT ON RIDE
    FOR EACH ROW
    BEGIN
        DECLARE total_rating INT;
        DECLARE total_rides INT;
        DECLARE avg_rating FLOAT;
        
        SELECT SUM(DRIVER_RATING), COUNT(*) INTO total_rating, total_rides
        FROM RIDE
        WHERE DRIVER_ID = NEW.DRIVER_ID;
        
        SET avg_rating = total_rating / total_rides;
        
        UPDATE DRIVER
        SET DRIVER_RATING = avg_rating
        WHERE DRIVER_ID = NEW.DRIVER_ID;
    END$$
    DELIMITER ;
    ```

## 2. Update Vehicle Count Trigger
- **Description**: Updates the count of vehicles whenever a new vehicle is added or removed.
- **Trigger Event**: AFTER INSERT ON VEHICLE
- **Trigger Action**:
    ```sql
    DELIMITER $$
    CREATE TRIGGER update_vehicle_count
    AFTER INSERT ON VEHICLE
    FOR EACH ROW
    BEGIN
        UPDATE DRIVER
        SET NUMBER_OF_VEHICLES = NUMBER_OF_VEHICLES + 1
        WHERE DRIVER_ID = NEW.DRIVER_ID;
    END$$
    DELIMITER ;
    ```

## 3. Payment Method Check Trigger
- **Description**: Ensures that the payment method specified by the customer is valid.
- **Trigger Event**: BEFORE INSERT ON CUSTOMER
- **Trigger Action**:
    ```sql
    DELIMITER $$
    CREATE TRIGGER payment_method_check
    BEFORE INSERT ON CUSTOMER
    FOR EACH ROW
    BEGIN
        IF NEW.PAYMENT_METHOD NOT IN ('Credit Card', 'Debit Card', 'PayPal') THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid payment method specified!';
        END IF;
    END$$
    DELIMITER ;
    ```

## 4. New User Notification Trigger
- **Description**: Sends a notification to an admin whenever a new user is registered.
- **Trigger Event**: AFTER INSERT ON new_user_addition
- **Trigger Action**:
    ```sql
    DELIMITER $$
    CREATE TRIGGER new_user_notification
    AFTER INSERT ON new_user_addition
    FOR EACH ROW
    BEGIN
        INSERT INTO ADMIN_NOTIFICATIONS (ADMIN_ID, MESSAGE, NOTIFICATION_DATE)
        VALUES ('Admin001', CONCAT('New user registered: ', NEW.USER_ID), NOW());
    END$$
    DELIMITER ;
    ```
    
## 5. Update Payment Trigger
- **Description**: Updates the total payment amount whenever a new payment is made.
- **Trigger Event**: AFTER INSERT ON PAYMENT
- **Trigger Action**:
    ```sql
    DELIMITER $$
    CREATE TRIGGER update_payment_amount
    AFTER INSERT ON PAYMENT
    FOR EACH ROW
    BEGIN
        UPDATE CUSTOMER
        SET TOTAL_PAYMENT = TOTAL_PAYMENT + NEW.FARE
        WHERE CUSTOMER_ID = NEW.CUSTOMER_ID;
    END$$
    DELIMITER ;
    ```

## 6. Vehicle Removal Trigger
- **Description**: Automatically removes the driver's association with a vehicle when it's removed from the database.
- **Trigger Event**: AFTER DELETE ON VEHICLE
- **Trigger Action**:
    ```sql
    DELIMITER $$
    CREATE TRIGGER vehicle_removal
    AFTER DELETE ON VEHICLE
    FOR EACH ROW
    BEGIN
        UPDATE DRIVER
        SET NUMBER_OF_VEHICLES = NUMBER_OF_VEHICLES - 1
        WHERE DRIVER_ID = OLD.DRIVER_ID;
    END$$
    DELIMITER ;
    ```

## 7. Password Encryption Trigger
- **Description**: Encrypts the password before inserting it into the USERS table.
- **Trigger Event**: BEFORE INSERT ON USERS
- **Trigger Action**:
    ```sql
    DELIMITER $$
    CREATE TRIGGER password_encryption
    BEFORE INSERT ON USERS
    FOR EACH ROW
    BEGIN
        SET NEW.PASSWD = MD5(NEW.PASSWD);
    END$$
    DELIMITER ;
    ```

## 8. Ride Fare Check Trigger
- **Description**: Checks if the ride fare is within a specified range before inserting it into the PAYMENT table.
- **Trigger Event**: BEFORE INSERT ON PAYMENT
- **Trigger Action**:
    ```sql
    DELIMITER $$
    CREATE TRIGGER ride_fare_check
    BEFORE INSERT ON PAYMENT
    FOR EACH ROW
    BEGIN
        IF NEW.FARE < 0 OR NEW.FARE > 1000 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Invalid ride fare!';
        END IF;
    END$$
    DELIMITER ;
    ```

## 9. Driver Rating Update Trigger
- **Description**: Updates the driver's average rating whenever a new ride is completed and rated.
- **Trigger Event**: AFTER INSERT ON RIDE
- **Trigger Action**:
    ```sql
    DELIMITER $$
    CREATE TRIGGER update_driver_rating
    AFTER INSERT ON RIDE
    FOR EACH ROW
    BEGIN
        DECLARE total_rating INT;
        DECLARE total_rides INT;
        
        SELECT COUNT(*), SUM(DRIVER_RATING)
        INTO total_rides, total_rating
        FROM RIDE
        WHERE DRIVER_ID = NEW.DRIVER_ID;
        
        IF total_rides > 0 THEN
            UPDATE DRIVER
            SET DRIVER_RATING = total_rating / total_rides
            WHERE DRIVER_ID = NEW.DRIVER_ID;
        END IF;
    END$$
    DELIMITER ;
    ```

## 10. Customer Deletion Trigger
- **Description**: Deletes all associated records of a customer when their account is deleted.
- **Trigger Event**: AFTER DELETE ON CUSTOMER
- **Trigger Action**:
    ```sql
    DELIMITER $$
    CREATE TRIGGER delete_customer_records
    AFTER DELETE ON CUSTOMER
    FOR EACH ROW
    BEGIN
        DELETE FROM PAYMENT WHERE CUSTOMER_ID = OLD.CUSTOMER_ID;
        DELETE FROM RIDE WHERE CUSTOMER_ID = OLD.CUSTOMER_ID;
    END$$
    DELIMITER ;
    ```

## 11. New User Addition Trigger

- **Description**: Keeps track of new users added to the system in the new_user_addition table.
- **Trigger Event**: AFTER INSERT ON USERS
- **Trigger Action**:
    ```sql
    DELIMITER $$
    CREATE TRIGGER add_user_to_new_user_addition
    AFTER INSERT ON USERS
    FOR EACH ROW
    BEGIN
        INSERT INTO new_user_addition (USER_ID, EMAIL, PHONE_NUMBER, ROLE, REGISTRATION_DATE)
        VALUES (NEW.USER_ID, NEW.EMAIL, NEW.PHONE_NUMBER, NEW.ROLE, NOW());
    END$$
    DELIMITER ;
    ```

## 12. Admin Addition Trigger

- **Description**: Adds new users who are administrators to the admin table.
- **Trigger Event**: AFTER INSERT ON USERS
- **Trigger Action**:
    ```sql
    DELIMITER $$
    CREATE TRIGGER add_admin_to_admin_table
    AFTER INSERT ON USERS
    FOR EACH ROW
    BEGIN
        IF NEW.ROLE = 'admin' THEN
            INSERT INTO admin (ADMIN_ID, passwd) VALUES (NEW.USER_ID, NEW.passwd);
        END IF;
    END$$
    DELIMITER ;
    ```
