CREATE TABLE Student (
    StudentID VARCHAR2(8) PRIMARY KEY,
    StudentName VARCHAR2(100) NOT NULL,
    Age NUMBER(3)
);

CREATE TABLE Lecturer (
    LecturerID NUMBER PRIMARY KEY,
    LecturerName VARCHAR2(100) NOT NULL
);

CREATE TABLE Module (
    ModuleID VARCHAR2(10) PRIMARY KEY,
    ModuleName VARCHAR2(100) NOT NULL
);

CREATE TABLE Book (
    BookID NUMBER PRIMARY KEY,
    Title VARCHAR2(200) NOT NULL
);

CREATE TABLE Borrowing (
    BorrowID NUMBER PRIMARY KEY,
    StudentID VARCHAR2(8) NOT NULL,
    BookID NUMBER NOT NULL,
    BorrowDate DATE NOT NULL,
    CONSTRAINT fk_borrow_student
        FOREIGN KEY (StudentID)
        REFERENCES Student(StudentID),
    CONSTRAINT fk_borrow_book
        FOREIGN KEY (BookID)
        REFERENCES Book(BookID)
);

CREATE TABLE Student_Module (
    StudentID VARCHAR2(8),
    ModuleID VARCHAR2(10),

    CONSTRAINT pk_student_module
        PRIMARY KEY (StudentID, ModuleID),

    CONSTRAINT fk_sm_student
        FOREIGN KEY (StudentID)
        REFERENCES Student(StudentID),

    CONSTRAINT fk_sm_module
        FOREIGN KEY (ModuleID)
        REFERENCES Module(ModuleID)
);

CREATE TABLE Lecturer_Module (
    LecturerID NUMBER,
    ModuleID VARCHAR2(10),

    CONSTRAINT pk_lecturer_module
        PRIMARY KEY (LecturerID, ModuleID),

    CONSTRAINT fk_lm_lecturer
        FOREIGN KEY (LecturerID)
        REFERENCES Lecturer(LecturerID),

    CONSTRAINT fk_lm_module
        FOREIGN KEY (ModuleID)
        REFERENCES Module(ModuleID)
);

ALTER TABLE Student
MODIFY StudentID VARCHAR2(9);

INSERT INTO Student (StudentID, StudentName, Age)
VALUES ('CIS24-001', 'Dikitso Motona', 21);

INSERT INTO Student (StudentID, StudentName, Age)
VALUES ('CIS24-002', 'Thapelo Molefe', 22);

INSERT INTO Student (StudentID, StudentName, Age)
VALUES ('CIS24-003', 'Gorata Khupe', 20);

INSERT INTO Student (StudentID, StudentName, Age)
VALUES ('CIS24-004', 'Tsholofelo Moyo', 23);

INSERT INTO Student (StudentID, StudentName, Age)
VALUES ('CIS24-005', 'Kagiso Sebego', 21);

INSERT INTO Lecturer (LecturerID, LecturerName)
VALUES (101, 'Dr. Kgosi');

INSERT INTO Lecturer (LecturerID, LecturerName)
VALUES (102, 'Dr. Molefi');

INSERT INTO Lecturer (LecturerID, LecturerName)
VALUES (103, 'Ms. Dube');

INSERT INTO Lecturer (LecturerID, LecturerName)
VALUES (104, 'Mr. Moagi');

INSERT INTO Lecturer (LecturerID, LecturerName)
VALUES (105, 'Dr. Phiri');

INSERT INTO Module (ModuleID, ModuleName)
VALUES ('M101', 'Database Systems');

INSERT INTO Module (ModuleID, ModuleName)
VALUES ('M102', 'Data Analytics');

INSERT INTO Module (ModuleID, ModuleName)
VALUES ('M103', 'Business Intelligence');

INSERT INTO Module (ModuleID, ModuleName)
VALUES ('M104', 'Programming');

INSERT INTO Module (ModuleID, ModuleName)
VALUES ('M105', 'Information Systems');

INSERT INTO Book (BookID, Title)
VALUES (201, 'Database Systems Concepts');

INSERT INTO Book (BookID, Title)
VALUES (202, 'SQL Fundamentals');

INSERT INTO Book (BookID, Title)
VALUES (203, 'Introduction to Data Analytics');

