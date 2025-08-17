-- A Magical Database for Your Dream Online Bookstore Adventure!

CREATE DATABASE IF NOT EXISTS alx_book_store;

USE alx_book_store;

CREATE TABLE IF NOT EXISTS Authors (
    author_id INT PRIMARY KEY NOT NULL,
    author_name VARCHAR(215)
);

CREATE TABLE IF NOT EXISTS Books (
    book_id INT PRIMARY KEY NOT NULL,
    title VARCHAR(50),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    price DOUBLE,
    publication_date DATE
);

CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT PRIMARY KEY NOT NULL,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    adress TEXT
);

CREATE TABLE IF NOT EXISTS Orders (
    order_id INT PRIMARY KEY NOT NULL,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    order_date DATE
);

CREATE TABLE IF NOT EXISTS Order_Details (
    orderdetailid INT PRIMARY KEY NOT NULL,
    order_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    book_id INT,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    quantity DOUBLE
);
