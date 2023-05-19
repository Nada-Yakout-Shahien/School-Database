use master;
create database School;
go
use School;
go
if OBJECT_ID(testdb..schoolmethod) is not null 
create table school(
school_id int IDENTITY(1,1),
school_name varchar(20) not null,
school_email varchar(255) not null,
governorate varchar(20) not null,
city varchar(20) not null,
constraint school_pk primary key (school_id),
constraint school_uk unique (school_email )
);
alter table school
add street varchar(20);

use School;
go
if OBJECT_ID(testdb..schoolmethod) is not null 
create table school_phone(
school_id int,
phone_number varchar(25),
constraint school_phone_pk primary key (school_id,phone_number),
constraint school_phone_fk foreign key (school_id)
references school(school_id)
);

use School;
go
if OBJECT_ID(testdb..schoolmethod) is not null 
create table student_Affairs (
s_a_id int,
school_id int,
full_name varchar(100) not null,
salary numeric(7,2) not null,
governorate varchar(20) not null,
city varchar(20) not null,
street varchar(20),
phone_number varchar(25) not null,
Designation varchar(300) not null,
incentives decimal,
picture varbinary(max),
constraint s_a_uk unique (phone_number),
constraint s_a_chk check (salary between 3000 and 20000),
constraint student_affairs_pk primary key (s_a_id),
constraint student_affairs_fk foreign key (school_id)
references school(school_id)
);
alter table student_Affairs
alter column Designation varchar(300) null;

alter table student_Affairs
drop column picture;

use School;
go
if OBJECT_ID(testdb..schoolmethod) is not null 
create table teachers(
teacher_id int IDENTITY(1,1),
school_id int not null,
full_name varchar(100) not null,
teacher_email varchar(250) not null,
teacher_phone varchar(25) not null,
governorate varchar(20) not null,
city varchar(20) not null,
street varchar(20) ,
salary decimal not null,
incentives decimal,
Image image,
teacher_gender varchar(5) not null,
constraint teachers_pk primary key (teacher_id),
constraint teachers_fk foreign key (school_id)
references school(school_id)
);
alter table teachers 
add constraint teachers_uq unique (teacher_phone);