INSERT INTO Book (BookID, Title)
VALUES (204, 'Business Intelligence Guide');

INSERT INTO Book (BookID, Title)
VALUES (205, 'Programming Fundamentals');

ALTER TABLE Borrowing
MODIFY StudentID VARCHAR2(9);

INSERT INTO Borrowing (BorrowID, StudentID, BookID, BorrowDate)
VALUES (301, 'CIS24-001', 201, DATE '2025-01-15');

INSERT INTO Borrowing (BorrowID, StudentID, BookID, BorrowDate)
VALUES (302, 'CIS24-002', 202, DATE '2025-02-10');

INSERT INTO Borrowing (BorrowID, StudentID, BookID, BorrowDate)
VALUES (303, 'CIS24-003', 201, DATE '2025-03-05');

INSERT INTO Borrowing (BorrowID, StudentID, BookID, BorrowDate)
VALUES (304, 'CIS24-004', 203, DATE '2025-04-12');

INSERT INTO Borrowing (BorrowID, StudentID, BookID, BorrowDate)
VALUES (305, 'CIS24-005', 201, DATE '2025-05-20');

INSERT INTO Borrowing (BorrowID, StudentID, BookID, BorrowDate)
VALUES (306, 'CIS24-001', 204, DATE '2025-06-15');

INSERT INTO Borrowing (BorrowID, StudentID, BookID, BorrowDate)
VALUES (307, 'CIS24-002', 202, DATE '2025-07-08');

INSERT INTO Borrowing (BorrowID, StudentID, BookID, BorrowDate)
VALUES (308, 'CIS24-003', 205, DATE '2025-08-18');

ALTER TABLE Student_Module
MODIFY StudentID VARCHAR2(9);

INSERT INTO Student_Module (StudentID, ModuleID)
VALUES ('CIS24-001', 'M101');

INSERT INTO Student_Module (StudentID, ModuleID)
VALUES ('CIS24-001', 'M102');

INSERT INTO Student_Module (StudentID, ModuleID)
VALUES ('CIS24-002', 'M101');

INSERT INTO Student_Module (StudentID, ModuleID)
VALUES ('CIS24-002', 'M103');

INSERT INTO Student_Module (StudentID, ModuleID)
VALUES ('CIS24-003', 'M101');

INSERT INTO Student_Module (StudentID, ModuleID)
VALUES ('CIS24-003', 'M102');

INSERT INTO Student_Module (StudentID, ModuleID)
VALUES ('CIS24-004', 'M103');

INSERT INTO Student_Module (StudentID, ModuleID)
VALUES ('CIS24-004', 'M104');

INSERT INTO Student_Module (StudentID, ModuleID)
VALUES ('CIS24-005', 'M104');

INSERT INTO Student_Module (StudentID, ModuleID)
VALUES ('CIS24-005', 'M105');

INSERT INTO Lecturer_Module (LecturerID, ModuleID)
VALUES (101, 'M101');

INSERT INTO Lecturer_Module (LecturerID, ModuleID)
VALUES (102, 'M102');

INSERT INTO Lecturer_Module (LecturerID, ModuleID)
VALUES (103, 'M103');

INSERT INTO Lecturer_Module (LecturerID, ModuleID)
VALUES (104, 'M104');

INSERT INTO Lecturer_Module (LecturerID, ModuleID)
VALUES (105, 'M105');

INSERT INTO Lecturer_Module (LecturerID, ModuleID)
VALUES (101, 'M103');

INSERT INTO Lecturer_Module (LecturerID, ModuleID)
VALUES (102, 'M101');

DESC Student;

SELECT * FROM Student;

SELECT * FROM Lecturer;

SELECT * FROM Module;

SELECT * FROM Book;

SELECT * FROM Borrowing;

SELECT * FROM Student_Module;

SELECT * FROM Lecturer_Module;

SELECT COUNT(*) AS Number_of_Lecturers
FROM Lecturer;

SELECT COUNT(*) AS Number_of_Modules
FROM Module;

SELECT COUNT(*) AS Number_of_Students
FROM Student;

SELECT 
    s.StudentName,
    COUNT(b.BorrowID) AS Total_Books_Borrowed
FROM Student s
LEFT JOIN Borrowing b
    ON s.StudentID = b.StudentID
