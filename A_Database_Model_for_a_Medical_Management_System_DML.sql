
-- Last modification date: 2021-11-28 06:34:24.831

-- tables
-- Table: DoctorType

INSERT INTO DoctorType (DoctorType, Description) VALUES (1,'Allergist/Immunologist');
INSERT INTO DoctorType (DoctorType, Description) VALUES (2,'Cardiologist');
INSERT INTO DoctorType (DoctorType, Description) VALUES (3,'Dermatologist');
INSERT INTO DoctorType (DoctorType, Description) VALUES (4,'Gastroenterologist');
INSERT INTO DoctorType (DoctorType, Description) VALUES (5,'Hematologist');
INSERT INTO DoctorType (DoctorType, Description) VALUES (6,'Neurologist');
INSERT INTO DoctorType (DoctorType, Description) VALUES (7,'Pathologist');
INSERT INTO DoctorType (DoctorType, Description) VALUES (8,'Physiatrist');
INSERT INTO DoctorType (DoctorType, Description) VALUES (9,'Radiologist');
INSERT INTO DoctorType (DoctorType, Description) VALUES (10,'Radiologist');

-- Table: Doctor

INSERT INTO Doctor (DoctorID, FirstName, LastName, Gender, DoctorType, Active) VALUES (1,'Sanjay','Gupta','Male',2,true);
INSERT INTO Doctor (DoctorID, FirstName, LastName, Gender, DoctorType, Active) VALUES (2,'Mark','Hyman','Male',4,true);
INSERT INTO Doctor (DoctorID, FirstName, LastName, Gender, DoctorType, Active) VALUES (3,'Ben','Carson','Male',1,false);
INSERT INTO Doctor (DoctorID, FirstName, LastName, Gender, DoctorType, Active) VALUES (4,'Virginia','Apgar','Female',5,true);
INSERT INTO Doctor (DoctorID, FirstName, LastName, Gender, DoctorType, Active) VALUES (5,'William','Frist','Male',6,true);
INSERT INTO Doctor (DoctorID, FirstName, LastName, Gender, DoctorType, Active) VALUES (6,'Patch','Adams','Male',8,true);
INSERT INTO Doctor (DoctorID, FirstName, LastName, Gender, DoctorType, Active) VALUES (7,'Jennifer','Ashton','Female',1,true);
INSERT INTO Doctor (DoctorID, FirstName, LastName, Gender, DoctorType, Active) VALUES (8,'Howard','Dean','Male',2,false);
INSERT INTO Doctor (DoctorID, FirstName, LastName, Gender, DoctorType, Active) VALUES (9,'Ron','Paul','Male',7,true);
INSERT INTO Doctor (DoctorID, FirstName, LastName, Gender, DoctorType, Active) VALUES (10,'Atul','Gawande','Male',3,true);


-- Table: Patient

INSERT INTO Patient (PatientID, FirstName, LastName, Gender, Age, Address, Email, PhoneNumber) VALUES (1,'Liam','Olivia','Female',36,'4164 Ritter Avenue','olivia23@egmail.com','(123) 456-7809');
INSERT INTO Patient (PatientID, FirstName, LastName, Gender, Age, Address, Email, PhoneNumber) VALUES (2,'Noah','Emma','Male',76,'3517 Musgrave Street','emma43@egmail.com','(123) 456-7809');
INSERT INTO Patient (PatientID, FirstName, LastName, Gender, Age, Address, Email, PhoneNumber) VALUES (3,'Oliver','Ava','Male',55,'2635 Perry Street','oliver@egmail.com','(123) 456-7809');
INSERT INTO Patient (PatientID, FirstName, LastName, Gender, Age, Address, Email, PhoneNumber) VALUES (4,'Elijah','Charlotte','Female',22,'1367 Strother Street','elijah@egmail.com','(123) 456-7809');
INSERT INTO Patient (PatientID, FirstName, LastName, Gender, Age, Address, Email, PhoneNumber) VALUES (5,'William','Sophia','Male',65,'3698 Elk Street','william3454@egmail.com','(123) 456-7809');
INSERT INTO Patient (PatientID, FirstName, LastName, Gender, Age, Address, Email, PhoneNumber) VALUES (6,'James','Amelia','Female',54,'4545 bd Street','jamesamelia23@egmail.com','(123) 456-7809');
INSERT INTO Patient (PatientID, FirstName, LastName, Gender, Age, Address, Email, PhoneNumber) VALUES (7,'Benjamin','Isabella','Male',34,'8734 brad Street','benjamin@egmail.com','(123) 456-7809');
INSERT INTO Patient (PatientID, FirstName, LastName, Gender, Age, Address, Email, PhoneNumber) VALUES (8,'Lucas','Mia','Male',45,'452 Disney Street','lucasmia@egmail.com','(123) 456-7809');
INSERT INTO Patient (PatientID, FirstName, LastName, Gender, Age, Address, Email, PhoneNumber) VALUES (9,'Henry','Evelynl','Male',47,'5498 Perry Street','henryevel@egmail.com','(123) 456-7809');
INSERT INTO Patient (PatientID, FirstName, LastName, Gender, Age, Address, Email, PhoneNumber) VALUES (10,'Alexander','Harper','Male',50,'9090 Musgrave Street','alexander@egmail.com','(123) 456-7809');


