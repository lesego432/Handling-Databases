-- Student: u25581288
USE u25581288_dextech;

SELECT * FROM client;

SELECT Model FROM laptop;


SELECT * FROM transaction WHERE Amount > 2500;

UPDATE accessory SET Brand = 'Dell' WHERE Brand = 'Logitech';

SELECT * FROM accessory WHERE Brand = 'Dell';