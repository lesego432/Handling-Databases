-- Students : u25581288 && u25256387

CREATE TABLE Client(
    ClientID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15) NOT NULL,
    ClientType Enum('Buyer','Seller') NOT NULL
);

CREATE TABLE Laptop(
    LaptopID INT PRIMARY KEY AUTO_INCREMENT,
    Model VARCHAR(100) NOT NULL,
    Brand VARCHAR(100) NOT NULL,
    Specs TEXT,
    ConditionType ENUM('New','Pre-Owned') NOT NULL,
    Price DECIMAL(10,2)
);

CREATE TABLE Accessory(
    AccessoryID INT PRIMARY KEY AUTO_INCREMENT,
    AccessoryType VARCHAR(50) NOT NULL,
    Brand VARCHAR(50) NOT NULL
);

CREATE TABLE Transaction(
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    ClientID INT,
    TransactionType ENUM('Sale','Purchase'),
    TransactionDate DATE NOT NULL,
    Amount DECIMAL(10,2),
    FOREIGN KEY(ClientID) REFERENCES Client(ClientID)
);

CREATE TABLE Laptop_Accessory(
    LaptopID INT,
    AccessoryID INT,
    PRIMARY KEY(LaptopID,AccessoryID),
    FOREIGN KEY(LaptopID) REFERENCES Laptop(LaptopID),
    FOREIGN KEY(AccessoryID) REFERENCES Accessory(AccessoryID)
);