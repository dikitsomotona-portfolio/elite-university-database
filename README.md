# Elite University Database

## Project Overview

This project implements a relational database system for **Elite University** using Oracle SQL and PL/SQL.

The database manages students, lecturers, modules, books and borrowing records, while also demonstrating relationships between students, modules and lecturers.

The project covers database design, data insertion, SQL queries, business-rule enforcement and advanced PL/SQL operations.

## Technologies Used

* Oracle SQL
* Oracle PL/SQL
* Relational Database Design
* Constraints
* SQL Queries
* Triggers
* Functions
* Cursors

## Database Structure

The database consists of the following tables:

* `Student` – stores student information.
* `Lecturer` – stores lecturer information.
* `Module` – stores university module information.
* `Book` – stores book information.
* `Borrowing` – records books borrowed by students.
* `Student_Module` – manages student-module registrations.
* `Lecturer_Module` – manages lecturer-module assignments.

Primary keys and foreign keys are used to maintain relationships and referential integrity between the tables.

## Task 2a – Schema and Data

The project creates all required tables using appropriate Oracle data types.

The database includes:

* Primary keys
* Foreign keys
* Composite primary keys
* `NOT NULL` constraints
* Sample records for each table

The `Student_Module` and `Lecturer_Module` tables are used to manage many-to-many relationships between students and modules and lecturers and modules.

## Task 2b – SQL Queries

SQL queries were developed to retrieve information required by the university.

The queries include:

* Counting the number of students, lecturers and modules
* Displaying students and the number of books they borrowed
* Finding the most borrowed book
* Displaying lecturers and the modules they teach
* Displaying modules and the number of students registered for each module

These queries demonstrate the use of:

* `COUNT`
* `JOIN`
* `LEFT JOIN`
* `GROUP BY`
* `ORDER BY`
* Aggregate functions
* Result filtering

## Task 2c – Business Rules and Constraints

Business rules were implemented using Oracle constraints.

The database enforces rules including:

* Student IDs must follow the `CISXX-XXX` format.
* Student age must be at least 17.
* Student names cannot be `NULL`.
* Borrowing dates cannot be later than 31 December 2025.
* Module names must be unique.
* Lecturer contact numbers are stored as 8-digit values.

Regular expressions were used where appropriate to validate formatted values such as student IDs and contact numbers.

Test records were also used to verify that invalid data was rejected by the database constraints.

## Task 3a – PL/SQL

The project demonstrates advanced Oracle PL/SQL functionality.

### Trigger

A database trigger was created to prevent `INSERT` and `UPDATE` operations on the `Student` table.

### Function

A PL/SQL function called `add_lecturer` was created to insert a lecturer using supplied parameters and return the lecturer ID.

### Cursor

A cursor was used to generate a report showing each module and the number of lecturers assigned to it.

## Key Concepts Demonstrated

* Relational database design
* Primary and foreign keys
* Composite keys
* Referential integrity
* Data validation
* SQL joins
* Aggregate functions
* Grouping and sorting
* Regular expressions
* Check constraints
* Unique constraints
* Oracle PL/SQL
* Database triggers
* PL/SQL functions
* Cursors

## Project Outcome

This project demonstrates the development of a university database using Oracle SQL and PL/SQL.

It combines relational database design with SQL querying, business-rule enforcement and advanced database programming to manage and retrieve university data.

## File

The repository contains the SQL script used to create, populate and query the Elite University database as well as the implemented constraints and PL/SQL operations.

