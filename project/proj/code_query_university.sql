insert into university(
university_id,university_name,university_email,governorate,city
)
values
(2314152,'cairo university','cairouniversity@gmail.com','cairo','cairo'),
(2324162,'alex university','alexuniversity@gmail.com','alex','alex'),
(2326172,'damanhour university','damanhouruniversity@gmail.com','el nehera','damanhour'),
(2327182,'kafr el sheikh university','kafrelsheikhuniversity@gmail.com','kafr el sheikh','kafr el sheikh');
insert into university_phone(
university_id,phone_number
)
values
(2314152,'01025824895'),
(2324162,'01243657898'),
(2326172,'01254768790'),
(2327182,'01576897865');
insert into college(
college_id,university_id,college_name,college_email,covernorate,city
)
values
(3847849,2314152,'computer science and artificial intelligence','computersciencecairouniversity@gmail.com','cairo','cairo'),
(3738228,2324162,'computer science and data science','computersciencealexuniversity@gmail.com','alex','alex'),
(3829201,2326172,'computer science and information technology','computersciencedamanhouruniversity@gmail.com','el behera','el nubaria'),
(3829010,2327182,'computer science and artificial intelligence','computersciencekafrelsheikhuniversity@gmail.com','kafr el sheikh','kafr el sheikh'),
(3847839,2314152,'pharmacy','pharmacycairouniversity@gmail.com','cairo','cairo'),
(3738238,2324162,'pharmacy','pharmacyalexuniversity@gmail.com','alex','alex'),
(3829231,2326172,'pharmacy','pharmacydamanhouruniversity@gmail.com','el behera','damanhour'),
(3829030,2327182,'pharmacy','pharmacykafrelsheikhuniversity@gmail.com','kafr el sheikh','kafr el sheikh');
insert into student(
student_national_id,college_id,student_name,email,gender,phone,birth_day,goverment,city
)
values
(36473883,3847849,'mustafa mahmoud salem','mustafa@gmail.com','male','01223849338','2002-3-15','cairo','cairo'),
(34627227,3738228,'mohamed assem','mohamed@gmail.com','male','01233849338','2002-3-7','el behara','damanhour'),
(37487383,3829201,'ahmed khaled','ahmed@gmail.com','male','01224849338','2002-7-8','el behara','el mahmodia'),
(38494994,3829010,'hamda hisham','hamada@gmail.com','male','01223879338','2002-12-12','el behara','badr'),
(39494003,3847839,'badr mustafa','badr@gmail.com','male','01223849638','2003-4-4','el behara','el mahmodia'),
(32303345,3738238,'salem salem','salem@gmail.com','male','01023849338','2001-8-12','el behara','el mahmodia'),
(39404485,3829231,'mohamed saad','mohamed@gmail.com','male','01223849334','2000-5-8','el behara','el mahmodia'),
(32834590,3829030,'mahmoud assem','mahmoud@gmail.com','male','01523849331','2002-8-19','el behara','el mahmodia'),
(36462883,3847849,'ahmed mahmoud salem','ahmed34@gmail.com','male','01123849338','2002-6-16','cairo','cairo'),
(34692227,3738228,'khaled assem','khaled23@gmail.com','male','01244849338','1999-1-15','el behara','damanhour'),
(37432383,3829201,'saad khaled','saad48@gmail.com','male','01223449338','2001-4-4','el behara','el mahmodia'),
(38422994,3829010,'mohamed hisham','mohamed39@gmail.com','male','01221279338','2001-7-4','el behara','badr'),
(39492003,3847839,'samir mustafa','samir36@gmail.com','male','01223844538','2001-3-4','el behara','el mahmodia'),
(32322345,3738238,'hesham taher','hesham29@gmail.com','male','01023842338','2001-12-4','el behara','el mahmodia'),
(39422485,3829231,'ahmed saad','ahmed39@gmail.com','male','01223849554','2001-11-4','el behara','el mahmodia'),
(32802590,3829030,'khaled assem','kaled30@gmail.com','male','015238431','2001-5-4','el behara','el mahmodia');
insert into student_account(
student_id,student_national_id,student_university_email,email_password,hours_studied,hours_left
)
values
(12345,36473883,'mustafa@gmail.com','92102',0,90),
(53421,34627227,'mohamed@gmail.com','92102',0,90),
(23452,37487383,'ahmed@gmail.com','92102',0,90),
(12342,38494994,'hamada@gmail.com','92102',0,90),
(42534,39494003,'badr@gmail.com','92102',0,90),
(32423,32303345,'salem@gmail.com','92102',0,90),
(56432,39404485,'mohamed123@gmail.com','92102',0,90),
(23455,32834590,'mahmoud@gmail.com','92102',0,90),
(89098,36462883,'ahmed34@gmail.com','92102',0,90),
(56789,34692227,'khaled23@gmail.com','92102',0,90),
(45678,37432383,'saad48@gmail.com','92102',0,90),
(56788,38422994,'mohamed39@gmail.com','92102',0,90),
(54678,39492003,'samir36@gmail.com','92102',0,90),
(78909,32322345,'hesham29@gmail.com','92102',0,90),
(45368,39422485,'ahmed39@gmail.com','92102',0,90),
(64768,32802590,'kaled30@gmail.com','92102',0,90);
insert into professor(
professor_national_id,professor_name,email,gender,phone,birth_day,goverment,city
)
values
(36471333,'mustafa salem','mustafa34@gmail.com','male','01223449338','1991-3-15','cairo','cairo'),
(34263227,'mohamed assem','mohamed45@gmail.com','male','01233249338','1986-3-7','el behara','damanhour'),
(37487321,'ahmed khaled','ahmed34@gmail.com','male','01224844338','1973-7-8','el behara','el mahmodia'),
(38494532,'hamda hisham','hamada34@gmail.com','male','01223854338','1948-12-12','el behara','badr'),
(39494243,'badr mustafa','badr34@gmail.com','male','01223849348','1963-4-4','el behara','el mahmodia'),
(32303525,'salem salem','salem34@gmail.com','male','0102384938','1977-8-12','el behara','el mahmodia'),
(39404145,'mohamed saad','mohame5d@gmail.com','male','01223843334','1965-5-8','el behara','el mahmodia'),
(32833540,'mahmoud assem','mahmoud34@gmail.com','male','01523349331','1965-8-19','el behara','el mahmodia'),
(36463243,'ahmed mahmoud salem','ahmed324@gmail.com','male','01235849338','1958-6-16','cairo','cairo'),
(34692347,'khaled assem','khaled223@gmail.com','male','01244844338','1959-1-15','el behara','damanhour'),
(37432423,'saad khaled','saad448@gmail.com','male','01223449338','1979-4-4','el behara','el mahmodia'),
(38422344,'mohamed hisham','mohamed339@gmail.com','male','01221479338','1963-7-4','el behara','badr'),
(39492243,'samir mustafa','samir336@gmail.com','male','01223844338','1969-3-4','el behara','el mahmodia'),
(32322425,'hesham taher','hesham239@gmail.com','male','01023845338','1966-12-4','el behara','el mahmodia'),
(39422245,'ahmed saad','ahmed339@gmail.com','male','01223849344','1955-11-4','el behara','el mahmodia'),
(32802420,'khaled assem','kaled330@gmail.com','male','01523843331','1970-5-4','el behara','el mahmodia');
insert into material(
material_id,college_id,name_material,credit_hour
)
values
(36473,3847849,'data base',3),
(34687,3738228,'data science',3),
(37403,3829201,'data structure',3),
(38494,3829010,'machine learning',3),
(36483,3847849,'data structure',3),
(34227,3738228,'information system',3),
(37383,3829201,'programming',3),
(39994,3829010,'math',3);
insert into material_register(
register_id,material_id,student_id,register_date
)
values
(32456,36473,12345,'2022-2-10'),
(53647,34687,53421,'2022-2-11'),
(47859,37403,23452,'2022-2-12'),
(23574,38494,12342,'2022-2-22'),
(45377,36483,89098,'2022-2-10'),
(25437,34227,56789,'2022-2-11'),
(25367,37383,45678,'2022-2-12'),
(45367,39994,56788,'2022-2-22');

