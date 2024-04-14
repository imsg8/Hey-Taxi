-- Deleting all existing values from table;
delete from adminn;
delete from payment;
delete from ride;
delete from customer;
delete from vehicle;
delete from driver;
delete from users;


-- ADMINN:
INSERT INTO adminn (ADMIN_ID, passwd) VALUES ('0402', 'komal');
INSERT INTO adminn (ADMIN_ID, passwd) VALUES ('0810', 'imsg');


-- USERS:
INSERT INTO users VALUES('C1', 'ShivangGulati', 'shivangimsg@gmail.com', 'shivang', 1010101010, 'owner');
INSERT INTO users VALUES('C10', 'AaravPatel', 'aarav.patel@example.com', 'passwordABC', 9449876543, 'employee');
INSERT INTO users VALUES('C11', 'KritiSingh', 'kriti.singh@example.com', 'passwordXYZ', 8666789123, 'manager');
INSERT INTO users VALUES('C12', 'LakshaySharma', 'lakshay.sharma@example.com', 'password123', 7123456789, 'employee');
INSERT INTO users VALUES('C13', 'MiraYadav', 'mira.yadav@example.com', 'password456', 9987654321, 'employee');
INSERT INTO users VALUES('C14', 'NehaGupta', 'neha.gupta@example.com', 'password789', 8555123456, 'manager');
INSERT INTO users VALUES('C15', 'OmKhanna', 'om.khanna@example.com', 'passwordABC', 9449876543, 'employee');
INSERT INTO users VALUES('C2', 'KomalMathur', 'komal.mathur@example.com', 'komal', 7123456789, 'employee');
INSERT INTO users VALUES('C3', 'JyotiYadav', 'jyoti.yadav@example.com', 'password456', 9987654321, 'employee');
INSERT INTO users VALUES('C4', 'ChandanKumar', 'chandan.kumar@example.com', 'password789', 8555123456, 'manager');
INSERT INTO users VALUES('C5', 'DeepikaSingh', 'deepika.singh@example.com', 'passwordABC', 9449876543, 'employee');
INSERT INTO users VALUES('C6', 'FahadKhan', 'fahad.khan@example.com', 'passwordXYZ', 8666789123, 'manager');
INSERT INTO users VALUES('C7', 'GauravSharma', 'gaurav.sharma@example.com', 'password123', 7123456789, 'employee');
INSERT INTO users VALUES('C8', 'HarshitaGupta', 'harshita.gupta@example.com', 'password456', 9987654321, 'employee');
INSERT INTO users VALUES('C9', 'IshaanSingh', 'ishaan.singh@example.com', 'password789', 8555123456, 'manager');


-- CUSTOMER:
INSERT INTO customer VALUES ('C1', 'C1', 'Credit Card');
INSERT INTO customer VALUES ('C10', 'C10', 'PayPal');
INSERT INTO customer VALUES ('C11', 'C11', 'Credit Card');
INSERT INTO customer VALUES ('C12', 'C12', 'PayPal');
INSERT INTO customer VALUES ('C13', 'C13', 'Credit Card');
INSERT INTO customer VALUES ('C14', 'C14', 'PayPal');
INSERT INTO customer VALUES ('C15', 'C15', 'Credit Card');
INSERT INTO customer VALUES ('C2', 'C2', 'PayPal');
INSERT INTO customer VALUES ('C3', 'C3', 'Credit Card');
INSERT INTO customer VALUES ('C4', 'C4', 'PayPal');
INSERT INTO customer VALUES ('C5', 'C5', 'Credit Card');
INSERT INTO customer VALUES ('C6', 'C6', 'PayPal');
INSERT INTO customer VALUES ('C7', 'C7', 'Credit Card');
INSERT INTO customer VALUES ('C8', 'C8', 'PayPal');
INSERT INTO customer VALUES ('C9', 'C9', 'Credit Card');

