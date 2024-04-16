# ABOUT

### The Hey Taxi app project is aimed at providing a comprehensive solution for managing a taxi service. Through the database schema and SQL queries, the project covers various aspects of taxi service management, including user authentication, customer and driver management, vehicle allocation, ride tracking, and payment processing. The database design ensures efficient data organization and retrieval, supporting the smooth operation of the taxi service.

## Database Tables:

1. USERS: Stores information about users, including their ID, username, email, password, phone number, and role.

2. CUSTOMER: Contains details about customers, including their ID, associated user ID, and payment method.

3. DRIVER: Stores driver information, such as driver ID, associated user ID, license number, and driver rating.

4. VEHICLE: Holds data related to vehicles, including vehicle number, type, capacity, and associated driver ID.

5. PAYMENT: Stores payment details for each ride, including payment ID, method, fare, ride date and time, and associated customer ID.

6. RIDE: Contains information about rides, including ride ID, start and end locations, fare, date and time of ride, and associated customer and driver IDs.

7. ADMIN: Stores admin credentials for system management.

8. new_user_addition: Records newly added users along with their details and registration date.

#### These tables together provide a robust foundation for managing the Hey Taxi app, allowing efficient handling of user data, ride details, payments, and administrative tasks.

## Developed By:

1. Shivang Gulati

2. Komal Mathur

## FILES DESCRIPTION

1. [Main File](https://github.com/imsg8/Hey-Taxi/blob/main/app.py) : This is the main file that should be compiled and run in order to view the project.

2. [Report](https://github.com/imsg8/Hey-Taxi/blob/main/DBMS_Lab_End_Sem_Mini-Project.pdf) : This is the report that was submitted.

3. [Triggers](https://github.com/imsg8/Hey-Taxi/blob/main/All%20Triggers.md) : These are the 12 triggers that were implemented on the database.

4. [All Tables](https://github.com/imsg8/Hey-Taxi/blob/main/building%20table.sql) : This is the file that contains all the table creation SQL commands.

5. [Connectivity](https://github.com/imsg8/Hey-Taxi/blob/main/conectivity%20explained%20using%20python.py) : This has code to explain the connectivity.

6. [Table Filling](https://github.com/imsg8/Hey-Taxi/blob/main/populate.sql) : Run this on the database to populate all tables.

7. [SQL Queries](https://github.com/imsg8/Hey-Taxi/blob/main/sql-queries.sql) : These are the set of queries that can be implemented for demonstration.
