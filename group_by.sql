-- 1. Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(`enrolment_date`) as `anno`,
		COUNT(`enrolment_date`) as `iscritti`
FROM `students`
GROUP BY YEAR(`enrolment_date`);

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(`id`) as `insegnanti`,
		`office_address` as `ufficio`
FROM `teachers`
GROUP BY `office_address`;

-- 3. Calcolare la media dei voti di ogni appello d'esame
SELECT `exam_id` as `appello`, AVG(`vote`) as `media voto`
FROM `exam_student`
GROUP BY `exam_id`;

-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT COUNT(`id`) as `corsi di laurea`,
		`department_id` as `dipartimento`
FROM `degrees`
GROUP BY `department_id`;