-- DRIVER:
INSERT INTO driver VALUES ('D1', 'C1', 'DRIVER0101', 5);
INSERT INTO driver VALUES ('D2', 'C2', 'DRIVER0202', 4);
INSERT INTO driver VALUES ('D3', 'C3', 'DRIVER0303', 3);
INSERT INTO driver VALUES ('D4', 'C4', 'DRIVER0404', 5);
INSERT INTO driver VALUES ('D5', 'C5', 'DRIVER0505', 4);

-- PAYMENT:
INSERT INTO payment VALUES ('P1', 'Credit Card', 25, '2024-04-01', '08:30:00', 'C1');
INSERT INTO payment VALUES ('P10', 'Cash', 38, '2024-04-10', '13:00:00', 'C10');
INSERT INTO payment VALUES ('P11', 'Credit Card', 21, '2024-04-11', '13:30:00', 'C11');
INSERT INTO payment VALUES ('P12', 'Cash', 29, '2024-04-12', '14:00:00', 'C12');
INSERT INTO payment VALUES ('P13', 'Credit Card', 19, '2024-04-13', '14:30:00', 'C13');
INSERT INTO payment VALUES ('P14', 'Cash', 34, '2024-04-14', '15:00:00', 'C14');
INSERT INTO payment VALUES ('P15', 'Credit Card', 23, '2024-04-15', '15:30:00', 'C15');
INSERT INTO payment VALUES ('P16', 'Cash', 31, '2024-04-16', '16:00:00', 'C1');
INSERT INTO payment VALUES ('P17', 'Credit Card', 24, '2024-04-17', '16:30:00', 'C2');
INSERT INTO payment VALUES ('P18', 'Cash', 36, '2024-04-18', '17:00:00', 'C3');
INSERT INTO payment VALUES ('P19', 'Credit Card', 27, '2024-04-19', '17:30:00', 'C4');
INSERT INTO payment VALUES ('P2', 'Cash', 30, '2024-04-02', '09:00:00', 'C2');
INSERT INTO payment VALUES ('P20', 'Cash', 33, '2024-04-20', '18:00:00', 'C5');
INSERT INTO payment VALUES ('P21', 'Credit Card', 20, '2024-04-21', '18:30:00', 'C6');
INSERT INTO payment VALUES ('P22', 'Cash', 27, '2024-04-22', '19:00:00', 'C7');
INSERT INTO payment VALUES ('P23', 'Credit Card', 17, '2024-04-23', '19:30:00', 'C8');
INSERT INTO payment VALUES ('P24', 'Cash', 37, '2024-04-24', '20:00:00', 'C9');
INSERT INTO payment VALUES ('P25', 'Credit Card', 22, '2024-04-25', '20:30:00', 'C10');
INSERT INTO payment VALUES ('P3', 'Credit Card', 20, '2024-04-03', '09:30:00', 'C3');
INSERT INTO payment VALUES ('P4', 'Cash', 35, '2024-04-04', '10:00:00', 'C4');
INSERT INTO payment VALUES ('P5', 'Credit Card', 22, '2024-04-05', '10:30:00', 'C5');
INSERT INTO payment VALUES ('P6', 'Cash', 28, '2024-04-06', '11:00:00', 'C6');
INSERT INTO payment VALUES ('P7', 'Credit Card', 18, '2024-04-07', '11:30:00', 'C7');
INSERT INTO payment VALUES ('P8', 'Cash', 32, '2024-04-08', '12:00:00', 'C8');
INSERT INTO payment VALUES ('P9', 'Credit Card', 26, '2024-04-09', '12:30:00', 'C9');

