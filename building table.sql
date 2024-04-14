-- CREATE DATABASE rideshare_project / my_database;
-- USE rideshare_project / my_database;

CREATE TABLE USERS (
USER_ID VARCHAR(50) NOT NULL, 
USERNAME VARCHAR(50) NOT NULL, 
EMAIL VARCHAR(100) NOT NULL, 
PASSWD CHAR(6) NOT NULL, 
PHONE_NUMBER INT NOT NULL, 
ROLE VARCHAR(20) NOT NULL, 
PRIMARY KEY (USER_ID)
);

CREATE TABLE CUSTOMER(
CUSTOMER_ID VARCHAR(50) NOT NULL, 
USER_ID VARCHAR(50) NOT NULL, 
PAYMENT_METHOD VARCHAR (50) NOT NULL, 
PRIMARY KEY (CUSTOMER_ID), 
FOREIGN KEY(USER_ID) REFERENCES USERS(USER_ID)
);

CREATE TABLE DRIVER(
DRIVER_ID VARCHAR(50) NOT NULL,
USER_ID VARCHAR(50) NOT NULL, 
LICENSE_NUMBER VARCHAR(50) NOT NULL, 
DRIVER_RATING INT, 
PRIMARY KEY(DRIVER_ID),
FOREIGN KEY(USER_ID) REFERENCES USERS(USER_ID)
);

CREATE TABLE VEHICLE(
VEHICLE_NUMBER VARCHAR(25) NOT NULL, 
VEHICLE_TYPE VARCHAR(20) NOT NULL, 
NUMBER_OF_MEMBERS INT NOT NULL, 
DRIVER_ID VARCHAR (50),
PRIMARY KEY(VEHICLE_NUMBER),
FOREIGN KEY (DRIVER_ID) REFERENCES DRIVER(DRIVER_ID)
);

CREATE TABLE PAYMENT(
PAYMENT_ID VARCHAR(50) NOT NULL, 
PAYMENT_METHOD VARCHAR(50) NOT NULL, 
FARE INT NOT NULL, 
DATE_OF_RIDE DATE NOT NULL, 
TIME_OF_RIDE TIME NOT NULL, 
CUSTOMER_ID VARCHAR(50) NOT NULL, 
PRIMARY KEY (PAYMENT_ID), 
FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID)
);

CREATE TABLE RIDE(
RIDE_ID VARCHAR(50) NOT NULL, 
START_LOCATION VARCHAR (255) NOT NULL, 
END_LOCATION VARCHAR(255) NOT NULL, 
FARE INT NOT NULL, 
DATE_OF_RIDE DATE NOT NULL, 
TIME_OF_RIDE VARCHAR(100) NOT NULL, 
CUSTOMER_ID VARCHAR(50) NOT NULL, 
DRIVER_ID VARCHAR(50) NOT NULL, 
PRIMARY KEY(RIDE_ID),
FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID), 
FOREIGN KEY(DRIVER_ID) REFERENCES DRIVER(DRIVER_ID)
);

CREATE TABLE ADMIN(
admin_ID varchar(10) not null,
passwd varchar(4) not null,
primary key(admin_id)
);

CREATE TABLE new_user_addition (
    USER_ID VARCHAR(50) NOT NULL,
    EMAIL VARCHAR(100) NOT NULL,
    PHONE_NUMBER INT NOT NULL,
    ROLE VARCHAR(20) NOT NULL,
    REGISTRATION_DATE DATE NOT NULL,
    PRIMARY KEY (USER_ID, REGISTRATION_DATE)
);


-- OPTIONAL :

-- ALTER TABLE users ADD CONSTRAINT check_ten_digit_number
-- CHECK (CHAR_LENGTH (PHONE_NUMBER) = 10 AND PHONE_NUMBER REGEXP '^[®-9]+$');
-- ALTER TABLE users
-- MODIFY COLUMN PHONE_NUMBER VARCHAR(15); -- Adjust the length as needed
