### The Hey Taxi app project is aimed at providing a comprehensive solution for managing a taxi service. Through the database schema and SQL queries, the project covers various aspects of taxi service management, including user authentication, customer and driver management, vehicle allocation, ride tracking, and payment processing. The database design ensures efficient data organization and retrieval, supporting the smooth operation of the taxi service.

Database Tables:

1. USERS: Stores information about users, including their ID, username, email, password, phone number, and role.

2. CUSTOMER: Contains details about customers, including their ID, associated user ID, and payment method.

3. DRIVER: Stores driver information, such as driver ID, associated user ID, license number, and driver rating.

4. VEHICLE: Holds data related to vehicles, including vehicle number, type, capacity, and associated driver ID.

5. PAYMENT: Stores payment details for each ride, including payment ID, method, fare, ride date and time, and associated customer ID.

6. RIDE: Contains information about rides, including ride ID, start and end locations, fare, date and time of ride, and associated customer and driver IDs.

7. ADMIN: Stores admin credentials for system management.

8. new_user_addition: Records newly added users along with their details and registration date.

##### These tables together provide a robust foundation for managing the Hey Taxi app, allowing efficient handling of user data, ride details, payments, and administrative tasks.

Developed By:

1. Shivang Gulati

2. Komal Mathur