-- RIDE:
INSERT INTO ride VALUES ('R1', 'Location A', 'Location B', 25, '2024-04-01', '08:30:00', 'C1', 'D1');
INSERT INTO ride VALUES ('R10', 'Location T', 'Location U', 33, '2024-04-20', '18:00:00', 'C5', 'D5');
INSERT INTO ride VALUES ('R11', 'Location Z', 'Location A', 25, '2024-04-26', '08:30:00', 'C1', 'D1');
INSERT INTO ride VALUES ('R12', 'Location A', 'Location B', 30, '2024-04-27', '09:00:00', 'C2', 'D2');
INSERT INTO ride VALUES ('R13', 'Location B', 'Location C', 20, '2024-04-28', '09:30:00', 'C3', 'D3');
INSERT INTO ride VALUES ('R14', 'Location C', 'Location D', 35, '2024-04-29', '10:00:00', 'C4', 'D4');
INSERT INTO ride VALUES ('R15', 'Location D', 'Location E', 22, '2024-04-30', '10:30:00', 'C5', 'D5');
INSERT INTO ride VALUES ('R16', 'Location O', 'Location P', 31, '2024-05-11', '16:00:00', 'C1', 'D1');
INSERT INTO ride VALUES ('R17', 'Location P', 'Location Q', 24, '2024-05-12', '16:30:00', 'C2', 'D2');
INSERT INTO ride VALUES ('R18', 'Location Q', 'Location R', 36, '2024-05-13', '17:00:00', 'C3', 'D3');
INSERT INTO ride VALUES ('R19', 'Location R', 'Location S', 27, '2024-05-14', '17:30:00', 'C4', 'D4');
INSERT INTO ride VALUES ('R2', 'Location B', 'Location C', 30, '2024-04-02', '09:00:00', 'C2', 'D2');
INSERT INTO ride VALUES ('R20', 'Location S', 'Location T', 33, '2024-05-15', '18:00:00', 'C5', 'D5');
INSERT INTO ride VALUES ('R3', 'Location C', 'Location D', 20, '2024-04-03', '09:30:00', 'C3', 'D3');
INSERT INTO ride VALUES ('R4', 'Location D', 'Location E', 35, '2024-04-04', '10:00:00', 'C4', 'D4');
INSERT INTO ride VALUES ('R5', 'Location E', 'Location F', 22, '2024-04-05', '10:30:00', 'C5', 'D5');
INSERT INTO ride VALUES ('R6', 'Location P', 'Location Q', 31, '2024-04-16', '16:00:00', 'C1', 'D1');
INSERT INTO ride VALUES ('R7', 'Location Q', 'Location R', 24, '2024-04-17', '16:30:00', 'C2', 'D2');
INSERT INTO ride VALUES ('R8', 'Location R', 'Location S', 36, '2024-04-18', '17:00:00', 'C3', 'D3');
INSERT INTO ride VALUES ('R9', 'Location S', 'Location T', 27, '2024-04-19', '17:30:00', 'C4', 'D4');


-- VEHICLE:
INSERT INTO vehicle VALUES ('V1', 'Sedan', 4, 'D1');
INSERT INTO vehicle VALUES ('V10', 'Truck', 3, 'D5');
INSERT INTO vehicle VALUES ('V11', 'SUV', 7, 'D1');
INSERT INTO vehicle VALUES ('V12', 'Sedan', 4, 'D2');
INSERT INTO vehicle VALUES ('V13', 'Van', 8, 'D3');
INSERT INTO vehicle VALUES ('V14', 'Hatchback', 5, 'D4');
INSERT INTO vehicle VALUES ('V15', 'Truck', 3, 'D5');
INSERT INTO vehicle VALUES ('V16', 'SUV', 6, 'D1');
INSERT INTO vehicle VALUES ('V17', 'Sedan', 4, 'D2');
INSERT INTO vehicle VALUES ('V18', 'Van', 8, 'D3');
INSERT INTO vehicle VALUES ('V19', 'Hatchback', 5, 'D4');
INSERT INTO vehicle VALUES ('V2', 'SUV', 7, 'D2');
INSERT INTO vehicle VALUES ('V20', 'Truck', 3, 'D5');
INSERT INTO vehicle VALUES ('V3', 'Van', 8, 'D3');
INSERT INTO vehicle VALUES ('V4', 'Hatchback', 5, 'D4');
INSERT INTO vehicle VALUES ('V5', 'Truck', 3, 'D5');
INSERT INTO vehicle VALUES ('V6', 'SUV', 6, 'D1');
INSERT INTO vehicle VALUES ('V7', 'Sedan', 4, 'D2');
INSERT INTO vehicle VALUES ('V8', 'Van', 8, 'D3');
INSERT INTO vehicle VALUES ('V9', 'Hatchback', 5, 'D4');
