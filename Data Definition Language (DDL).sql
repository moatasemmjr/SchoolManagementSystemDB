---------------------------------------------- create a table ----------------------------------------
CREATE TABLE classrooms (
    classroom_id NUMBER CONSTRAINT classrooms_pk PRIMARY KEY  ,
    grade        NUMBER NOT NULL,
    section      VARCHAR2(35) NOT NULL
);

CREATE TABLE teachers (
    teacher_id NUMBER CONSTRAINT teachers_pk PRIMARY KEY ,
    full_name  VARCHAR2(35) NOT NULL,
    email      VARCHAR2(35),
    dob        DATE NOT NULL,
    phone      NUMBER,
    specialty  VARCHAR2(35) NOT NULL
);

CREATE TABLE enrollment (
    student_id      NUMBER CONSTRAINT enrollment_pk PRIMARY KEY ,
    classroom_id    NUMBER NOT NULL,
    date_enrollment DATE , 
         CONSTRAINT enrollment_classrooms_fk FOREIGN KEY ( classroom_id )
        REFERENCES classrooms ( classroom_id )
);

CREATE TABLE students (
    student_id            NUMBER CONSTRAINT students_pk PRIMARY KEY ,
    full_name             VARCHAR2(35) NOT NULL,
    email                 VARCHAR2(35),
    dob                   DATE NOT NULL,
    address               VARCHAR2(35)
);


CREATE TABLE courses (
    course_id   VARCHAR2(30) CONSTRAINT courses_pk PRIMARY KEY ,
    name        VARCHAR2(30) NOT NULL,
    description VARCHAR2(30) );

CREATE TABLE marks (
    student_id NUMBER NOT NULL,
    course_id  VARCHAR2(30) NOT NULL,
    mark       NUMBER,
    mark_date  DATE , 
    CONSTRAINT ma_sc_pk PRIMARY KEY ( student_id,course_id )
);

ALTER TABLE marks
    ADD CONSTRAINT marks_courses_fk FOREIGN KEY ( course_id )
        REFERENCES courses ( course_id );

ALTER TABLE marks
    ADD CONSTRAINT marks_students_fk FOREIGN KEY ( student_id )
        REFERENCES students ( student_id );



CREATE TABLE course_teacher (
    course_teacher_id NUMBER CONSTRAINT course_teacher_pk PRIMARY KEY  ,
     teacher_id    NUMBER NOT NULL,
     course_id      VARCHAR2(30) NOT NULL
);
ALTER TABLE course_teacher
    ADD CONSTRAINT course_teacher_courses_fk FOREIGN KEY (course_id)
        REFERENCES courses ( course_id );

ALTER TABLE course_teacher
    ADD CONSTRAINT course_teacher_teachers_fk FOREIGN KEY (teacher_id)
        REFERENCES teachers ( teacher_id );


CREATE TABLE study_schedule (
    classroom_id      NUMBER NOT NULL,
    course_teacher_id NUMBER NOT NULL,
    day               VARCHAR2(30) NOT NULL,
    start_time        DATE NOT NULL,
    end_time          DATE NOT NULL , 
CONSTRAINT study_schedule_pk PRIMARY KEY ( classroom_id,course_teacher_id ));

ALTER TABLE study_schedule
    ADD CONSTRAINT s_s_class_fk FOREIGN KEY ( classroom_id )
        REFERENCES classrooms ( classroom_id );

ALTER TABLE study_schedule
    ADD CONSTRAINT s_s_course_t_fk FOREIGN KEY ( course_teacher_id )
        REFERENCES course_teacher ( course_teacher_id );
