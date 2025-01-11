--insert data into authors table
INSERT INTO authors (author_name) VALUES
('J.K. Rowling'),
('George R.R. Martin'),
('Jane Austen'),
('Mark Twain'),
('Agatha Christie');


--insert data into categories table
INSERT INTO categories (category_name) VALUES
('Fiction'),
('Non-Fiction'),
('Science'),
('Technology'),
('History'),
('Biography');


--insert data into blogs table
INSERT INTO blogs (title, body, category_id, author_id) VALUES
('The Magic of Hogwarts', 'A deep dive into the Harry Potter universe.', 1, 1),

('Game of Thrones Explained', 'An analysis of the complex world of Westeros.', 1, 2),

('Pride and Prejudice Review', 'A critique of Jane Austen\'s classic novel.', 1, 3),

('The Adventures of Huckleberry Finn', 'Exploring the themes of freedom and adventure.', 5, 4),

('Mystery of the Orient Express', 'A breakdown of Agatha Christie\'s masterpiece.', 1, 5);