-- Table: MedicineStock

INSERT INTO MedicineStock (MedicineID, MedicineName, BatchNumber, MedicineManufacturer, StockQty, Price, ExpiryDate) VALUES (110,'Vicodin',436578,'AstraZeneca',1200,30,'2022-11-18 11:00:00');
INSERT INTO MedicineStock (MedicineID, MedicineName, BatchNumber, MedicineManufacturer, StockQty, Price, ExpiryDate) VALUES (111,'Albuterol',6576867,'Novartis',30,22,'2022-08-05 11:00:00');
INSERT INTO MedicineStock (MedicineID, MedicineName, BatchNumber, MedicineManufacturer, StockQty, Price, ExpiryDate) VALUES (112,'Lisinopril',786987,'Merck',50,10,'2022-05-05 11:00:00');
INSERT INTO MedicineStock (MedicineID, MedicineName, BatchNumber, MedicineManufacturer, StockQty, Price, ExpiryDate) VALUES (113,'Levothyroxine',34587534,'GlaxoSmithKline',200,5,'2022-05-20 11:00:00');
INSERT INTO MedicineStock (MedicineID, MedicineName, BatchNumber, MedicineManufacturer, StockQty, Price, ExpiryDate) VALUES (114,'Gabapentin',6753453,'Johnson & Johnson',125,2,'2022-11-22 11:00:00');
INSERT INTO MedicineStock (MedicineID, MedicineName, BatchNumber, MedicineManufacturer, StockQty, Price, ExpiryDate) VALUES (115,'Metformin',5346782,'AbbVie',80,1,'2022-12-03 11:00:00');
INSERT INTO MedicineStock (MedicineID, MedicineName, BatchNumber, MedicineManufacturer, StockQty, Price, ExpiryDate) VALUES (116,'Lipitor',12345223,'Sanofi',56,12,'2023-04-04 11:00:00');
INSERT INTO MedicineStock (MedicineID, MedicineName, BatchNumber, MedicineManufacturer, StockQty, Price, ExpiryDate) VALUES (117,'Amlodipine',5646783,'Bristol-Myers Squibb',70,15,'2023-02-06 11:00:00');
INSERT INTO MedicineStock (MedicineID, MedicineName, BatchNumber, MedicineManufacturer, StockQty, Price, ExpiryDate) VALUES (118,'Omeprazole',7548662,'AstraZeneca',80,50,'2022-10-28 11:00:00');
INSERT INTO MedicineStock (MedicineID, MedicineName, BatchNumber, MedicineManufacturer, StockQty, Price, ExpiryDate) VALUES (119,'Losartan',89706453,'AstraZeneca',20,100,'2024-11-11 11:00:00');


-- Table: DoctorPrescription

