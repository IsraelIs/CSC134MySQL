/*Query1*/
SELECT Student.SSN,FirstName,LastName
FROM Student,Enrolls,Course
WHERE Student.SSN = Enrolls.SSN AND Enrolls.CourseNo = Course.CourseNo AND CourseName = 'Database Management Systems';

/*	Query2	*/
SELECT Course.CourseName AS 'Course',COUNT(DISTINCT Section.SectionNo) AS '# of Sections' 
FROM Course,Section 
WHERE Course.CourseNo = Section.CourseNo 
GROUP BY Course.CourseNo 
HAVING COUNT(DISTINCT Section.SectionNo) > 2;

/*	Query3	*/
SELECT Enrolls.CourseNo,Enrolls.SectionNo,Course.CourseName
FROM Enrolls,Course
WHERE Enrolls.CourseNo = Course.CourseNo
GROUP BY Enrolls.CourseNo,Enrolls.SectionNo
HAVING COUNT(DISTINCT Enrolls.SSN) >= 3;

/*	Query4	*/
SELECT Student.SSN,Student.FirstName,Student.LastName
FROM Student INNER JOIN Takes ON Student.SSN = Takes.SSN
GROUP BY Student.SSN,Student.FirstName,Student.LastName,Takes.Result
HAVING COUNT(Takes.Result) >= 3 AND Takes.Result = 'A'
ORDER BY Student.SSN;

/*	Query5	*/
SELECT Exam.ExamNo, Exam.E_Date, Exam.CourseNo, Exam.SectionNo, ClassRoom.Capacity, ClassRoom.RoomNo
FROM 	(SELECT * 
	FROM ConductedIn
	WHERE ConductedIn.Building = 'RVR'
	) AS rvr
INNER JOIN Exam ON rvr.CourseNo = Exam.CourseNo AND rvr.SectionNo = Exam.SectionNo
	AND rvr.ExamNo = Exam.ExamNo
INNER JOIN ClassRoom ON rvr.RoomNo = ClassRoom.RoomNo AND rvr.Building = ClassRoom.Building;

/*	Query6	*/
SELECT Student.SSN, Student.FirstName, Student.LastName
FROM Student,Enrolls
WHERE Student.SSN IN	(SELECT Student.SSN
			FROM Student,Enrolls
			WHERE Student.SSN = Enrolls.SSN AND Enrolls.CourseNo = 'CSC133')
	AND Student.SSN = Enrolls.SSN AND Enrolls.CourseNo = 'CSC137';

/*	Query7	*/
SELECT Student.SSN, Student.FirstName, Student.LastName, Section.SectionNo, Section.Instructor
FROM Student,Enrolls,Course,Section
WHERE Student.SSN = Enrolls.SSN AND Enrolls.CourseNo = Course.CourseNo
	AND Enrolls.CourseNo = Section.CourseNo AND Enrolls.SectionNo = Section.SectionNo
	AND Course.CourseName = 'Data Structures and Algorithms';