use master;
create database university;
use university;
GO
create table university(
university_id int,
university_name varchar(70) not null,
university_email varchar(50) not null,
governorate varchar(25) not null,
city varchar(25) not null,
street varchar(25),
constraint unversity_pk primary key(university_id)
);
use university;
GO
alter table university
add constraint university_uq unique(university_email);
use university;
GO
create table university_phone(
university_id int,
phone_number varchar(11),
constraint university_phone_fk foreign key(university_id) 
references university(university_id),
constraint university_phone_pk primary key(university_id,phone_number)
);
use university;
GO
create table college(
college_id int,
university_id int,
college_name varchar(70) not null,
covernorate varchar(30) not null,
city varchar(30) not null,
street varchar(30),
college_email varchar(50) not null,
constraint college_pk primary key(college_id),
constraint college_fk foreign key(university_id)
references university(university_id)
);
use university;
GO
alter table college
add constraint cllege_uq unique(college_email);
use university;
GO
create table college_departments(
college_id int,
depart_ment varchar(30),
constraint cd_fk foreign key(college_id)
references college(college_id),
constraint cd_uq unique(depart_ment),
constraint cd_pk primary key(college_id)
);
use university;
GO
create table college_phone(
college_id int,
phone_number varchar(11),
constraint cp_fk foreign key(college_id)
references college(college_id),
constraint cp_pk primary key(college_id,phone_number)
);
use university;
GO
create table student(
student_national_id int,
student_name varchar(100) not null,
college_id int,
goverment varchar(40) not null,
city varchar(40) not null,
street varchar(40),
email varchar(60) not null,
gender varchar(20) not null,
phone varchar(11) not null,
birth_day date not null,
student_image image,
constraint student_uq unique(phone,email),
constraint student_pk primary key(student_national_id),
constraint student_fk foreign key(college_id)
references college(college_id)
);
use university;
GO
create table student_account(
student_id int,
student_national_id int,
student_university_email varchar(60) not null,
email_password varchar(30),
appreciation_gpa int,
appreciation_letters varchar(5),
hours_studied int not null,
hours_left int not null,
constraint student_acc_uq unique(student_university_email),
constraint student_acc_pk primary key(student_id),
constraint student_acc_fk foreign key(student_national_id)
references student(student_national_id),
constraint student_acc_check check(appreciation_gpa between 0 and 4)
);
use university;
GO
create table professor(
professor_national_id int,
professor_name varchar(100) not null,
goverment varchar(40) not null,
city varchar(40) not null,
street varchar(40),
email varchar(60) not null,
gender varchar(20) not null,
phone varchar(11) not null,
birth_day date not null,
professor_image image,
qualification varchar(50) not null,
constraint professor_uq unique(phone,email),
constraint professor_pk primary key(professor_national_id)
);
use university;
go 
alter table professor
alter column qualification varchar(90) null;
use university;
GO
create table professor_college(
professor_national_id int not null,
college_id int not null,
join_date date not null,
constraint prof_college_one_fk foreign key(professor_national_id)
references professor(professor_national_id),
constraint prof_college_two_fk foreign key(college_id)
references college(college_id),
);
use university;
GO
create table professor_account(
professor_id int,
professor_national_id int not null,
prof_university_email varchar(60) not null,
email_password varchar(30),
constraint prof_acc_pk primary key(professor_id),
constraint prof_acc_fk foreign key(professor_national_id)
references professor(professor_national_id)
);
use university;
GO
create table books(
book_id int,
college_id int not null,
name_book varchar(40) not null,
kind varchar(30),
price float ,
constraint book_pk primary key(book_id),
constraint book_fk foreign key(college_id) 
references college(college_id),
constraint book_check check(price between 50 and 120)
);
use university;
GO
create table material(
material_id int,
college_id int not null,
name_material varchar(40) not null,
credit_hour int not null,
constraint material_pk primary key(material_id),
constraint material_fk foreign key(college_id) 
references college(college_id),
constraint material_check check(credit_hour between 0 and 5)
);
use university;
GO
create table professor_book(
book_id int not null,
professor_national_id int not null,
profession_type varchar(30) not null,
constraint prof_book_one_fk foreign key(professor_national_id)
references professor(professor_national_id),
constraint prof_book_two_fk foreign key(book_id)
references books(book_id)
);
use university;
GO
create table professor_material(
material_id int not null,
professor_national_id int not null,
profession_type varchar(30) not null,
constraint prof_material_one_fk foreign key(professor_national_id)
references professor(professor_national_id),
constraint prof_material_two_fk foreign key(material_id)
references material(material_id)
);
use university;
GO
create table book_revervation(
reservation_id int,
book_id int not null,
student_id int not null,
register_date date, 
constraint book_r_pk primary key(reservation_id),
constraint book_rs_fk foreign key(student_id)
references student_account(student_id),
constraint book_rb_fk foreign key(book_id)
references books(book_id)
);
use university;
GO
create table material_register(
register_id int,
material_id int not null,
student_id int not null,
register_date date, 
constraint material_r_pk primary key(register_id),
constraint material_rs_fk foreign key(student_id)
references student_account(student_id),
constraint material_rm_fk foreign key(material_id)
references material(material_id)
);
use university;
GO
create table year_works(
year_works_id int,
register_id int not null,
academic_year date,
assignment_mark int,
projects_mark int,
attendance_mark int,
sheet_mark int,
student_sheet_mark int,
student_assignment_mark int,
student_attendance_mark int,
student_projects_mark int,
constraint year_work_check check(assignment_mark between 1 and 30),
constraint year_work_one_check check(projects_mark between 1 and 30),
constraint year_work_two_check check(attendance_mark between 1 and 30),
constraint year_work_three_check check(sheet_mark between 1 and 30),
constraint year_work_5_check check(student_assignment_mark between 0 and assignment_mark),
constraint year_work_6_check check(student_projects_mark between 0 and projects_mark),
constraint year_work_7_check check(student_attendance_mark between 0 and attendance_mark),
constraint year_work_8_check check(student_sheet_mark between 0 and sheet_mark),
constraint year_work_fk foreign key(register_id)
references material_register(register_id),
constraint year_work_pk primary key(year_works_id)
);
use university;
GO
create table examination(
exam_id int,
register_id int not null,
exam_kind varchar(30),
exam_time date not null,
exam_mark int not null,
student_mark int not null,
constraint exam_check check(exam_mark between 1 and 75),
constraint exam_student_check check(student_mark between 0 and exam_mark),
constraint exam_fk foreign key(register_id)
references material_register(register_id),
constraint exam_pk primary key(exam_id)
);