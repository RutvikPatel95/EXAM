(1)
--\sql
--\connect root@localhost:3306
-- show databases;
-- create database studant;
-- show databases;
-- use studant;
(2)
 create table studants(
    student_id int primary key,
    first_name varchar(100),
    last_name varchar(50),
    email varchar(50),
    phone int
 );
 create table courses(
    coures_id int primary key,
    title varchar(50),
    description varchar(50),
    credits int
 );
 create table enrollments(
    enrollments_id int primary key,
    studants_id int,
    courses_id int,
    start_date varchar(50),
    end_date varchar(50),
    grade varchar(50),
    foreign key(student_id) references students(student_id),
    foreign key(courses_id) references courses(courses_id)

 );
 create table teachers(
    teacher_id varchar(50) primary key,
    first_name varchar(50),
    last_name varchar(50),
    email varchar(50),
    phone int,

 );
 create table teachers_courses(
    teacher_id varchar(50) ,
    coures_id int ,
      foreign key(teacher_id)references teachers(teacher_id),
      foreign key(student_id)references students(studant_id)
        

 );
(3)
--1, studants
insert into studants values(0001,"rutvik","bodar","rutvik@gmail.com",253698);
insert into studants values(0002,"jay","kalathiya","ray@gmail.com",2533698);
insert into studants values(0003,"nil","gajera","nil@gmail.com",2536693);
insert into studants values(0004,"vishal","patel","vishal@gmail.com"256336);
insert into studants values(0001,"prince","patel","patel@gmail.com",253998);

--2 courses
insert into courses values(1001,"nodejs","abc",3695);
insert into courses values(1002,"flutter","xyz",3696);
insert into courses values(1003,"ui_xi","cde",3697);
insert into courses values(1004,"fullstack","vea",3698);
insert into courses values(1005,"nodejs","ite",3699);

---3 enrollments
insert into enrollments values(1001,0001,2001,"1-may","30-aug","A");
insert into enrollments values(1002,0002,2002,"1-may","30-aug","B");
insert into enrollments values(1003,0003,2003,"1-may","30-aug","C");
insert into enrollments values(1004,0004,2004,"1-may","30-aug","D");
insert into enrollments values(1005,0005,2005,"1-may","30-aug","E");

---4 teachers 
insert into teachers values ("A0001","girish","patel","girish@gmail.com",95862);
insert into teachers values ("A0002","mohit","patel","mohit@gmail.com",95863);
insert into teachers values ("A0003","vivek","patel","vivek@gmail.com",95864);
insert into teachers values ("A0004","nilesh","patel","nilesh@gmail.com",95861);
insert into teachers values ("A0005","jatin","patel","jatin@gmail.com",95865);

--5 
insert into teachers_courses("A0001",2001);
insert into teachers_courses("A0002",2002);
insert into teachers_courses("A0003",2003);
insert into teachers_courses("A0004",2004);
insert into teachers_courses("A0005",2005);

(4)
select * from studants;

(5)
select * from courses;
(6)
select *from teachers;
(7)
select students.phone, enrollments.courses_id from enrollments
inner join students on studants.studant_id=enrollments.studant_id;
(8)
update studants set grade "a" where course_id =1001;
(9)
Delete from enrollments where enrollments="enrollments_id"






