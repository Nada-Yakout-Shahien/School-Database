--queries

insert into school (school_name,school_email,governorate,city,street)
values ('Saad Zagloul','saadschool@gmail.com','Alexandria','Alex','El_moshir');
select*from school;

insert into teachers (school_id,full_name,teacher_email,teacher_phone,governorate,city,street,teacher_gender,salary,incentives)
Values  (1,'Noha Mohamed','noha@gmail.com','01034879419','Alex','Alex','San_stefano','F',3000,300),
        (1,'Maged Raoof','maged@gmail.com','01077324985','Alex','Alex','San_stefano','M',4000,300),
		(1,'Hanaa Sobhy','hana@gmail.com','01178824985','Gharbiya','kafr El_zayat','Aziz_Fahmy','F',7000,200),
        (1,'Kamel Mohamed','Kamel@hotmail.com','01278824985','Elsharkia','Elsharkia','Amr ibn al_aas','M',6000,250),
	    (1,'Mustafa Alaa','mostafa@hotmail.com','01025824890','El_beheira','damnhour','Tshawmol','M',8000,300),
	    (1,'hoda Mohamed','hoda@gmail.com','01032919419','El_gharbia','semnod','elhofaa','F',4000,100),
        (1,'Alaa Ali','alaa@gmail.com','01157324982','Alex','Alex','El_moshir','F',3000,150),
		(1,'Yakout Sobhy','yakout@gmail.com','01156824985','cairo','new cairo','elazhar','M',7000,300),
        (1,'karim Mohamed','Karim@hotmail.com','01578824905','Alex','Alex','sydi-gaber','M',5500,200),
	    (1,'Ali Alaa','mostafa@hotmail.com','01035824890','El_beheira','El_mahmodia','elzohor','M',8000,300),
		(1,'Aya Adel','aya@hotmail.com','01035824880','Alex','Alex','elzohor','F',5500,200)
select*from teachers

insert into classes(school_id,class_name)
values ('1','first_year_one'), ('1','first_year_two'),('1','first_year_three'),('1','first_year_four'),('1','first_year_five'),('1','first_year_six'),
	   ('1','second_year_one'), ('1','second_year_two'),('1','second_year_three'),('1','second_year_four'),('1','second_year_five'),('1','second_year_six'),
	   ('1','Third_year_one'), ('1','Third_year_two'),('1','Third_year_three'),('1','Third_year_four'),('1','Third_year_five'),('1','Third_year_six'),
	   ('1','Fourth_year_one'), ('1','Fourth_year_two'),('1','Fourth_year_three'),('1','Fourth_year_four'),('1','Fourth_year_five'),('1','Fourth_year_six'),
	   ('1','Fifth_year_one'), ('1','Fifth_year_two'),('1','Fifth_year_three'),('1','Fifth_year_four'),('1','Fifth_year_five'),('1','Fifth_year_six'),
	   ('1','Six_year_one'), ('1','Six_year_two'),('1','Six_year_three'),('1','Six_year_four'),('1','Six_year_five'),('1','Six_year_six')
select * from classes

insert into teachers_classes(class_id,teacher_id,class_number)
values (1,1,'1/1'),(2,1,'1/2'),(3,1,'1/3'),
       (7,7,'1/4'),(9,7,'1/5'),(11,7,'1/6'),
	   (13,2,'2/1'),(15,2,'2/2'),(16,2,'2/3'),
	   (19,6,'2/4'),(20,6,'2/5'),(21,6,'2/6'),
	    (25,9,'3/1'),(26,9,'3/2'),(27,11,'3/3'),
		(31,5,'6/1'),(32,5,'6/2'),(33,10,'6/3'),(34,10,'6/4')
select * from teachers_classes

