CREATE DATABASE IF NOT EXISTS trip_booking;
 
USE trip_booking;

CREATE TABLE IF NOT EXISTS Managment(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    managment_hotel_id INT,
    appartment_id INT,
    hostel_id INT,
    costumer_id INT,
    reservation_id INT,
    FOREIGN KEY (managment_hotel_id) REFERENCES Hotels(hotel_id)
) ENGINE=InnoDB; 

CREATE TABLE IF NOT EXISTS Hotels(
    hotel_id INT PRIMARY KEY,
    hotel_name VARCHAR(30),
    country VARCHAR(30),
    city VARCHAR(30),
    adress VARCHAR(50),
    tel_number VARCHAR(20),
    email VARCHAR(30),
    rating FLOAT,
    room_id INT
) ENGINE=InnoDB;

