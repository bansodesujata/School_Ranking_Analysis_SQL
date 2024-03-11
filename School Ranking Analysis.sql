CREATE DATABASE Student;

/* Q1. Write a query to create a students table with appropriate data types for student id, student first name, student last name,
 class, and age where the student last name, student first name, and student id should be a NOT NULL constraint, 
 and the student id should be in a primary key.*/
 
 
 ALTER TABLE student_datasets
 RENAME TO stud;
 
 ALTER TABLE stud
 modify column s_lname text NOT NULL,
 modify column s_fname text NOT NULL,
 modify column s_id int NOT NULL;
 
 /* Q2. Write a query to create a marksheet table that includes score, year, ranking, class, and student id. */
 ALTER TABLE marksheet_datasets
 RENAME TO mark;
 
 /*Write a query to insert values in students and marksheet tables.*/
 INSERT INTO mark (score,year,class,ranking,s_id)
 values (810,2014,10,14,13);
 
 INSERT INTO stud (s_id,s_fname,s_lname,class,age)
 values (13,"Patil","Sona",10,18);
 
 /*Write a query to display student id and student first name from the student table if the age is greater than or equal to 16 
 and the student's last name is Kumar.*/
 
 SELECT s_id, s_fname FROM stud
 WHERE age >= 16 AND s_lname = 'Kumar'
 order by s_id;
 
 /*Write a query to display all the details from the marksheet table if the score is between 800 and 1000.*/
 
 SELECT * FROM mark
 WHERE score between 800 and 1000
 ORDER BY score;
 
 /*Write a query to display the marksheet details from the marksheet table by adding 5 to the score and by naming the column as new score.*/
 SELECT * , score + 5 AS new_score
 FROM mark;
 
 /*Write a query to display the marksheet table in descending order of the  score.*/
 SELECT * FROM mark
 ORDER BY score DESC;
 
 /*Write a query to display details of the students whose first name starts with a.*/
 SELECT * FROM stud
 WHERE s_fname like 'a%'; 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 