CREATE Table RegisterCourse(
    registerID integer AUTO_INCREMENT PRIMARY KEY,
    studentID varchar(10)	not null,
    courseID varchar(10)	not null,
    section varchar(3)	not null,
    term TINYINT,
    stu_year year,
    registerDate date,
    grade varchar(3),
    gradeDate date
    );

-- เพิ่มข้อมูลลงในตาราง
INSERT INTO RegisterCourse(
    studentID,
    courseID ,
    section, 
    term,
    stu_year,
    registerDate,
    grade,
    gradeDate
    )
VALUES (
    '6604101390','10301223','99','1','2023','2023-06-01',null,null
    );

INSERT INTO RegisterCourse (
    studentID,
    courseID,
    section,
    term,
    stu_year,
    registerDate,
    grade,
    gradeDate
)
VALUES
('6604101390', '10301111', '01', 1, 2023, '2023-01-01', NULL, NULL),
('6604101390', '10301112', '01', 1, 2023, '2023-01-01', NULL, NULL),
('6604101390', '10100214', '01', 1, 2023, '2023-01-01', NULL, NULL),
('6604101390', '10700301', '01', 1, 2023, '2023-01-01', NULL, NULL),
('6604101390', '10700308', '01', 1, 2023, '2023-01-01', NULL, NULL),
('6604101390', '10305108', '01', 1, 2023, '2023-01-01', NULL, NULL),
 
('6604101390', '10301114', '02', 2, 2023, '2023-01-01', NULL, NULL),
('6604101390', '10301212', '02', 2, 2023, '2023-01-01', NULL, NULL),
('6604101390', '10301113', '02', 2, 2023, '2023-01-01', NULL, NULL),
('6604101390', '10800113', '02', 2, 2023, '2023-01-01', NULL, NULL),
('6604101390', '10700309', '02', 2, 2023, '2023-01-01', NULL, NULL),
 
('6604101390', '10301222', '02', 1, 2024, '2024-01-01', NULL, NULL),
('6604101390', '10301223', '02', 1, 2024, '2024-01-01', NULL, NULL),
('6604101390', '10301231', '02', 1, 2024, '2024-01-01', NULL, NULL),
('6604101390', '10301225', '02', 1, 2024, '2024-01-01', NULL, NULL),
('6604101390', '10301211', '02', 1, 2024, '2024-01-01', NULL, NULL),
('6604101390', '10700313', '02', 1, 2024, '2024-01-01', NULL, NULL),
 
('6604101390', '10301221', '02', 2, 2024, '2024-06-01', NULL, NULL),
('6604101390', '10301224', '02', 2, 2024, '2024-06-01', NULL, NULL),
('6604101390', '10301232', '02', 2, 2024, '2024-06-01', NULL, NULL),
('6604101390', '10301233', '02', 2, 2024, '2024-06-01', NULL, NULL),
('6604101390', '10304205', '02', 2, 2024, '2024-06-01', NULL, NULL),
('6604101390', '10700105', '02', 2, 2024, '2024-06-01', NULL, NULL),
('6604101390', '10301233', '02', 2, 2024, '2024-06-01', NULL, NULL),
('6604101390', '10304205', '02', 2, 2024, '2024-06-01', NULL, NULL),
('6604101390', '10700105', '02', 2, 2024, '2024-06-01', NULL, NULL);

-- ดูตาราง RegisterCourse * = all
SELECT * FROM RegisterCourse;

-- UPDATE table_name
-- SET column = value1,value2,value3,....
-- WHERE condition;
-- แก้ไขเกรด วิชา 103012223 เป็นเกรด A
UPDATE RegisterCourse
SET grade = 'A'
WHERE courseID = '10301223'
    and term = 1
    and stu_year = 2023;

-- เปลี่ยนเกรดเทอม 2 ปี66 เป็น F ทั้งหมด
UPDATE RegisterCourse 
SET grade = 'F' 
WHERE term = 2  
    and stu_year = 2023;

-- ลบวิชาที่ลงทะเบียนในเทอม 1/2023
-- DELETE FROM table_name WHERE condition;
DELETE FROM RegisterCourse
WHERE term = 1
    and stu_year = 2024;

