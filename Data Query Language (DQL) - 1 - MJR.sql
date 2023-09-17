---DQL-1- desc & select * from all table ------
SQL> DESC classrooms ;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CLASSROOM_ID                              NOT NULL NUMBER
 GRADE                                     NOT NULL NUMBER
 SECTION                                   NOT NULL VARCHAR2(35)

SQL> SELECT * FROM classrooms ;

CLASSROOM_ID      GRADE SECTION
------------ ---------- -----------------------------------
         111          1 A
         222          2 B
         333          3 C
         444          4 D

SQL>
SQL> DESC teachers ;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 TEACHER_ID                                NOT NULL NUMBER
 FULL_NAME                                 NOT NULL VARCHAR2(35)
 EMAIL                                              VARCHAR2(35)
 DOB                                       NOT NULL DATE
 PHONE                                              NUMBER
 SPECIALTY                                 NOT NULL VARCHAR2(35)

SQL> SELECT * FROM teachers ;

TEACHER_ID FULL_NAME
---------- -----------------------------------
EMAIL                               DOB            PHONE
----------------------------------- --------- ----------
SPECIALTY
-----------------------------------
 220221111 moatasem
moa@hotmail.com                     12-JAN-09  599884587
it

 220221112 montaser
mont@hotmail.com                    11-JAN-02   59985487
eng

TEACHER_ID FULL_NAME
---------- -----------------------------------
EMAIL                               DOB            PHONE
----------------------------------- --------- ----------
SPECIALTY
-----------------------------------

 220221113 ahmed
ahe@hotmail.com                     12-JAN-09  659865320
ai

 220221114 nael
na@hotmail.com                      25-JAN-09  599884587

TEACHER_ID FULL_NAME
---------- -----------------------------------
EMAIL                               DOB            PHONE
----------------------------------- --------- ----------
SPECIALTY
-----------------------------------
it


SQL>
SQL> DESC enrollment ;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENT_ID                                NOT NULL NUMBER
 CLASSROOM_ID                              NOT NULL NUMBER
 DATE_ENROLLMENT                                    DATE

SQL> SELECT * FROM enrollment ;

STUDENT_ID CLASSROOM_ID DATE_ENRO
---------- ------------ ---------
 120200000          111 22-JAN-09
 120200001          222 21-JAN-12
 120200002          333 23-JAN-11
 120200003          444 27-JAN-07
 120200004          444 01-JAN-08
 120200005          222 09-JAN-12
 120200006          111 21-JAN-01
 120200007          444 10-JAN-04

8 rows selected.

SQL>
SQL> DESC students ;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENT_ID                                NOT NULL NUMBER
 FULL_NAME                                 NOT NULL VARCHAR2(35)
 EMAIL                                              VARCHAR2(35)
 DOB                                       NOT NULL DATE
 ADDRESS                                            VARCHAR2(35)

SQL> SELECT * FROM students ;

STUDENT_ID FULL_NAME
---------- -----------------------------------
EMAIL                               DOB
----------------------------------- ---------
ADDRESS
-----------------------------------
 120200000 Ahmed Mansour
ah@hotmail.com                      01-JAN-03
gaza

 120200001 Mohamed Mahmoud
mm@hotmail.com                      05-JAN-04
gaza

STUDENT_ID FULL_NAME
---------- -----------------------------------
EMAIL                               DOB
----------------------------------- ---------
ADDRESS
-----------------------------------

 120200002 Hassan Hussein
hh@hotmail.com                      06-JAN-09
gaza

 120200003 nael Mansour
nm@hotmail.com                      09-JAN-03

STUDENT_ID FULL_NAME
---------- -----------------------------------
EMAIL                               DOB
----------------------------------- ---------
ADDRESS
-----------------------------------
gaza

 120200004 jood Moatasem
jm@hotmail.com                      11-JAN-09
gaza

 120200005 islam sobhi

