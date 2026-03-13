--All Students
SELECT * FROM students;

--Books issued
SELECT s.name, b.title
FROM issue_records i
JOIN students s ON i.student_id = s.student_id
JOIN books b ON i.book_id = b.book_id;

--Borrow History
SELECT s.name, b.title, i.issue_date
FROM issue_records i
JOIN students s ON i.student_id = s.student_id
JOIN books b ON i.book_id = b.book_id;

--Borrow count of each student
SELECT s.name, COUNT(i.book_id)
FROM students s
LEFT JOIN issue_records i
ON s.student_id = i.student_id
GROUP BY s.name;
