-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-11-28 06:34:24.831

-- foreign keys
ALTER TABLE BillSummary
    DROP FOREIGN KEY BillSummary_OrderSummary;

ALTER TABLE BillSummary
    DROP FOREIGN KEY BillSummary_Patient;

ALTER TABLE DoctorPrescription
    DROP FOREIGN KEY DoctorPrescription_Doctor;

ALTER TABLE DoctorPrescription
    DROP FOREIGN KEY DoctorPrescription_Patient;

ALTER TABLE Doctor
    DROP FOREIGN KEY Doctor_DoctorType;

ALTER TABLE OrderSummary
    DROP FOREIGN KEY OrderSummary_DoctorPrescription;

ALTER TABLE OrderSummary
    DROP FOREIGN KEY OrderSummary_MedicalStaffEmployee;

ALTER TABLE PrescriptionDetails
    DROP FOREIGN KEY PrescriptionDetails_DoctorPrescription;

ALTER TABLE PrescriptionDetails
    DROP FOREIGN KEY PrescriptionDetails_MedicineStock;

-- tables
DROP TABLE BillSummary;

DROP TABLE Doctor;

DROP TABLE DoctorPrescription;

DROP TABLE DoctorType;

DROP TABLE MedicalStaffEmployee;

DROP TABLE MedicineStock;

DROP TABLE OrderSummary;

DROP TABLE Patient;

DROP TABLE PrescriptionDetails;

-- End of file.

