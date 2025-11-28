--To create the table in database Hospitals
CREATE TABLE hospital_data (
    hospital_name VARCHAR(100),
    location VARCHAR(50),
    department VARCHAR(50),
    doctors_count INTEGER,
    patients_count INTEGER,
    admission_date DATE,
    discharge_date DATE,
    medical_expenses NUMERIC(10,2)
);

--data imported using the direct import option

--Write an SQL query to find the total number of patients across all hospitals.
Select Sum(patients_count) as Total_patients
From hospital_data;

--Average Number of Doctors per Hospital
Select Sum(doctors_count) as Avg_Number_of_Doctors
From Hospital_data;

--Top 3 Departments with the Highest Number of Patients 
SELECT department, SUM(patients_count) AS total_patients
FROM hospital_data
GROUP BY department
ORDER BY total_patients DESC
LIMIT 3;

--Hospital with the Maximum Medical Expenses 
SELECT hospital_name, medical_expenses AS Maximum_expenses
FROM hospital_data
WHERE medical_expenses = (SELECT MAX(medical_expenses) FROM hospital_data);

--Daily Average Medical Expenses
SELECT hospital_name, medical_expenses
FROM hospital_data
ORDER BY medical_expenses
DESC LIMIT 3;

--Longest Hospital Stay 
SELECT hospital_name, department,
       admission_date, discharge_date,
       discharge_date - admission_date AS stay_duration_days
FROM hospital_data
ORDER BY stay_duration_days DESC
LIMIT 1;

--Total Patients Treated Per City
SELECT location AS city, SUM(patients_count) AS total_patients
FROM hospital_data
GROUP BY location
ORDER BY total_patients DESC;

--Average Length of Stay Per Department 
SELECT department,
       AVG(discharge_date - admission_date) AS avg_stay_days
FROM hospital_data
GROUP BY department
ORDER BY avg_stay_days DESC;

--Identify the Department with the Lowest Number of Patients 
SELECT department, SUM(patients_count) AS total_patients
FROM hospital_data
GROUP BY department
ORDER BY total_patients ASC
LIMIT 1;

--Monthly Medical Expenses Report
SELECT 
    DATE_TRUNC('month', admission_date) AS month,
    SUM(medical_expenses) AS total_medical_expenses
FROM hospital_data
GROUP BY month
ORDER BY month;








