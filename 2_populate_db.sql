INSERT INTO Section (CourseNo, SectionNo, Instructor)
    VALUES
    ('CSC130',9,'Y. Chen'),
    ('CSC130',8,'Y. Chen'),
    ('CSC130',7,'D. Fletter'),
    ('CSC131',6,'D. Nguyen'),
    ('CSC131',5,'D. Nguyen'),
    ('CSC133',4,'D. Nguyen'),
    ('CSC137', 0, 'G. Morris'),
    ('CSC134',3,'D. Nguyen'),
    ('CSC134',2,'X. Sun'),
    ('CSC135',1,'A. Radimsky');


INSERT INTO Course (CourseNo, CourseName, Department)
VALUES
	
	('CSC130', 'Data Structures and Algorithms', 'Computer Science'),
	('CSC133', 'Object-Oriented Programming', 'Computer Science'),
	('CSC134', 'Database Management Systems', 'Computer Science'),
	('CSC135', 'Computer Theory and Prog Lang.', 'Computer Science'),
	('CSC137','Computer Organization','Computer Science'),
	('CSC131', 'Computer Software Engineering', 'Computer Science');

INSERT INTO ClassRoom (RoomNo, Building, Capacity)
Values
	(5029, 'RVR', 30),
	(1003, 'RVR', 28),
	(1001, 'RVR', 29),
	(1015, 'DGH', 45),
	(1023, 'LIB', 20);
INSERT INTO Student (SSN, FirstName, LastName, Street, City, State, Zip)
    VALUES
    	('789112399','Maureen','Carpenter','66 Wagon Street','Ankey','IA','50023'),
    	('789112398','Al','Vargas','894 Redwood Street','Wyoming','MI','49509'),
    	('789112397','Sara','Fields','297 Manhattan Drive','Stuart','FL','34997'),
	('456789133','Dale','Cooper','66 Grand Rio Circle','Portland','OR','66357'),
	('789112349','Timothy','Smith','356 Rio Grande Ave','Spring Falls','VA','94472'),
	(411996126, 'Tom', 'Hansen', '76 Kingston Street', 'Parlin', 'NJ', 32345),
    	(262556453, 'Katie', 'Black', '2 Hartford Court', 'York', 'PA', 23478),
    	(457634643, 'Timmy', 'Warner', '641 Market Ave.', 'Bethel Park', 'PA', 15102),
    	(368989472, 'Austin', 'Powers', '7256 South Blue Spring St.', 'West New York', 'NJ', 07093),
    	(789353489, 'Henry', 'Dredge', '169 Selby Street', 'Richmond', 'VA', 23223),
    	(123890365, 'Jenny', 'Craigs', '41 South Road', 'Grand Island', 'NE', 68801);

INSERT INTO Enrolls (SSN, SectionNo, CourseNo)
VALUES
(789112399, 9, 'CSC130'),
(789112398, 8, 'CSC130'),
(789112397, 4, 'CSC133'),
(456789133, 4, 'CSC133'),
(411996126, 6, 'CSC131'),
(789112349, 5, 'CSC131'),
(411996126, 3, 'CSC134'),
(262556453, 2, 'CSC134'),
(411996126, 1, 'CSC135'),
(262556453, 1, 'CSC135'),
(123890365, 0, 'CSC137');

INSERT INTO Exam (CourseNo, SectionNo, ExamNo, E_Date, E_Time)
VALUES
	('CSC130', 9, 13, '2017-05-10', '15:30:00'),
	('CSC130', 8, 2, '2017-05-09', '12:00:00'),
	('CSC133', 4, 1, '2017-05-06', '17:30:00'),
	('CSC133', 3, 2, '2017-05-06', '19:30:00'),
	('CSC134', 3, 1, '2017-07-13', '15:15:00'),
	('CSC134', 2, 2, '2017-07-13', '17:15:00'),
	('CSC134', 3, 3, '2017-08-14', '13:15:00'),
	('CSC135', 1, 1, '2018-03-16', '09:00:00'),
	('CSC131', 5, 2, '2018-03-18', '08:00:00'),
	('CSC137', 0, 8, '2017-04-12', '7:30:00');
INSERT INTO Takes (SSN, CourseNo, SectionNo, ExamNo, Result)
VALUES
	(123890365, 'CSC130', 5, 13, 'A'),
	(123890365, 'CSC133', 3, 2, 'A'),
	(123890365, 'CSC135', 1, 8, 'A'),
	(123890365, 'CSC137', 0, 8, 'A'),
	(262556453, 'CSC131', 5, 2, 'A'),
	(262556453, 'CSC130', 8, 2, 'B'),
	(368989472, 'CSC133', 4, 1, 'B'),
	(368989472, 'CSC131', 5, 2, 'C'),
	(368989472, 'CSC135', 1, 8, 'F'),
	(411996126, 'CSC134', 3, 3, 'D'),
	(411996126, 'CSC135', 1, 8, 'B'),
	(457634643, 'CSC134', 3, 3, 'C'),
	(457634643, 'CSC131', 5, 2, 'B'),
	(789353489, 'CSC135', 1, 1, 'B'),
	(789353489, 'CSC137', 4, 1, 'A');
	
INSERT INTO ConductedIn (RoomNo, Building, CourseNo, SectionNo, ExamNo)
VALUES
	(5029, 'RVR', 'CSC137', 0, 8),
	(5029, 'RVR', 'CSC134', 3, 3),
	(1023, 'LIB', 'CSC133', 4, 1),
	(1023, 'LIB', 'CSC135', 1, 8),
	(5029, 'RVR', 'CSC133', 3, 2),
	(1001, 'RVR', 'CSC135', 1, 1),
	(1015, 'DGH', 'CSC131', 5, 2),
	(1015, 'DGH', 'CSC130', 5, 13);