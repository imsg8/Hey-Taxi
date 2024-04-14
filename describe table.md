DATABASE -> my_database (HOSTED ON LOCAL HOST): 
+-----------------------+
| Tables_in_my_database |
+-----------------------+
| adminn                |
| CUSTOMER              |
| DRIVER                |
| PAYMENT               |
| RIDE                  |
| users                 |
| VEHICLE               |
+-----------------------+


ADMINN RELATION:
+----------+--------+
| ADMIN_ID | passwd |
+----------+--------+
| 0402     | komal  |
| 0810     | imsg   |
+----------+--------+


CUSTOMER RELATION:
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| CUSTOMER_ID    | varchar(50) | NO   | PRI | NULL    |       |
| USER_ID        | varchar(50) | NO   | MUL | NULL    |       |
| PAYMENT_METHOD | varchar(50) | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+

DRIVER RELATION:
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| DRIVER_ID      | varchar(50) | NO   | PRI | NULL    |       |
| USER_ID        | varchar(50) | NO   | MUL | NULL    |       |
| LICENSE_NUMBER | varchar(50) | NO   |     | NULL    |       |
| DRIVER_RATING  | int         | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+

PAYMENT RELATION:
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| PAYMENT_ID     | varchar(50) | NO   | PRI | NULL    |       |
| PAYMENT_METHOD | varchar(50) | NO   |     | NULL    |       |
| FARE           | int         | NO   |     | NULL    |       |
| DATE_OF_RIDE   | date        | NO   |     | NULL    |       |
| TIME_OF_RIDE   | time        | NO   |     | NULL    |       |
| CUSTOMER_ID    | varchar(50) | YES  | MUL | NULL    |       |
+----------------+-------------+------+-----+---------+-------+

RIDE RELATION:
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| RIDE_ID        | varchar(50)  | NO   | PRI | NULL    |       |
| START_LOCATION | varchar(255) | NO   |     | NULL    |       |
| END_LOCATION   | varchar(255) | NO   |     | NULL    |       |
| FARE           | int          | NO   |     | NULL    |       |
| DATE_OF_RIDE   | date         | NO   |     | NULL    |       |
| TIME_OF_RIDE   | varchar(100) | NO   |     | NULL    |       |
| CUSTOMER_ID    | varchar(50)  | YES  | MUL | NULL    |       |
| DRIVER_ID      | varchar(50)  | YES  | MUL | NULL    |       |
+----------------+--------------+------+-----+---------+-------+

USERS RELATION:
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| USER_ID      | varchar(50)   | NO   | PRI | NULL    |       |
| USERNAME     | varchar(50)   | NO   |     | NULL    |       |
| EMAIL        | varchar(100)  | NO   |     | NULL    |       |
| passwd       | varchar(20)   | YES  |     | NULL    |       |
| phone_number | decimal(10,0) | YES  |     | NULL    |       |
| ROLE         | varchar(20)   | NO   |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+

VEHICLE RELATION:
+-------------------+-------------+------+-----+---------+-------+
| Field             | Type        | Null | Key | Default | Extra |
+-------------------+-------------+------+-----+---------+-------+
| VEHICLE_NUMBER    | varchar(25) | NO   | PRI | NULL    |       |
| VEHICLE_TYPE      | varchar(20) | NO   |     | NULL    |       |
| NUMBER_OF_MEMBERS | int         | NO   |     | NULL    |       |
| DRIVER_ID         | varchar(50) | YES  | MUL | NULL    |       |
+-------------------+-------------+------+-----+---------+-------+

