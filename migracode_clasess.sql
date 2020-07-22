create table mentors (
    id                 serial PRIMARY KEY,
    name               VARCHAR(50) NOT NULL,
    years_in_barcelona INT NOT NULL, 
    address            VARCHAR(50) NOT NULL,
    favorite_PL        VARCHAR(50) NOT NULL
)

INSERT INTO mentors (name, years_in_barcelona, address, favorite_PL) VALUES ('Jhon', 10, 'gran via 254, barcelona.', 'Python');
INSERT INTO mentors (name, years_in_barcelona, address, favorite_PL) VALUES ('Brandon', 2, 'carrer pujol 87', 'JAVA');
INSERT INTO mentors (name, years_in_barcelona, address, favorite_PL) VALUES ('Ana', 5, 'Avinguda Diagonal 244', 'JAVA');
INSERT INTO mentors (name, years_in_barcelona, address, favorite_PL) VALUES ('Victoria', 7, 'Carrer Sants 98', 'SHARP');
INSERT INTO mentors (name, years_in_barcelona, address, favorite_PL) VALUES ('Francesc', 5, 'Calle almirant 35', 'JAVASCRIPT');

create table students (
    id                 serial PRIMARY KEY,
    name               VARCHAR(50) NOT NULL,
    address            VARCHAR(50) NOT NULL,
    age                INT NOT NULL
)

INSERT INTO students (name, address, age) VALUES ('Eduard', 'traversa de les corts 45', 20);
INSERT INTO students (name, address, age) VALUES ('Josep', 'Bac de roda 156', 24);
INSERT INTO students (name, address, age) VALUES ('Martha', 'San Felip 54', 23);
INSERT INTO students (name, address, age) VALUES ('Gerard', 'Valencia 24', 24);
INSERT INTO students (name, address, age) VALUES ('Gloria', 'Aragon 99', 22);
INSERT INTO students (name, address, age) VALUES ('Kathy', 'gran via 192', 21);
INSERT INTO students (name, address, age) VALUES ('Victoria', 'Carrer Bartolome 30', 20);
INSERT INTO students (name, address, age) VALUES ('Jordi', 'Sta Eulalia 94', 27);
INSERT INTO students (name, address, age) VALUES ('Ali', 'Carrer llunetes 54', 25);
INSERT INTO students (name, address, age) VALUES ('Akira', 'Carrer del Lluc 56', 24);

create table classes (
    id                 serial PRIMARY KEY,
    leading_mentor     INT REFERENCES mentors(id),
    topic              VARCHAR(20) NOT NULL,
    start_date         DATE NOT NULL, 
    campus             VARCHAR(20) NOT NULL
)

INSERT INTO classes (leading_mentor, topic, start_date,campus) VALUES (1,'Python', '2020-08-01', 'tarragona 84');
INSERT INTO classes (leading_mentor, topic, start_date,campus) VALUES (2, 'JAVA', '2020-08-07', 'Carrer pujol 22');
INSERT INTO classes (leading_mentor, topic, start_date,campus) VALUES (5, 'JAVASCRIPT',  '2020-08-21', 'Carrer sants 49');

create table registration (
    id                 serial PRIMARY KEY,
    class_id           INT REFERENCES classes(id),
    student_id         INT REFERENCES students(id),
)

INSERT INTO registration (class_id, student_id) VALUES (4,1);
INSERT INTO registration (class_id, student_id) VALUES (4,2);
INSERT INTO registration (class_id, student_id) VALUES (4,3);
INSERT INTO registration (class_id, student_id) VALUES (4,4);
INSERT INTO registration (class_id, student_id) VALUES (3,5);
INSERT INTO registration (class_id, student_id) VALUES (3,6);
INSERT INTO registration (class_id, student_id) VALUES (3,7);
INSERT INTO registration (class_id, student_id) VALUES (5,8);
INSERT INTO registration (class_id, student_id) VALUES (5,9);
INSERT INTO registration (class_id, student_id) VALUES (5,10);

select * from mentors where years_in_barcelona > 5;
select * from mentors where favorite_pl = 'JAVASCRIPT';
select * from students where age < 25;
select * from classes where start_date < '2020-06-01';
select * from registration where class_id = 5;