insert into Students(school_id,class_id,governorate,city,street,full_name,Entry_status,Religion,student_email,student_phone,student_gender)
values (1,1,'Alex','Alex','San_stefano','Sara adel','New','Muslim','sara@gmail.com','01004579419','F'),
       (1,2,'cairo','New cairo','Pyramids','Adel Osman','New','Muslim','adel@gmail.com','01124579419','M'),
	   (1,3,'The red sea','Hurghada','abd elaziz','Fatma ahmed','New','Muslim','Fatma@yahoo.com','01530079419','F'),
	   (1,7,'Alex','Alex','sedi beshr','Adb_elrahman','New','Muslim','abdo@gmail.com','01034589520','M'),
	   (1,9,'Gharbiya','Tanta','tanta','Asmaa younis','Stay','Muslim','asmaa@gmail.com','01061930283','F'),
	   (1,11,'Suez','Suez','48 street','Rahma Mohamed','New','Muslim','rahma@gmail.com','01504579419','F'),
	   (1,13,'El_beheira','El_mahmodia','elzohor','Mahmoud ayman','stay','Muslim','mahmoud@gmail.com','01234579400','M'),
	   (1,15,'Elsharkia','Elsharkia','Amr ibn al_aas','Mariam adel','New','Christian','mariam@gmail.com','01132279419','F'),
	   (1,16,'Matrouh','Siwa','46_street','Sara adel','stay','Muslim','sara@gmail.com','01134579419','F'),
	   (1,19,'Alex','Alex','El_moshir','meena john','New','Christian','sara@gmail.com','01034579419','M'),
	   (1,20,'Alex','Alex','San_stefano','Maged Raoof','new','muslim','maged@gmail.com','01077324985','M'),
       (1,21,'Gharbiya','kafr El_zayat','Aziz_Fahmy','semo crolos','new','Christian','semo@gmail.com','01178824985','F'),
       (1,25,'Elsharkia','Elsharkia','Amr_ST','Kamel Mohamed','stay','muslim','Kamel@hotmail.com','01278824985','M'),
       (1,26,'El_beheira','damnhour','Tshawmol','Mohammed salem','new','muslim','mohamed@hotmail.com','01025824896','M'),
       (1,27,'El Wadi El GediD','el-farafra','18-gamal-abd-elnaser','crolos mosa','stay','cristian','crolos@hotmail.com','01256835873','M'),
	   (1,31,'EL-beheira','El-mahmodia','elzohor','amr mohamed','stay','muslim','amr@hotmail.com','01034598786','M'),
       (1,32,'Alex','Alex','sydi-gaber','alaa mostafa','new','muslim','alaa@gmail.com','015547899883','M'),
       (1,33,'EL-gharbia','semnod','elhofaa','nour ali','stay','muslim','nour@yahoo.com','01095984378','F'),
       (1,34,'Elsharkia','al-qorin','abo-kibir','haytham monir','new','muslim','heth@yahoo.com','01134578695','M'),
       (1,5,'cairo','new cairo','elazhar','kamylia amer','stay','cristian','kemo@gmail.com','01298789657','F')
  select*from students;

insert into school_phone (school_id,phone_number)
values(1,'01065367898'),
      (1,'01279020189');
	  select*from school_phone

select*from teachers
order by full_name;

select*from teachers
where full_name like'a%';
--like

select teacher_id,full_name,teacher_phone,salary
from teachers 
where salary between 3000 and 7000;
--between or and 

update teachers
set teacher_email='Ali@hotmail.com',
teacher_phone='01235824890'
where teacher_id=10;
--update

select teacher_id,full_name,teacher_phone,city
from teachers 
where city = 'Alex';
--or
select*from students where city in ('Alex');

select distinct city
from teachers;
--distinct'prevent repetition' 

delete from classes
where class_id=30;
--delete

select MAX(salary)as "Highest Price",MIN(salary) "Lowest Price",AVG(salary) "Average",sum(salary) "Total Prices",COUNT(salary) "Count of salary"
from teachers;
--max or min or avg or count
--we can use where anything

select t.full_name,COUNT(*) as 'class_num'
from teachers t inner join teachers_classes tc
on t.teacher_id=tc.teacher_id 
group by full_name
order by COUNT(*)desc;
--select group by order by 
--we can use defalt order'asc'

SELECT t.*,c.*,tc.*
from teachers t inner join teachers_classes tc on t.teacher_id=tc.teacher_id
inner join classes c on c.class_id=tc.class_id;
--inner join

SELECT t.*,c.*,tc.*
from teachers t full outer join teachers_classes tc on t.teacher_id=tc.teacher_id
full outer join classes c on c.class_id=tc.class_id
where city='Alex' 
order by salary desc;
--outer join 

SELECT t.*,tc.*
from teachers t left outer join teachers_classes tc on t.teacher_id=tc.teacher_id;
--left outer join
SELECT t.*,tc.*
from teachers t right outer join teachers_classes tc on t.teacher_id=tc.teacher_id;
--right outer join

select* 
from teachers
cross join teachers_classes;
/*cross join In this implementation, we specify the keyword CROSS JOIN in between the table names we want to join. */

--joins +DML
update teachers
set salary+=50 from teachers t inner Join teachers_classes tc
on t.teacher_id=tc.teacher_id
where class_number ='1/6';

--self join (Tables that are related to each other)


--join with insert

delete s
from students s left join classes c
on s.class_id=c.class_id
where c.class_id=5;
--join with delete

Select*From students
Where student_image is null;
--we can use nun or not null

select s.*,c.*,tc.*,t.*
from students s inner join classes c 
on s.class_id=c.class_id inner join teachers_classes tc
on c.class_id=tc.class_id inner join teachers t
on tc.teacher_id = t.teacher_id;
--Connect more than one table

SELECT s.school_id,s.class_id,s.governorate,s.full_name,c.*,tc.*,t.school_id,t.full_name,t.teacher_email,t.teacher_phone,sc.*
from students s inner join classes c 
on s.class_id=c.class_id inner join teachers_classes tc
on c.class_id=tc.class_id inner join teachers t
on tc.teacher_id = t.teacher_id inner join school sc 
on sc.school_id=t.school_id;
--Connect more than one table

insert into students(school_id,class_id,governorate,city,student_gender,Entry_status,Religion,student_email
                      ,student_phone,full_name)
values (1,22,'Alex','alex','M','NEW','muslim','AMGAD@gmail.com','01246821905','amgad')
select * from students s
left join classes c 
on s.class_id=c.class_id;

select full_name , student_email
from students
where student_email like '%@gmail.com';

select * from students 
where student_id <=10 and city='Alex';