INSERT INTO DoctorPrescription (PrescriptionID, PatientID, DoctorID, PrescriptionDate) VALUES (201, 4, 2, '2022-11-11 01:00:00');
INSERT INTO DoctorPrescription (PrescriptionID, PatientID, DoctorID, PrescriptionDate) VALUES (202, 1, 7, '2022-11-12 01:00:00');
INSERT INTO DoctorPrescription (PrescriptionID, PatientID, DoctorID, PrescriptionDate) VALUES (203, 6, 4, '2022-11-13 01:00:00');
INSERT INTO DoctorPrescription (PrescriptionID, PatientID, DoctorID, PrescriptionDate) VALUES (204, 3, 2, '2022-11-16 01:00:00');
INSERT INTO DoctorPrescription (PrescriptionID, PatientID, DoctorID, PrescriptionDate) VALUES (205, 7, 8, '2022-11-19 01:00:00');
INSERT INTO DoctorPrescription (PrescriptionID, PatientID, DoctorID, PrescriptionDate) VALUES (206, 2, 6, '2022-11-19 01:00:00');
INSERT INTO DoctorPrescription (PrescriptionID, PatientID, DoctorID, PrescriptionDate) VALUES (207, 5, 6, '2022-11-19 01:00:00');

-- Table: PrescriptionDetails

INSERT INTO PrescriptionDetails (ID, PrescriptionID, MedicineID, Quantity) VALUES (301, 201, 115, 3);
INSERT INTO PrescriptionDetails (ID, PrescriptionID, MedicineID, Quantity) VALUES (302, 202, 112, 1);
INSERT INTO PrescriptionDetails (ID, PrescriptionID, MedicineID, Quantity) VALUES (303, 203, 117, 6);
INSERT INTO PrescriptionDetails (ID, PrescriptionID, MedicineID, Quantity) VALUES (304, 204, 116, 2);
INSERT INTO PrescriptionDetails (ID, PrescriptionID, MedicineID, Quantity) VALUES (305, 205, 118, 2);
INSERT INTO PrescriptionDetails (ID, PrescriptionID, MedicineID, Quantity) VALUES (306, 206, 114, 1);
INSERT INTO PrescriptionDetails (ID, PrescriptionID, MedicineID, Quantity) VALUES (307, 207, 113, 2);


-- Table: MedicalStaffEmployee

INSERT INTO MedicalStaffEmployee (MedicalStaffID,FirstName,LastName,Location,HiringDate,Role) VALUES (1001,'James','Smith','Abington','2020-11-11 01:00:00','Admin');
INSERT INTO MedicalStaffEmployee (MedicalStaffID,FirstName,LastName,Location,HiringDate,Role) VALUES (1002,'Michael','Smith','Avon','2019-01-01 10:00:00','SuperAdmin');
INSERT INTO MedicalStaffEmployee (MedicalStaffID,FirstName,LastName,Location,HiringDate,Role) VALUES (1003,'Robert','Smith','Bellingham','2018-05-18 10:00:00','Admin');
INSERT INTO MedicalStaffEmployee (MedicalStaffID,FirstName,LastName,Location,HiringDate,Role) VALUES (1004,'Maria','Garcia','Brockton','2015-11-18 06:00:00','Admin');
INSERT INTO MedicalStaffEmployee (MedicalStaffID,FirstName,LastName,Location,HiringDate,Role) VALUES (1005,'David','Smith','Chelmsford','2018-03-03 05:00:00','Admin');
INSERT INTO MedicalStaffEmployee (MedicalStaffID,FirstName,LastName,Location,HiringDate,Role) VALUES (1006,'Maria','Rodriguez','Hadley','2020-11-05 12:00:00','SuperAdmin');





-- Table: OrderSummary

INSERT INTO OrderSummary (OrderID, PrescriptionID, OrderDate, MedicalStaffID) VALUES (751, 201, '2022-11-12 01:00:00', 1002);
INSERT INTO OrderSummary (OrderID, PrescriptionID, OrderDate, MedicalStaffID) VALUES (752, 202, '2022-11-13 01:00:00', 1001);
INSERT INTO OrderSummary (OrderID, PrescriptionID, OrderDate, MedicalStaffID) VALUES (753, 203, '2022-11-14 01:00:00', 1004);
INSERT INTO OrderSummary (OrderID, PrescriptionID, OrderDate, MedicalStaffID) VALUES (754, 204, '2022-11-15 01:00:00', 1002);
INSERT INTO OrderSummary (OrderID, PrescriptionID, OrderDate, MedicalStaffID) VALUES (755, 205, '2022-11-18 01:00:00', 1003);

