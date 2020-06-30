CREATE TABLE PASSENGER (
	FName VARCHAR(10) NOT NULL,
	LName VARCHAR(20) NOT NULL,
	Street VARCHAR(30) NOT NULL,
	City VARCHAR(20) NOT NULL,
	State CHAR(2) NOT NULL,
	ZipCode CHAR(5) NOT NULL,
	CellPhone CHAR(12) NOT NULL,
	Email VARCHAR(30) 
);

CREATE TABLE PAYMENT (
	ID CHAR(3) NOT NULL,
	PaymentType VARCHAR(15) NOT NULL,
	CardNum CHAR(12) NOT NULL,
	ExpiryDate CHAR(5) NOT NULL
);

CREATE TABLE DRIVER (
	Name VARCHAR(30) NOT NULL,
	License CHAR(7) NOT NULL,
	Email VARCHAR(30) NOT NULL
);

CREATE TABLE CAR (
	ID CHAR(4) NOT NULL,
	Registration CHAR(10) NOT NULL,
	Make VARCHAR(15) NOT NULL,
	Model VARCHAR(15) NOT NULL,
	Color VARCHAR(10) NOT NULL,
	Type VARCHAR(10) NOT NULL,
	Driver VARCHAR(30) NOT NULL
);

CREATE TABLE TRIP (
	ID CHAR(3) NOT NULL,
	Origin VARCHAR(15) NOT NULL,
	Destination VARCHAR(15) NOT NULL,
	EstTime CHAR(5) NOT NULL,
	Price CHAR(5) NOT NULL
);

CREATE TABLE BOOKING(
	Passenger VARCHAR(30) NOT NULL,
	CarID CHAR(4) NOT NULL,
	TripID CHAR(3) NOT NULL,
	DateTimePicked CHAR(19),
	PaymentMode VARCHAR(5) NOT NULL,
	PaymentID CHAR(3)
);

INSERT INTO PASSENGER
VALUES
('Anne', 'Roberts', '123 Thomas St.', 'Toledo', 'OH', 57556, '801-556-2239', 'AR@test.com'), 
('Robert', 'Schulls', '234 Pines St.', 'Los Angeles', 'CA', 34898, '801-552-2943', 'RoSh@test.com'), 
('John', 'Peters', '345 Star St.', 'Raleigh', 'NC', 79999, '801-393-2230', 'JPet@test.com'), 
('Bryan', 'Brown', '435 Palm St.', 'Miami', 'FL', 30533, '801-933-2320', 'Bryan1@test.com'), 
('Mark', 'Williams', '348 Andrew St.', 'Fort Lauderdale', 'FL', 33318, '801-343-2320', 'mw@test.com'), 
('Carol', 'Phillips', '395 Pine St.', 'Omaha', 'NE', 88899, '801-323-2320', 'carolp@test.com'), 
('Madison', 'Parker', '285 Diamond St.', 'San Diego', 'CA', 99977, '801-493-2203', NULL), 
('Justin', 'Colano', '223 Easy St.', 'Tampa', 'FL', 66798, '801-193-2320', 'JCol@test.com'), 
('Claudia', 'Stevens', '775 Main St.', 'Saint Louis', 'MO', 99878, '801-303-2222', 'ClauS@test.com'), 
('Arthur', 'Hooper', '456 Rose St.', 'Las Vegas', 'NV', 17878, '313-912-2101', 'ahoop@test.com'), 
('Sergio', 'Ryan', '567 Spruce St.', 'Lincoln', 'NE', 87898, '801-228-6729', 'sergior@test.com'), 
('Julia', 'Maverick', '678 Tulip St.', 'Raleigh', 'NC', 79999, '313-888-2497', NULL), 
('Brandon', 'Gordon', '789 First St.', 'Miami', 'FL', 30533, '754-111-1111', 'bgor@test.com'), 
('Maurice', 'Vernon', '49s Mark St.', 'Hollywood', 'FL', 33252, '954-954-9541', NULL);


INSERT INTO PAYMENT
VALUES
(1, 'CreditCard', 546876546546, '2020-07-24', 303), 
(2, 'CreditCard', 865498479879, '2020-01-23', 769), 
(3, 'CreditCard', 64068489999, '2020-07-25', 127), 
(4, 'CreditCard', 540654865761, '2020-08-27', 624), 
(5, 'CreditCard', 464899843110, '2020-10-26', 817), 
(6, 'CreditCard', 648984946554, '2020-11-27', 903), 
(7, 'CreditCard', 654898988788, '2020-03-23', 294), 
(8, 'CreditCard', 654899879788, '2020-04-28', 018);


