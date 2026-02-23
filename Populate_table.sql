-- Students: u25581288

USE u25581288_dextech;

INSERT INTO Client (Name, Email, PhoneNumber, ClientType) VALUES
('Tebello Mohohoma', 'tebellomohohoma03@gmail.com', '0612632196', 'Buyer'),
('Lerato Mokoena', 'lerato.m@gmail.com', '0723456789', 'Buyer'),
('Thabo Nkosi', 'thabo.nkosi@gmail.com', '0812345678', 'Seller'),
('Naledi Khumalo', 'naledi.k@gmail.com', '0734567890', 'Buyer'),
('Sipho Dlamini', 'sipho.d@gmail.com', '0745678901', 'Buyer'),
('Ayanda Zulu', 'ayanda.z@gmail.com', '0823456789', 'Seller'),
('Kabelo Ndlovu', 'kabelo.n@gmail.com', '0834567890', 'Buyer'),
('Boitumelo Seema', 'boitumelo.s@gmail.com', '0845678901', 'Buyer'),
('Neo Molefe', 'neo.m@gmail.com', '0712345678', 'Buyer'),
('Refilwe Tau', 'refilwe.t@gmail.com', '0798765432', 'Seller'),
('Mpho Sithole', 'mpho.s@gmail.com', '0781234567', 'Buyer'),
('Tshepo Radebe', 'tshepo.r@gmail.com', '0765432109', 'Buyer'),
('Karabo Maseko', 'karabo.m@gmail.com', '0754321098', 'Seller'),
('Nokuthula Mthembu', 'noku.m@gmail.com', '0743210987', 'Buyer'),
('Lungile Hadebe', 'lungile.h@gmail.com', '0732109876', 'Buyer'),
('Zanele Buthelezi', 'zanele.b@gmail.com', '0721098765', 'Seller'),
('Palesa Mabena', 'palesa.m@gmail.com', '0710987654', 'Buyer'),
('Sibusiso Mhlongo', 'sibusiso.m@gmail.com', '0791122334', 'Buyer'),
('Nandi Cele', 'nandi.c@gmail.com', '0789988776', 'Seller'),
('Tumelo Phiri', 'tumelo.p@gmail.com', '0776655443', 'Buyer');

INSERT INTO Laptop (Model, Brand, Specs, ConditionType, Price) VALUES
('ThinkPad X1', 'Lenovo', '16GB RAM, 512GB SSD', 'New', 12000),
('Inspiron 15', 'Dell', '8GB RAM, 256GB SSD', 'Pre-Owned', 5500),
('MacBook Air M1', 'Apple', '8GB RAM, 256GB SSD', 'New', 15000),
('EliteBook 840', 'HP', '16GB RAM, 512GB SSD', 'Pre-Owned', 8000),
('Aspire 5', 'Acer', '8GB RAM, 1TB HDD', 'New', 6000),
('VivoBook 14', 'Asus', '12GB RAM, 512GB SSD', 'New', 7500),
('Latitude 7490', 'Dell', '16GB RAM, 512GB SSD', 'Pre-Owned', 7000),
('Pavilion 15', 'HP', '8GB RAM, 512GB SSD', 'New', 6500),
('IdeaPad 3', 'Lenovo', '8GB RAM, 256GB SSD', 'New', 5800),
('MacBook Pro 13', 'Apple', '16GB RAM, 512GB SSD', 'Pre-Owned', 18000),
('Swift 3', 'Acer', '16GB RAM, 512GB SSD', 'New', 9000),
('ZenBook 13', 'Asus', '16GB RAM, 1TB SSD', 'New', 11000),
('ThinkPad T14', 'Lenovo', '16GB RAM, 512GB SSD', 'Pre-Owned', 9500),
('Envy 13', 'HP', '8GB RAM, 256GB SSD', 'Pre-Owned', 7200),
('Surface Laptop 4', 'Microsoft', '16GB RAM, 512GB SSD', 'New', 14000),
('thinkpad', 'lenovo', '16gb ram', 'New', 5000);

INSERT INTO Accessory (AccessoryType, Brand) VALUES
('Mouse', 'Lenovo'),
('Laptop Bag', 'Volcano'),
('Keyboard', 'Logitech'),
('USB-C Hub', 'Anker'),
('Laptop Stand', 'Targus'),
('External Hard Drive', 'Seagate'),
('Headset', 'HP'),
('Wireless Mouse', 'Dell'),
('Cooling Pad', 'Cooler Master'),
('Monitor', 'Samsung');

INSERT INTO Transaction (ClientID, TransactionType, TransactionDate, Amount) VALUES
(1, 'Purchase', '2025-01-05', 12000),
(2, 'Purchase', '2025-01-10', 5500),
(3, 'Sale', '2025-01-12', 8000),
(4, 'Purchase', '2025-01-15', 6000),
(5, 'Purchase', '2025-01-18', 350),
(6, 'Sale', '2025-01-20', 7500),
(7, 'Purchase', '2025-01-22', 7000),
(8, 'Purchase', '2025-01-25', 6500),
(9, 'Purchase', '2025-02-01', 900),
(10, 'Purchase', '2025-02-05', 18000),
(11, 'Sale', '2025-02-08', 1200),
(12, 'Purchase', '2025-02-12', 9000),
(13, 'Sale', '2025-02-15', 9500),
(14, 'Purchase', '2025-02-18', 7200),
(15, 'Sale', '2025-02-20', 500),
(16, 'Purchase', '2025-02-22', 14000),
(17, 'Purchase', '2025-02-25', 400),
(18, 'Purchase', '2025-03-01', 11000),
(19, 'Sale', '2025-03-05', 700),
(20, 'Purchase', '2025-03-10', 5800);

INSERT INTO Laptop_Accessory (LaptopID, AccessoryID) VALUES
(1,1),
(1,2),
(3,4),
(5,9),
(10,6),
(12,3),
(15,10);