GROUP BY s.StudentName
ORDER BY s.StudentName;

SELECT 
    bk.Title,
    COUNT(br.BorrowID) AS Times_Borrowed
FROM Book bk
JOIN Borrowing br
    ON bk.BookID = br.BookID
GROUP BY bk.Title
ORDER BY Times_Borrowed DESC
FETCH FIRST 1 ROW ONLY;

SELECT 
    l.LecturerName,
    m.ModuleName
FROM Lecturer l
JOIN Lecturer_Module lm
    ON l.LecturerID = lm.LecturerID
JOIN Module m
    ON lm.ModuleID = m.ModuleID
ORDER BY l.LecturerName, m.ModuleName;

SELECT
    m.ModuleName,
    COUNT(sm.StudentID) AS Number_of_Students
FROM Module m
LEFT JOIN Student_Module sm
    ON m.ModuleID = sm.ModuleID
GROUP BY m.ModuleName
ORDER BY m.ModuleName;

ALTER TABLE Student
ADD CONSTRAINT chk_student_id_format
CHECK (REGEXP_LIKE(StudentID, '^CIS[0-9]{2}-[0-9]{3}$'));

INSERT INTO Student (StudentID, StudentName, Age)
VALUES ('ABC24-001', 'Test Student', 20);

ALTER TABLE Student
ADD CONSTRAINT chk_student_age
CHECK (Age >= 17);

INSERT INTO Student (StudentID, StudentName, Age)
VALUES ('CIS24-006', 'Test Student', 16);

INSERT INTO Student (StudentID, StudentName, Age)
VALUES ('CIS24-006', NULL, 20);

ALTER TABLE Borrowing
ADD CONSTRAINT chk_borrow_date
CHECK (BorrowDate <= DATE '2025-12-31');

INSERT INTO Borrowing (BorrowID, StudentID, BookID, BorrowDate)
VALUES (309, 'CIS24-001', 201, DATE '2026-01-10');

ALTER TABLE Module
ADD CONSTRAINT uq_module_name
UNIQUE (ModuleName);

INSERT INTO Module (ModuleID, ModuleName)
VALUES ('M106', 'Database Systems');

ALTER TABLE Lecturer
ADD ContactNumber VARCHAR2(8);

ALTER TABLE Lecturer
ADD CONSTRAINT chk_lecturer_contact
CHECK (REGEXP_LIKE(ContactNumber, '^[0-9]{8}$'));

UPDATE Lecturer
SET ContactNumber = '7123456'
WHERE LecturerID = 101;

CREATE OR REPLACE TRIGGER trg_prevent_student_changes
BEFORE INSERT OR UPDATE ON Student
BEGIN
    RAISE_APPLICATION_ERROR(
        -20001,
        'INSERT and UPDATE operations on STUDENT are not allowed.'
    );
END;
/

INSERT INTO Student (StudentID, StudentName, Age)
VALUES ('CIS24-006', 'Test Student', 20);

CREATE OR REPLACE FUNCTION add_lecturer(
    p_lecturer_id NUMBER,
    p_lecturer_name VARCHAR2,
    p_contact_number VARCHAR2
) RETURN NUMBER
IS
BEGIN
    INSERT INTO Lecturer (LecturerID, LecturerName, ContactNumber)
    VALUES (p_lecturer_id, p_lecturer_name, p_contact_number);

    RETURN p_lecturer_id;
END;
/

DECLARE
    v_id NUMBER;
BEGIN
    v_id := add_lecturer(106, 'Dr. Dube', '71234567');

    DBMS_OUTPUT.PUT_LINE('Lecturer added with ID: ' || v_id);
END;
/

DECLARE
    CURSOR c_module_lecturers IS
        SELECT
            m.ModuleName,
            COUNT(lm.LecturerID) AS Lecturer_Count
        FROM Module m
        LEFT JOIN Lecturer_Module lm
            ON m.ModuleID = lm.ModuleID
        GROUP BY m.ModuleName
        ORDER BY m.ModuleName;
BEGIN
    FOR r IN c_module_lecturers LOOP
        DBMS_OUTPUT.PUT_LINE(
            r.ModuleName || ' - ' || r.Lecturer_Count || ' lecturer(s)'
        );
    END LOOP;
END;
/