-- Table: BillSummary

INSERT INTO BillSummary (BillID, OrderID, TotalAmount, BillDate, PatientID, PaymentType, TotalPaid) VALUES (12345, 751, 34, '2022-11-11 01:00:00', 3, 'Online', true);
INSERT INTO BillSummary (BillID, OrderID, TotalAmount, BillDate, PatientID, PaymentType, TotalPaid) VALUES (12346, 752, 12, '2022-11-11 01:00:00', 1, 'Cheque', true);
INSERT INTO BillSummary (BillID, OrderID, TotalAmount, BillDate, PatientID, PaymentType, TotalPaid) VALUES (12347, 753, 45, '2022-11-11 01:00:00', 7, 'Online', true);
INSERT INTO BillSummary (BillID, OrderID, TotalAmount, BillDate, PatientID, PaymentType, TotalPaid) VALUES (12348, 754, 125, '2022-11-11 01:00:00', 9, 'Online', true);
INSERT INTO BillSummary (BillID, OrderID, TotalAmount, BillDate, PatientID, PaymentType, TotalPaid) VALUES (12349, 755, 200, '2022-11-11 01:00:00', 5, 'Online', false);





-- Select queries

INSERT INTO Doctor (DoctorID, FirstName, LastName, Gender, DoctorType, Active) VALUES (11,'Adam','Gawande','Male',4,false);
INSERT INTO Patient (PatientID, FirstName, LastName, Gender, Age, Address, Email, PhoneNumber) VALUES (11,'Smith','Harper','Male',70,'9090  Street','smith@egmail.com','(123) 456-7809');


UPDATE Doctor SET active=true WHERE DoctorID=11;
UPDATE Patient SET Email='smithharper@agmail.com' WHERE PatientID=11;


DELETE FROM Doctor WHERE DoctorID=11;
DELETE FROM Patient WHERE PatientID=11;


SELECT * FROM MedicineStock;

SELECT CONCAT (p.FirstName, ' ',p.LastName) AS PatientName, CONCAT (d.FirstName, ' ',d.LastName) AS DoctorName,dp.PrescriptionID FROM DoctorPrescription dp INNER JOIN Doctor d ON d.DoctorID=dp.DoctorID INNER JOIN Patient p ON dp.PatientID=p.PatientID;

SELECT BillID, TotalAmount, CONCAT(FirstName,' ',LastName), TotalPaid FROM BillSummary INNER JOIN Patient ON Patient.PatientID=BillSummary.PatientID;

SELECT * FROM Patient;

SELECT * FROM Doctor;



-- INDEXES
CREATE INDEX index_doctorType ON Doctor (DoctorType);

CREATE INDEX index_medicineName ON MedicineStock (MedicineName);

CREATE INDEX index_billDate ON BillSummary (BillDate);

show index FROM Doctor;

show index FROM MedicineStock;

show index FROM BillSummary;

-- VIEWS
CREATE VIEW Bills_Above_Average_TotalAmount AS SELECT BillID, TotalAmount, PatientID, TotalPaid FROM BillSummary WHERE TotalAmount > (SELECT AVG(TotalAmount) FROM BillSummary);

CREATE VIEW Shortage_Medicine_Stock AS SELECT MedicineID, MedicineName, MedicineManufacturer, StockQty FROM MedicineStock WHERE StockQty < 60;


SELECT * FROM Bills_Above_Average_TotalAmount;

SELECT * FROM Shortage_Medicine_Stock;

-- TRIGGER

CREATE TABLE Medicine_Audit (
    MedicineID int NOT NULL,
    MedicineName varchar(100) NOT NULL,
    StockQty int NOT NULL,
    Price int NOT NULL,
    ExpiryDate timestamp NOT NULL
)

