CREATE DATABASE CarRentalSystem;
USE CarRentalSystem;

CREATE TABLE Vehicle (
    vehicleID INT PRIMARY KEY AUTO_INCREMENT,
    make VARCHAR(50),
    model VARCHAR(50),
    year INT,
    dailyRate DOUBLE,
    status ENUM('available', 'notAvailable'),
    passengerCapacity INT,
    engineCapacity DOUBLE
);

CREATE TABLE Customer (
    customerID INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phoneNumber VARCHAR(15) UNIQUE
);

CREATE TABLE Lease (
    leaseID INT PRIMARY KEY AUTO_INCREMENT,
    vehicleID INT,
    customerID INT,
    startDate DATE,
    endDate DATE,
    type ENUM('Daily', 'Monthly'),
    FOREIGN KEY (vehicleID) REFERENCES Vehicle(vehicleID),
    FOREIGN KEY (customerID) REFERENCES Customer(customerID)
);

CREATE TABLE Payment (
    paymentID INT PRIMARY KEY AUTO_INCREMENT,
    leaseID INT,
    paymentDate DATE,
    amount DOUBLE,
    FOREIGN KEY (leaseID) REFERENCES Lease(leaseID)
);