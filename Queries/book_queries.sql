--All Books
SELECT * FROM books;

--Available Books
SELECT * FROM books
WHERE availablity = TRUE;

--Total Books count
SELECT COUNT(*) AS total_books
FROM books;

--Books by genre
SELECT genre, COUNT(*) 
FROM books
GROUP BY genre;