INSERT INTO DRIVER
VALUES
('John Jones', 4690000, 'jj@test.com'), 
('Albert Peters', 4585000, 'alpet@test.com'), 
('Carl Rowe', 3115000, 'carlr@test.com'), 
('Jose Mejia', 4925000, 'Jose.mejia@test.com'), 
('William Gates', 4650000, 'wg@test.com'), 
('Robert Clark', 4445000, 'rc@test.com'), 
('Joseph Warnock', 9950000, 'jwarn@test.com'), 
('Lisa Stuart', 1475000, 'Lisa2020@test.com'), 
('Peter Rose', 1268645, 'pr@test.com'), 
('Vanessa Rogers', 8865465, 'vrogers@test.com'); 

INSERT INTO CAR
VALUES
(1001, 5608936145, 'Chevrolet', 'Cruze', 'Silver', 'Sedan', 'Lisa Stuart'), 
(1002, 6854968665, 'Ford', 'Fusion', 'Blue', 'Sedan', 'William Gates'), 
(1003, 8887946455, 'Toyota', 'Corolla', 'Silver', 'Sedan', 'Carl Rowe'), 
(1004, 8946546564, 'Honda', 'Civic', 'Black', 'Mini', 'Albert Peters'), 
(1005, 8979806546, 'Honda', 'Accord', 'Green', 'Sport', 'Joseph Warnock'), 
(1006, 9840654064, 'Honda', 'Accord', 'Black', 'Sedan', 'John Jones'), 
(1007, 4066545654, 'Toyota', 'Camry', 'Green', 'Sport', 'Vanessa Rogers'), 
(1008, 8981310366, 'Chevrolet', 'Traverse', 'Navy', 'Sport', 'Jose Mejia'), 
(1009, 7787413154, 'Toyota', 'Corolla', 'Red', 'Mini', 'Peter Rose'), 
(1010, 5086455000, 'Ford', 'Scape', 'Red', 'Sedan', 'Robert Clark'); 


INSERT INTO TRIP
VALUES
(1, 'Fort Lauderdale', 'Sunrise', '20:50:00', 25.00), 
(2, 'Aventura', 'Hollywood', '15:00:00', 15.94), 
(3, 'Hialeah', 'Miami Beach', '1900-01-01 06:00:00', 40.00), 
(4, 'South Beach', 'Downtown Miami', '17:14:00', 27.38), 
(5, 'Pembroke Pines', 'Weston', '15:14:00', 14.09), 
(6, 'Miami Airport', 'Doral', '23:53:00', 18.16), 
(7, 'Kendall', 'Doral', '1900-01-01 08:00:00', 30.01), 
(8, 'Downtown Miami', 'Wynwood', '10:19:00', 22.55), 
(9, 'Brickell', 'Little Havana', '16:00:00', 27.04), 
(10, 'Coral Way', 'Doral', '20:00:00', 25.81), 
(11, 'Dania Beach', 'Hollywood', '10:00:00', 12.79), 
(12, 'Cooper City', 'Miramar', '18:00:00', 23.00), 
(13, 'Miramar', 'Coral Spring', '1900-01-01 01:00:00', 28.24), 
(14, 'Coconut Creek', 'Coral Spring', '18:10:00', 22.22), 
(15, 'Lauderhill', 'Miramar', '1900-01-01 01:10:00', 27.09), 
(16, 'Margate', 'Tamarac', '10:00:00', 15.76), 
(17, 'Davie', 'Fort Lauderdale', '1900-01-01 03:00:00', 30.35);


INSERT INTO BOOKING
VALUES
('Bryan Brown', 1006, 1, '2020-03-15 15:25:00', 'CC', 1.0), 
('Arthur Hooper', 1002, 7, '2020-03-25 20:15:00', 'CC', 2.0), 
('Sergio Ryan', 1001, 10, '2020-04-07 14:00:00', 'CC', 3.0), 
('Brandon Gordon', 1007, 7, '2020-04-09 17:00:00', 'CC', 4.0), 
('Madison Parker', 1010, 6, '2020-04-11 08:00:00', 'Cash', NULL), 
('Mark Williams', 1002, 8, '2020-04-11 15:20:00', 'CC', 5.0), 
('Carol Phillips', 1003, 3, '2020-04-11 23:00:00', 'CC', 6.0), 
('Justin Colano', 1004, 7, '2020-04-22 21:00:00', 'CC', 7.0), 
('Claudia Stevens', 1005, 5, '2020-04-28 13:33:00', 'CC', 8.0), 
('Julia Maverick', 1002, 6, '2020-04-29 15:40:00', 'Cash', NULL), 
('John Peters', 1009, 6, '2020-05-01 07:00:00', 'Cash', NULL), 
('Carol Philips', 1010, 10, '2020-05-01 16:00:00', 'CC', 7.0), 
('Mark Williams', 1011, 6, '2020-05-02 11:00:00', 'Cash', NULL), 
('Anne Roberts', 1006, 15, '2020-05-10 19:00:00', 'Cash', NULL); 


