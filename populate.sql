

---------------------------
-- Populate Patient table
---------------------------
INSERT INTO Patient(patient_id, patient_name, patient_age, patient_gender, patient_blood_type, patient_condition)
VALUES(10001, 'Tiffany Ramirez', 81, 'Female', 'O-', 'Diabetes');
INSERT INTO Patient(patient_id, patient_name, patient_age, patient_gender, patient_blood_type, patient_condition)
VALUES(10002, 'Chad Byrd', 61, 'Male', 'B-', 'Obesity');
INSERT INTO Patient(patient_id, patient_name, patient_age, patient_gender, patient_blood_type, patient_condition)
VALUES(10003, 'Antonio Frederick', 49, 'Male', 'B-', 'Asthma');
INSERT INTO Patient(patient_id, patient_name, patient_age, patient_gender, patient_blood_type, patient_condition)
VALUES(10004, 'Mrs. Brandy Flowers', 51, 'Male', 'O-', 'Arthritis');
INSERT INTO Patient(patient_id, patient_name, patient_age, patient_gender, patient_blood_type, patient_condition)
VALUES(10005, 'Patrick Parker', 41, 'Male', 'AB+', 'Arthritis');
INSERT INTO Patient(patient_id, patient_name, patient_age, patient_gender, patient_blood_type, patient_condition)
VALUES(10006, 'Charles Horton', 82, 'Male', 'AB+', 'Hypertension');
INSERT INTO Patient(patient_id, patient_name, patient_age, patient_gender, patient_blood_type, patient_condition)
VALUES(10007, 'Patty Norman', 55, 'Female', 'O-', 'Arthritis');
INSERT INTO Patient(patient_id, patient_name, patient_age, patient_gender, patient_blood_type, patient_condition)
VALUES(10008, 'Sharon Perez', 39, 'Female', 'O-', 'Asthma');

-------------------------
-- Populate Hospital table
-------------------------
INSERT INTO Hospital(hospital_id, hospital_name)
VALUES(20001, 'Walton LLC');
INSERT INTO Hospital(hospital_id, hospital_name)
VALUES(20002,'"Smith, Edwards and Obrien"');
INSERT INTO Hospital(hospital_id, hospital_name)
VALUES(20003,'Garcia Ltd');
INSERT INTO Hospital(hospital_id, hospital_name)
VALUES(20004,'Boyd PLC');
INSERT INTO Hospital(hospital_id, hospital_name)
VALUES(20005,'"Jones, Brown and Murray"');
INSERT INTO Hospital(hospital_id, hospital_name)
VALUES(20006,'Brown-Golden');
INSERT INTO Hospital(hospital_id, hospital_name)
VALUES(20007,'Wallace-Hamilton');
INSERT INTO Hospital(hospital_id, hospital_name)
VALUES(20008,'"Burke, Griffin and Cooper"');
INSERT INTO Hospital(hospital_id, hospital_name)
VALUES(20009,'Brown Inc');
INSERT INTO Hospital(hospital_id, hospital_name)
VALUES(20010,'"Wheeler, Bryant and Johns"');

--------------------------
-- Populate Patient_Admission table
--------------------------
INSERT INTO Patient_Admission(date_of_admission, patient_id, hospital_id)
VALUES(TO_DATE('2022-11-17', 'yyyy-mm-dd'), 10001, 20007);
INSERT INTO Patient_Admission(date_of_admission, patient_id, hospital_id)
VALUES(TO_DATE('2019-01-09', 'yyyy-mm-dd'), 10002, 20001);
INSERT INTO Patient_Admission(date_of_admission, patient_id, hospital_id)
VALUES(TO_DATE('2020-05-02', 'yyyy-mm-dd'), 10003, 20003);
INSERT INTO Patient_Admission(date_of_admission, patient_id, hospital_id)
VALUES(TO_DATE('2021-07-09', 'yyyy-mm-dd'), 10004, 20005);
INSERT INTO Patient_Admission(date_of_admission, patient_id, hospital_id)
VALUES(TO_DATE('2020-08-20', 'yyyy-mm-dd'), 10005, 20004);
INSERT INTO Patient_Admission(date_of_admission, patient_id, hospital_id)
VALUES(TO_DATE('2021-03-22', 'yyyy-mm-dd'), 10006, 20010);
INSERT INTO Patient_Admission(date_of_admission, patient_id, hospital_id)
VALUES(TO_DATE('2019-05-16', 'yyyy-mm-dd'), 10007, 20009);
INSERT INTO Patient_Admission(date_of_admission, patient_id, hospital_id)
VALUES(TO_DATE('2022-12-15', 'yyyy-mm-dd'), 10008, 20006);

------------------------
-- Populate Doctor table
------------------------
INSERT INTO Doctor(doctor_id, doctor_name, hospital_id)
VALUES(30001, 'Patrick Parker', 20007);
INSERT INTO Doctor(doctor_id, doctor_name, hospital_id)
VALUES(30002,'Paul Baker', 20001);
INSERT INTO Doctor(doctor_id, doctor_name, hospital_id)
VALUES(30003,'Brian Chandler', 20003);
INSERT INTO Doctor(doctor_id, doctor_name, hospital_id)
VALUES(30004,'Dustin Griffin', 20005);
INSERT INTO Doctor(doctor_id, doctor_name, hospital_id)
VALUES(30005,'Robin Green', 20004);
INSERT INTO Doctor(doctor_id, doctor_name, hospital_id)
VALUES(30006,'Patricia Bishop', 20010);
INSERT INTO Doctor(doctor_id, doctor_name, hospital_id)
VALUES(30007,'Brian Kennedy', 20009);
INSERT INTO Doctor(doctor_id, doctor_name, hospital_id)
VALUES(30008,'Jessica Bailey', 20006);
INSERT INTO Doctor(doctor_id, doctor_name, hospital_id)
VALUES(30009,'Diane Jackson', 20008);
INSERT INTO Doctor(doctor_id, doctor_name, hospital_id)
VALUES(300010,'Kristin Dunn', 20002);
----------------------------
-- Populate Patient_Doctor table
----------------------------
INSERT INTO Patient_Doctor(patient_id, doctor_id)
VALUES(10001, 30001);
INSERT INTO Patient_Doctor(patient_id, doctor_id)
VALUES(10002, 30002);
INSERT INTO Patient_Doctor(patient_id, doctor_id)
VALUES(10003, 30003);
INSERT INTO Patient_Doctor(patient_id, doctor_id)
VALUES(10004, 30004);
INSERT INTO Patient_Doctor(patient_id, doctor_id)
VALUES(10005, 30005);
INSERT INTO Patient_Doctor(patient_id, doctor_id)
VALUES(10006, 30006);
INSERT INTO Patient_Doctor(patient_id, doctor_id)
VALUES(10007, 30007);
INSERT INTO Patient_Doctor(patient_id, doctor_id)
VALUES(10008, 30008);