insert into examination(
exam_id,register_id,exam_kind,exam_time,exam_mark,student_mark
)
values
(34342,32456,'final','2022-5-10',50,45),
(56352,53647,'final','2022-5-11',50,48),
(53422,47859,'final','2022-5-12',50,43),
(45222,23574,'final','2022-5-22',50,46),
(32454,45377,'final','2022-5-10',50,41),
(43264,25437,'final','2022-5-11',50,40),
(65634,25367,'final','2022-5-12',50,44),
(43262,45367,'final','2022-5-22',50,43),
(34242,32456,'mid term','2022-4-10',25,25),
(56252,53647,'mid term','2022-4-11',25,23),
(53222,47859,'mid term','2022-4-12',25,22),
(45262,23574,'mid term','2022-4-22',25,21),
(32254,45377,'mid term','2022-4-10',25,24),
(43254,25437,'mid term','2022-4-11',25,20),
(65234,25367,'mid term','2022-4-12',25,21),
(43242,45367,'mid term','2022-4-22',25,23);
/*update*/
update university
set governorate='el behera'
where university_id=2326172;
/*delete*/
delete from professor
where professor_national_id=32802420;
/*select all column*/
select*from student;
/*select a specific column*/
select college_name,college_email,city from college;
/*select a specific row*/

/*select a specific rows*/
select*from professor
where city ='damanhour';
/*Connect more than one table*/
select student_name,university_name,college_name,name_material,exam_kind,student_mark 
from university u join college c 
on u.university_id=c.university_id 
join student s
on c.college_id=s.college_id
join student_account sa
on s.student_national_id=sa.student_national_id
join material_register mr
on sa.student_id=mr.student_id
join material m
on mr.material_id=m.material_id
join examination ex
on ex.register_id=mr.register_id
order by university_name,college_name,student_name,exam_kind;