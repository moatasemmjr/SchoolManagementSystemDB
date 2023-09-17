# School Management System Database

This project is an Oracle SQL database for a School Management System. It manages information about teachers, students, classrooms, courses, enrollments, marks, and study schedules.

## Database Tables

1. **STUDENTS**: Stores student information, including student_id, email, full_name, dob, phone, and address.

2. **TEACHERS**: Stores teacher information, including teacher_id, email, full_name, dob, phone, and specialty.

3. **ENROLLMENT**: Records student enrollments, including student_id, classroom_id, and enrollment_date.

4. **CLASSROOMS**: Stores classroom details, including classroom_id, grade, and section.

5. **COURSES**: Contains course information, including course_id, name, and description.

6. **MARKS**: Records student marks, including course_id, student_id, mark, and mark_date.

## Database Schema

The database schema includes tables, relationships, and constraints to ensure data integrity.

### Tables

1. **STUDENTS Table:**
   - `student_id (Primary Key)`: Unique identifier for each student.
   - `email`: Email address of the student.
   - `full_name`: Full name of the student.
   - `dob`: Date of birth of the student.
   - `phone`: Contact phone number of the student.
   - `address`: Address of the student.

2. **TEACHERS Table:**
   - `teacher_id (Primary Key)`: Unique identifier for each teacher.
   - `email`: Email address of the teacher.
   - `full_name`: Full name of the teacher.
   - `dob`: Date of birth of the teacher.
   - `phone`: Contact phone number of the teacher.
   - `specialty`: Area of specialization of the teacher.

3. **ENROLLMENT Table:**
   - `enrollment_id (Primary Key)`: Unique identifier for each enrollment record.
   - `student_id (Foreign Key)`: References the student_id in the STUDENTS table.
   - `classroom_id (Foreign Key)`: References the classroom_id in the CLASSROOMS table.
   - `enrollment_date`: Date when the student was enrolled.

4. **CLASSROOMS Table:**
   - `classroom_id (Primary Key)`: Unique identifier for each classroom.
   - `grade`: Grade or level associated with the classroom.
   - `section`: Section identifier for the classroom.

5. **COURSES Table:**
   - `course_id (Primary Key)`: Unique identifier for each course.
   - `name`: Name of the course.
   - `description`: Description of the course.

6. **MARKS Table:**
   - `mark_id (Primary Key)`: Unique identifier for each mark.
   - `course_id (Foreign Key)`: References the course_id in the COURSES table.
   - `student_id (Foreign Key)`: References the student_id in the STUDENTS table.
   - `mark`: The mark or grade assigned to the student.
   - `mark_date`: Date when the mark was assigned.

### Relationships

- Each student can be enrolled in multiple classes.
- Each student can have multiple marks in different courses.
- Each teacher can teach multiple courses.
- Each classroom can have multiple enrollments.
- Each classroom can have a study schedule (not shown in the schema).

### Constraints

- **Primary Key Constraints:** Ensure the uniqueness of primary key columns in each table.
- **Foreign Key Constraints:** Enforce referential integrity between tables.
- **Check Constraints:** Ensure that data entered adheres to specific conditions.
- **Unique Constraints:** Enforce uniqueness on certain columns.
- **Default Constraints:** Specify default values for columns where applicable.

#### Enjoy using ! Feel free to contribute to its development and expand its capabilities as needed.

 