STUDENT_ID FULL_NAME
---------- -----------------------------------
EMAIL                               DOB
----------------------------------- ---------
ADDRESS
-----------------------------------
is@hotmail.com                      03-JAN-03
gaza

 120200006 Maher Zain
mz@hotmail.com                      02-JAN-07
gaza


STUDENT_ID FULL_NAME
---------- -----------------------------------
EMAIL                               DOB
----------------------------------- ---------
ADDRESS
-----------------------------------
 120200007 Mahmoud Mohammed
,m@hotmail.com                      01-JAN-03
gaza


8 rows selected.

SQL>
SQL> DESC courses ;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSE_ID                                 NOT NULL VARCHAR2(30)
 NAME                                      NOT NULL VARCHAR2(30)
 DESCRIPTION                                        VARCHAR2(30)

SQL> SELECT * FROM courses ;

COURSE_ID                      NAME
------------------------------ ------------------------------
DESCRIPTION
------------------------------
db                             database
database database

math                           MATH
MATH MATH MATH

ISSE                           ISSE
ISSE ISSE ISSE


COURSE_ID                      NAME
------------------------------ ------------------------------
DESCRIPTION
------------------------------
ETEC                           ETEC
ETEC ETEC ETEC


SQL>
SQL> DESC marks ;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENT_ID                                NOT NULL NUMBER
 COURSE_ID                                 NOT NULL VARCHAR2(30)
 MARK                                               NUMBER
 MARK_DATE                                          DATE

SQL> SELECT * FROM marks ;

STUDENT_ID COURSE_ID                            MARK MARK_DATE
---------- ------------------------------ ---------- ---------
 120200000 db                                     99 11-JAN-08
 120200001 db                                     60 23-JAN-01
 120200003 math                                   88 12-JAN-05
 120200000 ISSE                                   79 21-JAN-02
 120200003 ISSE                                   91 12-JAN-05
 120200003 ETEC                                   95 12-JAN-05
 120200003 db                                     96 10-JAN-09
 120200002 math                                   97 12-JAN-05
 120200002 ISSE                                   98 12-JAN-05
 120200002 ETEC                                   98 12-JAN-05
 120200002 db                                     92 12-JAN-05

11 rows selected.

SQL>
SQL> DESC course_teacher ;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSE_TEACHER_ID                         NOT NULL NUMBER
 TEACHER_ID                                NOT NULL NUMBER
 COURSE_ID                                 NOT NULL VARCHAR2(30)

SQL> SELECT * FROM course_teacher ;

COURSE_TEACHER_ID TEACHER_ID COURSE_ID
----------------- ---------- ------------------------------
              100  220221111 db
              101  220221111 ETEC
              102  220221114 db
              103  220221111 db

SQL>
SQL> DESC study_schedule ;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CLASSROOM_ID                              NOT NULL NUMBER
 COURSE_TEACHER_ID                         NOT NULL NUMBER
 DAY                                       NOT NULL VARCHAR2(30)
 START_TIME                                NOT NULL DATE
 END_TIME                                  NOT NULL DATE

SQL> SELECT * FROM study_schedule ;

CLASSROOM_ID COURSE_TEACHER_ID DAY                            START_TIM
------------ ----------------- ------------------------------ ---------
END_TIME
---------
         111               100 Saturday                       01-DEC-21
01-DEC-21

         222               100 Sunday                         01-DEC-21
01-DEC-21

         333               100 Monday                         01-DEC-21
01-DEC-21


CLASSROOM_ID COURSE_TEACHER_ID DAY                            START_TIM
------------ ----------------- ------------------------------ ---------
END_TIME
---------
         444               100 Tuesday                        01-DEC-21
01-DEC-21

         111               101 Saturday                       01-DEC-21
01-DEC-21

         111               102 Wednesday                      01-DEC-21
01-DEC-21


CLASSROOM_ID COURSE_TEACHER_ID DAY                            START_TIM
------------ ----------------- ------------------------------ ---------
END_TIME
---------
         111               103 Thursday                       01-DEC-21
01-DEC-21


7 rows selected.