use School;
go
if OBJECT_ID(testdb..schoolmethod) is not null 
create table classes(
school_id int not null,
class_id int IDENTITY (1,1),
class_name varchar(15) ,
constraint classes_uk unique (class_name),
constraint classes_pk primary key (class_id),
constraint classes_fk foreign key (school_id)
references school(school_id)
);
alter table classes
alter column class_name varchar(30);
use School;
go
if OBJECT_ID(testdb..schoolmethod) is not null 
create table subjects(
school_id int not null,
subject_id int IDENTITY(1,1),
constraint subjects_fk foreign key (school_id)
references school(school_id),
constraint subjects_pk primary key (subject_id)
);
use School;
go
if OBJECT_ID(testdb..schoolmethod) is not null 
create table students(
student_id int IDENTITY (1,1),
school_id int not null ,
class_id int not null ,
governorate varchar(20) not null,
city varchar(20) not null,
street varchar(20) ,
student_image varbinary(max),
student_gender varchar(5) not null,
Entry_status varchar(10) not null,
Religion varchar(30) not null,
student_email varchar(250) not null,
student_phone varchar(25) not null,
full_name varchar(100) not null,
constraint students_pk primary key (student_id),
constraint students_fk foreign key (school_id)
references school(school_id),
constraint student_fk foreign key (class_id)
references classes(class_id),
constraint students_uk unique (student_phone)

);
use School;
go
if OBJECT_ID(testdb..schoolmethod) is not null 
create table student_specific_materials(
 material_id int,
 subject_id int not null,
 academic_year DATE not null,
 student_id int not null,
 constraint student_material_fk foreign key (subject_id)
 references subjects(subject_id),
 constraint student_material_fk2 foreign key ( student_id)
 references students(student_id),
 constraint student_material_pk primary key ( material_id)
);
use School;
go
if OBJECT_ID(testdb..schoolmethod) is not null 
create table year_works(
year_works_id int ,
homework_mark decimal ,
activities_mark decimal ,
attendence_mark decimal ,
student_homework_mark decimal ,
student_activities_mark decimal ,
student_attendence_mark decimal ,
material_id int not null,
constraint year_works_pk primary key (year_works_id),
 constraint year_works_fk foreign key (material_id)
 references  student_specific_materials(material_id)
);
use School;
go
if OBJECT_ID(testdb..schoolmethod) is not null 
create table examinations(
material_id int not null,
exam_id int,
exam_time time not null,
exam_kind varchar(20) not null,
constraint examinations_pk primary key(exam_id),
constraint examinations_fk foreign key (material_id)
 references  student_specific_materials(material_id)
);
use School;
go
if OBJECT_ID(testdb..schoolmethod) is not null 
create table classes_dates(
subject_id int not null,
class_id int not null,
period_id int,
period_time time not null,
period_number varchar(20) not null,
day_name varchar(20) not null,
 constraint classes_dates_fk foreign key(subject_id )
 references  subjects(subject_id),
  constraint classes_dates_fk2 foreign key(class_id )
 references  classes(class_id),
 constraint classes_dates_pk primary key(period_id)
);
use School;
go
if OBJECT_ID(testdb..schoolmethod) is not null 
create table teachers_classes(
class_id int ,
teacher_id int,
class_number varchar(10) not null,
constraint teachers_classes_pk primary key (class_id,teacher_id),
constraint teachers_classes_fk foreign key(class_id )
references  classes(class_id),
constraint teachers_classes_fk2 foreign key(teacher_id)
references  teachers(teacher_id)
);
use School;
go
if OBJECT_ID(testdb..schoolmethod) is not null 
create table teachers_subjects(
subject_id int,
teacher_id int,
subject_name varchar(20) not null,
constraint teachers_subjects_pk primary key (subject_id,teacher_id),
constraint teachers_subjects_fk foreign key(teacher_id)
references  teachers(teacher_id),
constraint teachers_subjects_fk2 foreign key(subject_id)
references  subjects(subject_id)
);
use School;
go
if OBJECT_ID(testdb..schoolmethod) is not null 
create table school_library(
school_id int not null,
library_id int,
library_name varchar(20),
library_email varchar(150),
constraint library_pk primary key(library_id),
constraint library_fk foreign key (school_id)
references school(school_id)
);
use School;
go
if OBJECT_ID(testdb..schoolmethod) is not null 
create table library_departments(
department_id int,
library_id int not null,
dep_name varchar(20) not null ,
dep_kind varchar(20) not null,
sections_book_num  varchar(8000) not null,
constraint dep_uk unique (dep_kind),
constraint dep_pk primary key (department_id),
constraint dep_fk foreign key (library_id)
references school_library(library_id)
);
use School;
go
if OBJECT_ID(testdb..schoolmethod) is not null 
create table library_books(
book_id int ,
department_id int not null,
book_name varchar(50) not null,
copies_number varchar(8000) not null,
constraint Book_pk  primary key (book_id),
constraint Book_fk foreign key (department_id)
references library_departments(department_id)
);
use School;
go
if OBJECT_ID(testdb..schoolmethod) is not null 
create table library_members(
library_id int not null,
full_name varchar(50) not null,
member_id int,
member_phone varchar(30) not null unique,
member_email varchar(200),
constraint Member_pk  primary key (member_id),
constraint Member_fk foreign key(library_id)
references school_library(library_id)
);

use School;
go
if OBJECT_ID(testdb..schoolmethod) is not null 
create table Borrowings(
book_id int not null,
borrowing_id int,
borrowing_date date not null,
member_id int not null ,
constraint Borrowing_pk primary key (borrowing_id),
constraint Borrowing_fk1 foreign key (book_id)
references library_books(book_id),
constraint Borrowing_fk2 foreign key (member_id)
references library_members(member_id)
);