CREATE Table Timetable(
    timeTableID integer AUTO_INCREMENT PRIMARY KEY,
    studentID varchar(10),
    courseID varchar(10),
    section varchar(2),
    term varchar(2),
    stu_year year,
    classType varchar(10),
    learnDay varchar(20),
    startTime time,
    endTime time,
    room varchar(15),
    building varchar(20)
    );

INSERT INTO Timetable(
    studentID,
    courseID,
    section,
    term,
    stu_year,
    classType,
    learnDay,
    startTime,
    endTime,
    room,
    building
    )
VALUES
    ('6604101390', '10301222', '01', '1', 2024, 'บรรยาย', 'วันจันทร์', '13:00:00','15:00:00', '3203', '141 อาคารจุฬาพรณ์'),
    ('6604101390', '10301222', '01', '1', 2024, 'ปฏบัติ', 'วันพฤหัสบดี', '08:30:00','11:30:00', 'Lab คอม 3-4', '105 ตึก 60 ปี'),
    ('6604101390', '10301223', '01', '1', 2024, 'บรรยาย', 'วันอังคาร', '13:00:00','15:00:00', '3203', '141 อาคารจุฬาพรณ์'),
    ('6604101390', '10301223', '01', '1', 2024, 'ปฏิบัติ', 'วันจันทร์', '09:00:00','12:00:00', '3203', '141 อาคารจุฬาพรณ์'),
    ('6604101390', '10301231', '01', '1', 2024, 'บรรยาย', 'วันศุกร์', '13:00:00','15:00:00', '3203', '141 อาคารจุฬาพรณ์'),
    ('6604101390', '10301231', '01', '1', 2024, 'ปฏิบัติ', 'วันพฤหัสบดี', '12:30:00', '15:00:00', 'Lab คอม 3-4', '105 ตึก 60 ปี'),
    ('6604101390', '10301225', '01', '1', 2024, 'บรรยาย', 'วันอังคาร', '15:00:00', '17:00:00', '3203', '141 อาคารจุฬาพรณ์'),
    ('6604101390', '10301225', '01', '1', 2024, 'ปฏิบัติ', 'วันพุธ', '09:00:00', '12:00:00', '3203', '141 อาคารจุฬาพรณ์'),
    ('6604101390', '10301211', '01', '1', 2024, 'บรรยาย', 'วันจันทร์', '08:30:00', '10:00:00', '3203', '141 อาคารจุฬาพรณ์'),
    ('6604101390', '10301211', '01', '1', 2024, 'บรรยาย', 'วันอังคาร', '08:30:00', '10:00:00', '3203', '141 อาคารจุฬาพรณ์'),
    ('6604101390', '10700313', '01', '1', 2024, 'บรรยาย', 'วันจันทร์', '13:00:00', '15:00:00', '3203', '141 อาคารจุฬาพรณ์');

UPDATE Timetable
SET learnDay = 'วันเสาร์' 
    and startTime = '10:00:00'
    and endTime = '12:00:00'
WHERE courseID = '10301223'  
    and classType = ' บรรยาย';

DELETE FROM Timetable
WHERE term = 1
    and stu_year = 2024;

-- ใช้ NOT LIKE, <> แทนตัวที่ไม่ต้องการ
-- ใช้ % เพื่อค้นหาคำที่มีใน column ใช้ในตัวอักษรอย่างเดียว
SELECT studentcode, nameth, surnameth
FROM studentID
WHERE programnameth NOT LIKe '%คอม%'
    and levelname <> 2;

-- แสดงข้อมูลรหัสวิชาทั้้งหมดในตาราง RegisterCourse
-- DISTINCT เลือกข้อมูลที่ไม่ซ้ำก้น
SELECT  DISTINCT courseID
FROM RegisterCourse;

-- COUNT() นับรายการ
-- นับจำนวนรายวิชาที่ลงทะเบียนของนักศึกษาแต่ละคน
-- AS เปลี่ยนชื่อตอนแสดงข้อมูล
SELECT COUNT(courseID)
AS countsubject
FROM RegisterCourse
WHERE studentID = '6604101390';