delimiter |
CREATE TRIGGER medicine_update_check BEFORE UPDATE ON MedicineStock 
	FOR EACH ROW
	BEGIN
		INSERT INTO Medicine_Audit (MedicineID, MedicineName, StockQty, Price, ExpiryDate) VALUES (OLD.MedicineID, OLD.MedicineName, OLD.StockQty, OLD.Price, OLD.ExpiryDate);
	END;
|

delimiter ;

INSERT INTO MedicineStock (MedicineID, MedicineName, BatchNumber, MedicineManufacturer, StockQty, Price, ExpiryDate) VALUES (120,'Paracetor',5435435,'AstraZeneca',60,100,'2025-11-11 11:00:00');

SELECT * FROM Medicine_Audit;

UPDATE MedicineStock set StockQty=50 WHERE MedicineID=120;

SELECT * FROM Medicine_Audit;

UPDATE MedicineStock set StockQty=45 WHERE MedicineID=120;

SELECT * FROM Medicine_Audit;

-- TRANSACTION
-- 1. Start a new transaction  
START TRANSACTION;   
  
-- 2. Insert a new record into the OrderSummary table  
  
INSERT INTO OrderSummary (OrderID, PrescriptionID, OrderDate, MedicalStaffID) VALUES (756, 206, '2022-11-18 01:00:00', 1005);  
  
-- 3. Insert a new record into the BillSummary table  
  
INSERT INTO BillSummary (BillID, OrderID, TotalAmount, BillDate, PatientID, PaymentType, TotalPaid) VALUES (12350, 756, 100, '2022-11-11 01:00:00', 2, 'Online', true); 
  
-- 5. Commit changes      
COMMIT;  

SELECT * FROM OrderSummary;

SELECT * FROM BillSummary;


-- 1. Start a new transaction  
START TRANSACTION;   
  
-- 2. Insert a new record into the OrderSummary table  
  
INSERT INTO OrderSummary (OrderID, PrescriptionID, OrderDate, MedicalStaffID) VALUES (757, 207, '2022-11-18 01:00:00', 1003);  
  
-- 3. Insert a new record into the BillSummary table  
  
INSERT INTO BillSummary (BillID, OrderID, TotalAmount, BillDate, PatientID, PaymentType, TotalPaid) VALUES (12351, 757, 120, '2022-11-11 01:00:00', 5, 'Online', false); 
  
-- 5. ROLLBACK changes      
ROLLBACK; 

SELECT * FROM OrderSummary;

SELECT * FROM BillSummary;


-- DATABASE SECURITY

CREATE USER 'pharmacy_admin'@'localhost' IDENTIFIED BY 'Pharm@cy123';
GRANT ALL PRIVILEGES ON pharmacy.* TO 'pharmacy_admin'@'localhost';
SHOW GRANTS FOR 'pharmacy_admin'@'localhost';

CREATE USER 'medicine_stock_user'@'localhost' IDENTIFIED BY 'Medicin@123';
GRANT ALL ON pharmacy.MedicineStock TO 'medicine_stock_user'@'localhost';
SHOW GRANTS FOR 'medicine_stock_user'@'localhost';

CREATE USER 'pharmacy_staff_user'@'localhost' IDENTIFIED BY 'PharSt@ff123';
GRANT SELECT ON pharmacy.* TO 'pharmacy_staff_user'@'localhost';
SHOW GRANTS FOR 'pharmacy_staff_user'@'localhost';


-- LOCKING
LOCK TABLE Doctor READ;

INSERT INTO Doctor (DoctorID, FirstName, LastName, Gender, DoctorType, Active) VALUES (11,'Anil','Potru','Male',6,true);

SHOW PROCESSLIST;

UNLOCK TABLES;
--ON OTHER SESSION

SELECT CONNECTION_ID();

INSERT INTO Doctor (DoctorID, FirstName, LastName, Gender, DoctorType, Active) VALUES (11,'Anil','Potru','Male',6,true);

SELECT * FROM Doctor;


--BACKUP
mysqldump -uroot -pr00tpa55 -P13306 -h 127.0.0.1  pharmacy > pharmacydump.sql

--RESTORE
mysql -uroot -pr00tpa55 -P13306 -h 127.0.0.1 pharmacy < pharmacydump.sql
-- End of file.

