### Task 1
#### Satış cədvəli yaratmaq və ümumi qazancı sıralamaq:


CREATE TABLE sales (
    product_id INT,
    quantity INT,
    price_per_unit DECIMAL(10, 2)
);


INSERT INTO sales (product_id, quantity, price_per_unit) VALUES
(1, 10, 5.50),
(2, 5, 12.00),
(1, 7, 5.50),
(3, 2, 20.00),
(2, 3, 12.00);


SELECT 
    product_id, 
    SUM(quantity * price_per_unit) AS total_revenue
FROM 
    sales
GROUP BY 
    product_id
ORDER BY 
    total_revenue DESC;


### Task 2
#### İşçilər cədvəlini yaratmaq və şərtə uyğun olaraq sıralamaq:



CREATE TABLE employees (
    name VARCHAR(50),
    salary DECIMAL(10, 2),
    department VARCHAR(50)
);


INSERT INTO employees (name, salary, department) VALUES
('Alice', 700, 'Sales'),
('Bob', 650, 'Sales'),
('Charlie', 500, 'Marketing'),
('David', 800, 'Sales'),
('Eve', 600, 'HR');


SELECT 
    name, 
    salary
FROM 
    employees
WHERE 
    department = 'Sales' AND salary > 600
ORDER BY 
    salary DESC;


### Task 3
#### Kitablar cədvəlini yaratmaq və şərtə uyğun olaraq sıralamaq:

CREATE TABLE books (
    title VARCHAR(100),
    genre VARCHAR(50),
    publication_year INT
);


INSERT INTO books (title, genre, publication_year) VALUES
('Book A', 'Fiction', 2016),
('Book B', 'Non-Fiction', 2018),
('Book C', 'Science Fiction', 2014),
('Book D', 'Fantasy', 2020);


SELECT 
    title, 
    genre, 
    publication_year
FROM 
    books
WHERE 
    publication_year > 2015
ORDER BY 
    genre ASC;


### Task 4
#### Filmlər cədvəlini yaratmaq və şərtə uyğun olaraq sıralamaq:

CREATE TABLE movies (
    title VARCHAR(100),
    release_date DATE,
    rating DECIMAL(3, 1)
);


INSERT INTO movies (title, release_date, rating) VALUES
('Movie A', '1999-05-14', 7.5),
('Movie B', '2001-07-20', 8.2),
('Movie C', '1995-11-19', 6.8),
('Movie D', '1998-03-22', 7.9);


SELECT 
    title, 
    release_date, 
    rating
FROM 
    movies
WHERE 
    release_date < '2000-01-01'
ORDER BY 
    release_date ASC, 
    rating DESC;


