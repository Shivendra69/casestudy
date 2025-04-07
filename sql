CREATE DATABASE car_rental_system;
USE car_rental_system;

-- Vehicle Table
CREATE TABLE Vehicle (
    vehicleID INT AUTO_INCREMENT PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    year INT,
    dailyRate DOUBLE,
    status VARCHAR(20),
    passengerCapacity INT,
    engineCapacity DOUBLE
);

-- Customer Table
CREATE TABLE Customer (
    customerID INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    email VARCHAR(100),
    phoneNumber VARCHAR(15)
);

-- Lease Table
CREATE TABLE Lease (
    leaseID INT AUTO_INCREMENT PRIMARY KEY,
    vehicleID INT,
    customerID INT,
    startDate DATE,
    endDate DATE,
    type VARCHAR(20),
    FOREIGN KEY (vehicleID) REFERENCES Vehicle(vehicleID),
    FOREIGN KEY (customerID) REFERENCES Customer(customerID)
);

-- Payment Table
CREATE TABLE Payment (
    paymentID INT AUTO_INCREMENT PRIMARY KEY,
    leaseID INT,
    paymentDate DATE,
    amount DOUBLE,
    FOREIGN KEY (leaseID) REFERENCES Lease(leaseID)
);
