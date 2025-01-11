-- Active: 1736185236225@@127.0.0.1@3306@blogs

--Authors Table create----
CREATE TABLE authors (
    id INT AUTO_INCREMENT PRIMARY KEY not NULL,
    author_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--Categories Table create--
CREATE TABLE categories(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    category_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


--Blogs Table create--
CREATE TABLE blogs(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    title VARCHAR(255) NOT NULL,
    body TEXT NOT NULL,
    category_id INT NOT NULL,
    author_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY(category_id) REFERENCES categories(id) ON UPDATE CASCADE ON DELETE CASCADE,

    FOREIGN KEY(author_id) REFERENCES authors(id) ON DELETE CASCADE ON UPDATE CASCADE
);


-- ১. Authors Table: 
-- 1. How do you add a new author to the authors table? 
INSERT INTO authors (author_name) VALUES
('Rabindranath Tagor');

-- 2. How do you retrieve all authors from the authors table? 
SELECT * FROM authors;

-- 3. How do you retrieve a specific author by their ID from the authors table? 
SELECT * FROM authors WHERE id = 4;

-- 4. How do you update an author’s name in the authors table? 
UPDATE authors SET author_name = "Kazi Nazrul Islam" WHERE id = 6;

-- 5. How do you delete an author by their ID from the authors table? 
DELETE FROM authors WHERE id = 6;



-- ২. Categories Table: 
-- 6. How do you add a new category to the categories table? 
INSERT INTO categories (category_name) VALUES
('Education');

-- 7. How do you retrieve all categories from the categories table? 
SELECT * FROM categories 

-- 8. How do you retrieve a specific category by its ID from the categories table? 
SELECT * FROM categories WHERE id = 5;

-- 9. How do you update a category’s name in the categories table? 
UPDATE categories SET category_name = 'Physical Education' WHERE id = 7;

-- 10. How do you delete a category by its ID from the categories table?
DELETE FROM categories WHERE id = 7;



-- ৩. Blogs Table: 
-- 11. How do you add a new blog to the blogs table? 
INSERT INTO blogs (title, body, category_id, author_id) VALUES
('Biography of Kazi Nazrul Islam', 'Kazi Nazrul Islam is our national poet in Bangladesh', 2, 1);

-- 12. How do you retrieve all blogs from the blogs table? 
SELECT * FROM blogs;

-- 13. How do you retrieve a specific blog by its ID from the blogs table? 
SELECT * FROM blogs WHERE id = 4;

-- 14. How do you retrieve all blogs with their category and author information? 
SELECT blogs.title, blogs.body, categories.category_name, authors.author_name
FROM blogs
JOIN categories ON blogs.category_id = categories.id
JOIN authors ON blogs.author_id = authors.id

-- 15. How do you update a blog’s title in the blogs table? 
UPDATE blogs SET title = 'Kazi Nazrul Islam' WHERE id = 6;

-- 16. How do you update a blog’s category or author in the blogs table? 
UPDATE blogs SET category_id = 4, author_id = 3 WHERE id = 6;

-- 17. How do you delete a blog by its ID from the blogs table? 
DELETE FROM blogs WHERE id = 6;


-- ৪. Specific Queries: 
-- 18. How do you get all blogs written by a specific author?
SELECT authors.author_name, blogs.title 
FROM blogs
JOIN authors ON blogs.author_id = authors.id
WHERE author_id = 1;


-- 19. How do you get all blogs under a specific category? 
SELECT categories.category_name, blogs.title, blogs.body
FROM blogs
JOIN categories ON blogs.category_id = categories.id
WHERE category_id = 1;