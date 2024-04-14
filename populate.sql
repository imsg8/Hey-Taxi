-- Deleting all existing values from table;
delete from adminn;
delete from payment;
delete from ride;
delete from customer;
delete from vehicle;
delete from driver;
delete from users;
delete from new_user_addition;

-- USERS:
INSERT INTO users VALUES('U1', 'ShivangGulati', 'shivangimsg@gmail.com', 1234, 10101, 'admin');
INSERT INTO users VALUES('U10', 'AaravPatel', 'aarav.patel@yahoo.com', 'passwordABC', 94498, 'customer');
INSERT INTO users VALUES('U11', 'KritiSingh', 'kriti.singh@gmail.com', 'passwordXYZ', 866678, 'customer');
INSERT INTO users VALUES('U12', 'LakshaySharma', 'lakshay.sharma@yahoo.com', 'password123', 71234, 'customer');
INSERT INTO users VALUES('U13', 'MiraYadav', 'mira.yadav@gmail.com', 'password456', 99871, 'customer');
INSERT INTO users VALUES('U14', 'NehaGupta', 'neha.gupta@yahoo.com', 'password789', 855512, 'customer');
INSERT INTO users VALUES('U15', 'OmKhanna', 'om.khanna@gmail.com', 'passwordABC', 94498, 'customer');
INSERT INTO users VALUES('U2', 'KomalMathur', 'komal.mathur@yahoo.com', 1234, 712345, 'admin');
INSERT INTO users VALUES('U3', 'JyotiYadav', 'jyoti.yadav@gmail.com', 'password456', 998765, 'customer');
INSERT INTO users VALUES('U4', 'ChandanKumar', 'chandan.kumar@yahoo.com', 'password789', 855512, 'customer');
INSERT INTO users VALUES('U5', 'DeepikaSingh', 'deepika.singh@gmail.com', 'passwordABC', 944987, 'driver');
INSERT INTO users VALUES('U6', 'FahadKhan', 'fahad.khan@yahoo.com', 'passwordXYZ', 86667, 'driver');
INSERT INTO users VALUES('U7', 'GauravSharma', 'gaurav.sharma@gmail.com', 'password123', 7123459, 'driver');
INSERT INTO users VALUES('U8', 'HarshitaGupta', 'harshita.gupta@yahoo.com', 'password456', 998761, 'driver');
INSERT INTO users VALUES('U9', 'IshaanSingh', 'ishaan.singh@gmail.com', 'password789', 855512, 'driver');

-- CUSTOMER:
INSERT INTO customer VALUES ('C1', 'U10', 'PayPal');
INSERT INTO customer VALUES ('C2', 'U11', 'Credit Card');
INSERT INTO customer VALUES ('C3', 'U12', 'PayPal');
INSERT INTO customer VALUES ('C4', 'U13', 'Credit Card');
INSERT INTO customer VALUES ('C5', 'U14', 'PayPal');
INSERT INTO customer VALUES ('C6', 'U15', 'Credit Card');
INSERT INTO customer VALUES ('C7', 'U3', 'Credit Card');
INSERT INTO customer VALUES ('C8', 'U4', 'PayPal');

-- DRIVER:
INSERT INTO driver VALUES ('D1', 'U5', 'DRIVER0101', 5);
INSERT INTO driver VALUES ('D2', 'U6', 'DRIVER0202', 4);
INSERT INTO driver VALUES ('D3', 'U7', 'DRIVER0303', 3);
INSERT INTO driver VALUES ('D4', 'U8', 'DRIVER0404', 5);
INSERT INTO driver VALUES ('D5', 'U9', 'DRIVER0505', 4);

-- PAYMENT:
INSERT INTO payment VALUES ('P1', 'Credit Card', 25, '2024-04-01', '08:30:00', 'C1');
INSERT INTO payment VALUES ('P10', 'Cash', 38, '2024-04-10', '13:00:00', 'C1');
INSERT INTO payment VALUES ('P11', 'Credit Card', 21, '2024-04-11', '13:30:00', 'C8');
INSERT INTO payment VALUES ('P12', 'Cash', 29, '2024-04-12', '14:00:00', 'C3');
INSERT INTO payment VALUES ('P13', 'Credit Card', 19, '2024-04-13', '14:30:00', 'C7');
INSERT INTO payment VALUES ('P14', 'Cash', 34, '2024-04-14', '15:00:00', 'C4');
INSERT INTO payment VALUES ('P15', 'Credit Card', 23, '2024-04-15', '15:30:00', 'C5');
INSERT INTO payment VALUES ('P16', 'Cash', 31, '2024-04-16', '16:00:00', 'C4');
INSERT INTO payment VALUES ('P17', 'Credit Card', 24, '2024-04-17', '16:30:00', 'C3');
INSERT INTO payment VALUES ('P18', 'Cash', 36, '2024-04-18', '17:00:00', 'C3');
INSERT INTO payment VALUES ('P19', 'Credit Card', 27, '2024-04-19', '17:30:00', 'C4');
INSERT INTO payment VALUES ('P2', 'Cash', 30, '2024-04-02', '09:00:00', 'C1');
INSERT INTO payment VALUES ('P20', 'Cash', 33, '2024-04-20', '18:00:00', 'C2');
INSERT INTO payment VALUES ('P21', 'Credit Card', 20, '2024-04-21', '18:30:00', 'C8');
INSERT INTO payment VALUES ('P22', 'Cash', 27, '2024-04-22', '19:00:00', 'C5');
INSERT INTO payment VALUES ('P23', 'Credit Card', 17, '2024-04-23', '19:30:00', 'C5');
INSERT INTO payment VALUES ('P24', 'Cash', 37, '2024-04-24', '20:00:00', 'C6');
INSERT INTO payment VALUES ('P25', 'Credit Card', 22, '2024-04-25', '20:30:00', 'C1');
INSERT INTO payment VALUES ('P3', 'Credit Card', 20, '2024-04-03', '09:30:00', 'C3');
INSERT INTO payment VALUES ('P4', 'Cash', 35, '2024-04-04', '10:00:00', 'C4');
INSERT INTO payment VALUES ('P5', 'Credit Card', 22, '2024-04-05', '10:30:00', 'C3');
INSERT INTO payment VALUES ('P6', 'Cash', 28, '2024-04-06', '11:00:00', 'C3');
INSERT INTO payment VALUES ('P7', 'Credit Card', 18, '2024-04-07', '11:30:00', 'C8');
INSERT INTO payment VALUES ('P8', 'Cash', 32, '2024-04-08', '12:00:00', 'C8');
INSERT INTO payment VALUES ('P9', 'Credit Card', 26, '2024-04-09', '12:30:00', 'C3');

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