CREATE DATABASE IF NOT EXISTS trip_booking;
 
USE trip_booking;

CREATE TABLE IF NOT EXISTS Managment(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    hotel_id INT,
    appartment_id INT,
    hostel_id INT,
    costumer_id INT,
    reservation_id INT,
    FOREIGN KEY (hotel_id) REFERENCES Hotels(hotel_id) ON DELETE NO ACTION ON UPDATE CASCADE,
    FOREIGN KEY (appartment_id) REFERENCES Appartments(appartment_id),
    FOREIGN KEY (hostel_id) REFERENCES Hostels(hostel_id),
    FOREIGN KEY (costumer_id) REFERENCES Costumers(costumer_id),
    FOREIGN KEY (reservation_id) REFERENCES Reservations(reservation_id)
) ENGINE=InnoDB; 

CREATE TABLE IF NOT EXISTS Hotels(
    hotel_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    hotel_name VARCHAR(30),
    country VARCHAR(30),
    city VARCHAR(30),
    adress VARCHAR(50),
    tel_number VARCHAR(20),
    email VARCHAR(30),
    rating FLOAT,
    room_id INT,
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id) 
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Appartments(
    appartment_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    appartment_name VARCHAR(30),
    country VARCHAR(30),
    city VARCHAR(30),
    adress VARCHAR(50),
    tel_number VARCHAR(20),
    email VARCHAR(30),
    rating FLOAT,
    room_id INT,
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id) 
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Hostels(
    hostel_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    hostel_name VARCHAR(30),
    country VARCHAR(30),
    city VARCHAR(30),
    adress VARCHAR(50),
    tel_number VARCHAR(20),
    email VARCHAR(30),
    rating FLOAT,
    room_id INT,
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id) 
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Rooms(
    room_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    size VARCHAR(10),
    room_description VARCHAR(50),
    price VARCHAR(15),
    furniture VARCHAR(50),
    number_of_persons INT
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Costumers(
    costumer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    date_of_birth VARCHAR(30),
    gender VARCHAR(9),
    email VARCHAR(40),
    password VARCHAR(40),
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Reservations(
    reservation_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    reservation_timestamp TIMESTAMP NOT NULL,
    check_in_date DATE,
    check_out_date DATE,
    check_in_time TIME,
    check_out_time TIME,
    number_of_persons INT NOT NULL,
    costumer_id INT NOT NULL,
    FOREIGN KEY (costumer_id) REFERENCES Costumers(costumer_id)
) ENGINE=InnoDB;


-- Test Values --
--Managment
INSERT INTO Managment(hotel_id, appartment_id, hostel_id, costumer_id, reservation_id) VALUES (1, NULL, NULL, 1, 1);
INSERT INTO Managment(hotel_id, appartment_id, hostel_id, costumer_id, reservation_id) VALUES (NULL, 1, NULL, 2, 2);
INSERT INTO Managment(hotel_id, appartment_id, hostel_id, costumer_id, reservation_id) VALUES (NULL, NULL, 1, 1, 3);

--Hotels
INSERT INTO Hotels(hotel_name, country, city, adress, tel_number, email, rating, room_id) VALUES ("Beach Club", "Austria", "Vienna", "Test 2", "066412345678", "bctest@test.com", 4.2, 1);
INSERT INTO Hotels(hotel_name, country, city, adress, tel_number, email, rating, room_id) VALUES ("Test Hotels", "Germany", "Berlin", "Breitenfurterstrasse 1", "0322112312324", "testhotels@trip_booking.com", 3.6, 2);
INSERT INTO Hotels(hotel_name, country, city, adress, tel_number, email, rating, room_id) VALUES ("Beach Club", "Austria", "Vienna", "Test 2", "066412345678", "bctest@test.com", 4.2, 1);

--Appartments
INSERT INTO Hotels(hotel_name, country, city, adress, tel_number, email, rating, room_id) VALUES ("Beach Appartment", "Austria", "Vienna", "Test 2", "066412345678", "bctest@test.com", 4.2, 1);
INSERT INTO Hotels(hotel_name, country, city, adress, tel_number, email, rating, room_id) VALUES ("Test Appartments", "Germany", "Berlin", "Breitenfurterstrasse 1", "0322112312324", "testhotels@trip_booking.com", 3.6, 2);
INSERT INTO Hotels(hotel_name, country, city, adress, tel_number, email, rating, room_id) VALUES ("Beach Appartment", "Austria", "Vienna", "Test 2", "066412345678", "bctest@test.com", 4.2, 1);

--Hostels
INSERT INTO Hostels(hostel_name, country, city, adress, tel_number, email, rating, room_id) VALUES ("Beach Hostel", "Austria", "Vienna", "Test 2", "066412345678", "bctest@test.com", 4.2, 1);
INSERT INTO Hostels(hostel_name, country, city, adress, tel_number, email, rating, room_id) VALUES ("Test Hostels", "Germany", "Berlin", "Breitenfurterstrasse 1", "0322112312324", "testhotels@trip_booking.com", 3.6, 2);
INSERT INTO Hostels(hostel_name, country, city, adress, tel_number, email, rating, room_id) VALUES ("Beach Hostel", "Austria", "Vienna", "Test 2", "066412345678", "bctest@test.com", 4.2, 1);

--Rooms
INSERT INTO Rooms(size, room_description, price, furniture, number_of_persons) VALUES ("50", "Large. Elegant. Cool", "50", "Chairs, Bed", 2);
INSERT INTO Rooms(size, room_description, price, furniture, number_of_persons) VALUES ("80", "Simple. Fancy. Awesome", "90", "Tables, Wardrobe, Beds, Chairs", 3);

--Costumer 
INSERT INTO Costumers(first_name, last_name, date_of_birth, gender, email, password) VALUES ('Max', 'Mustermann', '21-07-1999', 'male', 'maxmustermann@muster.com', '12345678');
INSERT INTO Costumers(first_name, last_name, date_of_birth, gender, email, password) VALUES ('Henry', 'Gibbs', '23-04-1955', 'male', 'henrygibbd@test.com', 'passwort');

--Reservation
INSERT INTO Reservations(check_in_date, check_out_date, check_in_time, check_out_time, VALUES ('14-05-2019 08:00:00', '14-05-2019', '15-05-2019', '08:00:00', '10:00:00', 1, 1);
INSERT INTO Reservations(reservation_timestamp, check_in_date, check_out_date, check_in_time, check_out_time, number_of_persons, costumer_id) VALUES ('11-05-2019 08:00:00', '12-05-2019', '13-05-2019', '16:30:00', '12:00:00', 1, 1);