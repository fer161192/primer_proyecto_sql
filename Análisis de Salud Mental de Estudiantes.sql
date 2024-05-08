-- Run this code to view the data in students
SELECT *
FROM students;
/*Does going to university in a different country affect your mental health? A Japanese international university surveyed its students in 2018 and published a study the following year that was approved by several ethical and regulatory boards.

The study found that international students have a higher risk of mental health difficulties than the general population, and that social connectedness (belonging to a social group) and acculturative stress (stress associated with joining a new culture) are predictive of depression.

Explore the students data using PostgreSQL to find out if you would come to a similar conclusion for international students and see if the length of stay is a contributing factor.

Here is a data description of the columns you may find helpful.*/

/*En español: ¿Ir a la universidad en otro país afecta tu salud mental? Una universidad internacional japonesa encuestó a sus estudiantes en 2018 y publicó un estudio al año siguiente que fue aprobado por varias juntas éticas y regulatorias.

El estudio encontró que los estudiantes internacionales tienen un mayor riesgo de sufrir problemas de salud mental que la población general, y que la conexión social (pertenencia a un grupo social) y el estrés aculturativo (estrés asociado con unirse a una nueva cultura) predicen la depresión.

Explore los datos de los estudiantes utilizando PostgreSQL para descubrir si llegaría a una conclusión similar para los estudiantes internacionales y ver si la duración de la estadía es un factor que contribuye.

A continuación se incluye una descripción de los datos de las columnas que pueden resultarle útiles.*/

/*| Field Name    | Description                                      |
| ------------- | ------------------------------------------------ |
| `inter_dom`     | Types of students (international or domestic)   |
| `japanese_cate` | Japanese language proficiency                    |
| `english_cate`  | English language proficiency                     |
| `academic`      | Current academic level (undergraduate or graduate) |
| `age`           | Current age of student                           |
| `stay`          | Current length of stay in years                  |
| `todep`         | Total score of depression (PHQ-9 test)           |
| `tosc`          | Total score of social connectedness (SCS test)   |
| `toas`          | Total score of acculturative stress (ASISS test) |
 */
SELECT *
FROM students
LIMIT 10;

SELECT stay,
       COUNT(*) AS count_int,
       ROUND(AVG(todep), 2) AS average_phq,
       ROUND(AVG(tosc), 2) AS average_scs,
       ROUND(AVG(toas), 2) AS average_as
FROM students
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay DESC;