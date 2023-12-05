		
-- Стовпчикова діаграма. Запит - Хвороба, кількість хворих пацієнтів

select patient_condition, count(*) from patient
group by patient_condition;

-- Кругова діаграма. Запит - Групи крові, і кількість людей з даною групою крові.

select patient_blood_type, count(patient_blood_type)
from patient
group by patient_blood_type;

-- Графік залежності. Запит - Рік, кількість пацієнтів записаних в цей рік

select EXTRACT(YEAR FROM date_of_admission) as year_of_admission, count(*) from patient_admission join patient using(patient_id)
group by EXTRACT(YEAR FROM date_of_admission)
order by year_of_admission
