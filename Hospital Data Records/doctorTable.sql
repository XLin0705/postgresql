CREATE TABLE doctors(
    doctor_id   SERIAL,
    PRIMARY KEY (doctor_id),
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL);

CREATE TABLE patients(
    patient_id SERIAL,
    PRIMARY KEY (patient_id),
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL);


CREATE TABLE treatments(
    treatment_id SERIAL,
    PRIMARY KEY (treatment_id),
    name VARCHAR(100));


CREATE TABLE illnesses(
    illness_id SERIAL,
    PRIMARY KEY (illness_id),
    name VARCHAR(100));


CREATE TABLE patSeeDoc(
    patient_id1 INT REFERENCES patients(patient_id),
    doctor_id1 INT REFERENCES doctors(doctor_id),
    doctor_id2 INT REFERENCES doctors(doctor_id),
    doctor_id3 INT REFERENCES doctors(doctor_id),
    doctor_id4 INT REFERENCES doctors(doctor_id),
    doctor_id5 INT REFERENCES doctors(doctor_id),
    patIsDoc BOOLEAN);


CREATE TABLE patHasIll(
	patient_id INT REFERENCES patients(patient_id),
	illness_id INT REFERENCES illnesses(illness_id));

CREATE TABLE patHasTreat(
    patient_id INT REFERENCES Patients(patient_id),
    treatment_id INT REFERENCES treatments(treatment_id));


