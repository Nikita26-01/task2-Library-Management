-- Inserting into Authors 
INSERT INTO Authors (Name, Bio)
VALUES 
('Chetan Bhagat', 'Indian author known for popular fiction novels.'),
('Arundhati Roy', 'Author of the Booker Prize-winning novel The God of Small Things.'),
('Amish Tripathi', 'Known for mythological fiction like the Shiva Trilogy.');

-- Inserting into Books 
INSERT INTO Books (Title, AuthorID, ISBN, PublishedYear, Genre)
VALUES 
('Five Point Someone', 1, '9788129104595', 2004, 'Campus Novel'),
('The God of Small Things', 2, '9780679457312', 1997, 'Literary Fiction'),
('The Immortals of Meluha', 3, '9789380658742', 2010, 'Mythology');

-- Inserting into Members 
INSERT INTO Members (FullName, Email, Phone, JoinDate)
VALUES 
('Nikita Patil', 'nikitapatil@gmail.com', '9876512345', '2024-01-10'),
('Kamini Chaudhari', NULL, '9823456789', '2024-01-15'),
('Bhagyashri Patil', 'bhagyashripatil@gmail.com', NULL, '2024-01-20');

-- Inserting into BorrowRecords
INSERT INTO BorrowRecords (MemberID, BookID, BorrowDate, ReturnDate)
VALUES 
(1, 1, '2024-06-01', NULL),
(2, 2, '2024-06-05', '2024-06-15'),
(3, 3, '2024-06-10', NULL);

-- UPDATE operations

-- Update phone number for Bhagyashri Patil
UPDATE Members
SET Phone = '9090909090'
WHERE FullName = 'Bhagyashri Patil';

-- Update Genre for "Five Point Someone"
UPDATE Books
SET Genre = 'Campus Novel'
WHERE Title = 'Five Point Someone';

-- Set ReturnDate for Nikita Patil’s borrow record
UPDATE BorrowRecords
SET ReturnDate = '2024-06-25'
WHERE RecordID = 1;

-- DELETE operations

-- Delete Kamini Chaudhari’s borrow record
DELETE FROM BorrowRecords
WHERE MemberID = 2 AND BookID = 2;

-- Delete member Kamini Chaudhari
DELETE FROM Members
WHERE FullName = 'Kamini Chaudhari';

-- Delete the book "The Immortals of Meluha"
DELETE FROM Books
WHERE Title = 'The Immortals of Meluha';
