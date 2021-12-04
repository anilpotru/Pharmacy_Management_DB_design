-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-11-28 06:34:24.831

-- tables
-- Table: BillSummary
CREATE TABLE BillSummary (
    BillID int NOT NULL,
    OrderID int NOT NULL,
    TotalAmount int NOT NULL,
    BillDate timestamp NOT NULL,
    PatientID int NOT NULL,
    PaymentType varchar(32) NOT NULL,
    TotalPaid bool NOT NULL,
    CONSTRAINT BillSummary_pk PRIMARY KEY (BillID)
);

-- Table: Doctor
CREATE TABLE Doctor (
    DoctorID int NOT NULL,
    FirstName varchar(32) NOT NULL,
    LastName varchar(32) NOT NULL,
    Gender varchar(20) NOT NULL,
    DoctorType int NOT NULL,
    Active bool NOT NULL,
    CONSTRAINT Doctor_pk PRIMARY KEY (DoctorID)
);

-- Table: DoctorPrescription
CREATE TABLE DoctorPrescription (
    PrescriptionID int NOT NULL,
    PatientID int NOT NULL,
    DoctorID int NOT NULL,
    PrescriptionDate timestamp NOT NULL,
    CONSTRAINT DoctorPrescription_pk PRIMARY KEY (PrescriptionID)
);

-- Table: DoctorType
CREATE TABLE DoctorType (
    DoctorType int NOT NULL,
    Description varchar(100) NOT NULL,
    CONSTRAINT DoctorType_pk PRIMARY KEY (DoctorType)
);

-- Table: MedicalStaffEmployee
CREATE TABLE MedicalStaffEmployee (
    MedicalStaffID int NOT NULL,
    FirstName varchar(32) NOT NULL,
    LastName varchar(32) NOT NULL,
    Location varchar(100) NOT NULL,
    HiringDate timestamp NOT NULL,
    Role varchar(32) NOT NULL,
    CONSTRAINT MedicalStaffEmployee_pk PRIMARY KEY (MedicalStaffID)
);

-- Table: MedicineStock
CREATE TABLE MedicineStock (
    MedicineID int NOT NULL,
    MedicineName varchar(100) NOT NULL,
    BatchNumber int NOT NULL,
    MedicineManufacturer varchar(100) NOT NULL,
    StockQty int NOT NULL,
    Price int NOT NULL,
    ExpiryDate timestamp NOT NULL,
    CONSTRAINT MedicineStock_pk PRIMARY KEY (MedicineID)
);

-- Table: OrderSummary
CREATE TABLE OrderSummary (
    OrderID int NOT NULL,
    PrescriptionID int NOT NULL,
    OrderDate timestamp NOT NULL,
    MedicalStaffID int NOT NULL,
    CONSTRAINT OrderSummary_pk PRIMARY KEY (OrderID)
);

-- Table: Patient
CREATE TABLE Patient (
    PatientID int NOT NULL,
    FirstName varchar(32) NOT NULL,
    LastName varchar(32) NOT NULL,
    Gender varchar(20) NOT NULL,
    Age int NOT NULL,
    Address varchar(100) NOT NULL,
    Email varchar(100) NOT NULL,
    PhoneNumber varchar(20) NOT NULL,
    CONSTRAINT Patient_pk PRIMARY KEY (PatientID)
);

-- Table: PrescriptionDetails
CREATE TABLE PrescriptionDetails (
    ID int NOT NULL,
    PrescriptionID int NOT NULL,
    MedicineID int NOT NULL,
    Quantity int NOT NULL,
    CONSTRAINT PrescriptionDetails_pk PRIMARY KEY (ID)
);

-- foreign keys
-- Reference: BillSummary_OrderSummary (table: BillSummary)
ALTER TABLE BillSummary ADD CONSTRAINT BillSummary_OrderSummary FOREIGN KEY BillSummary_OrderSummary (OrderID)
    REFERENCES OrderSummary (OrderID);

-- Reference: BillSummary_Patient (table: BillSummary)
ALTER TABLE BillSummary ADD CONSTRAINT BillSummary_Patient FOREIGN KEY BillSummary_Patient (PatientID)
    REFERENCES Patient (PatientID);

-- Reference: DoctorPrescription_Doctor (table: DoctorPrescription)
ALTER TABLE DoctorPrescription ADD CONSTRAINT DoctorPrescription_Doctor FOREIGN KEY DoctorPrescription_Doctor (DoctorID)
    REFERENCES Doctor (DoctorID);

-- Reference: DoctorPrescription_Patient (table: DoctorPrescription)
ALTER TABLE DoctorPrescription ADD CONSTRAINT DoctorPrescription_Patient FOREIGN KEY DoctorPrescription_Patient (PatientID)
    REFERENCES Patient (PatientID);

-- Reference: Doctor_DoctorType (table: Doctor)
ALTER TABLE Doctor ADD CONSTRAINT Doctor_DoctorType FOREIGN KEY Doctor_DoctorType (DoctorType)
    REFERENCES DoctorType (DoctorType);

-- Reference: OrderSummary_DoctorPrescription (table: OrderSummary)
ALTER TABLE OrderSummary ADD CONSTRAINT OrderSummary_DoctorPrescription FOREIGN KEY OrderSummary_DoctorPrescription (PrescriptionID)
    REFERENCES DoctorPrescription (PrescriptionID);

-- Reference: OrderSummary_MedicalStaffEmployee (table: OrderSummary)
ALTER TABLE OrderSummary ADD CONSTRAINT OrderSummary_MedicalStaffEmployee FOREIGN KEY OrderSummary_MedicalStaffEmployee (MedicalStaffID)
    REFERENCES MedicalStaffEmployee (MedicalStaffID);

-- Reference: PrescriptionDetails_DoctorPrescription (table: PrescriptionDetails)
ALTER TABLE PrescriptionDetails ADD CONSTRAINT PrescriptionDetails_DoctorPrescription FOREIGN KEY PrescriptionDetails_DoctorPrescription (PrescriptionID)
    REFERENCES DoctorPrescription (PrescriptionID);

-- Reference: PrescriptionDetails_MedicineStock (table: PrescriptionDetails)
ALTER TABLE PrescriptionDetails ADD CONSTRAINT PrescriptionDetails_MedicineStock FOREIGN KEY PrescriptionDetails_MedicineStock (MedicineID)
    REFERENCES MedicineStock (MedicineID);

-- End of file.

