-- Table 1: Customers
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table 2: Products
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price NUMERIC(10, 2),
    stock_quantity INTEGER,
    category VARCHAR(50)
);

-- Table 3: Orders
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(customer_id),
    order_date DATE,
    status VARCHAR(20),
    total_amount NUMERIC(10, 2),
    shipping_address TEXT
);

-- Table 4: Employees
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    hire_date DATE,
    salary NUMERIC(10, 2)
);

-- Table 5: Payments
CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,
    order_id INTEGER REFERENCES orders(order_id),
    payment_date DATE,
    amount NUMERIC(10, 2),
    payment_method VARCHAR(50),
    transaction_status VARCHAR(20)
);

SELECT * FROM CUSTOMERS

SELECT * FROM products

SELECT * FROM orders

SELECT * FROM employees

SELECT * FROM payments

INSERT INTO orders (order_id, customer_id, order_date, status, total_amount, shipping_address) VALUES
(601, 1, '2023-01-01', 'Shipped', 125.50, '123 Main St, Anytown, CA 12345'),
(602, 2, '2023-01-02', 'Delivered', 200.00, '456 Oak Ave, Somecity, NY 67890'),
(603, 3, '2023-01-03', 'Pending', 75.00, '789 Pine Ln, Othertown, TX 24680'),
(604, 4, '2023-01-04', 'Processing', 150.00, '234 Elm St, Anycity, IL 13579'),
(605, 5, '2023-01-05', 'Shipped', 300.00, '567 Cedar Rd, Anytown, CA 98765'),
(606, 6, '2023-01-06', 'Delivered', 100.00, '890 Main St, Somecity, NY 54321'),
(607, 7, '2023-01-07', 'Pending', 50.00, '123 Oak Ave, Othertown, TX 98765'),
(608, 8, '2023-01-08', 'Processing', 250.00, '456 Pine Ln, Anycity, IL 24680'),
(609, 9, '2023-01-09', 'Shipped', 175.00, '789 Elm St, Anytown, CA 13579'),
(610, 10, '2023-01-10', 'Delivered', 225.00, '234 Cedar Rd, Somecity, NY 67890');

INSERT INTO customers (customer_id, first_name, last_name, email, phone_number) VALUES
(501, 'John1', 'Doe1', 'john1.doe@example.com', '1234560001'),
(502, 'John2', 'Doe2', 'john2.doe@example.com', '1234560002'),
(503, 'John3', 'Doe3', 'john3.doe@example.com', '1234560003'),
(504, 'John4', 'Doe4', 'john4.doe@example.com', '1234560004'),
(505, 'John5', 'Doe5', 'john5.doe@example.com', '1234560005'),
(506, 'John6', 'Doe6', 'john6.doe@example.com', '1234560006'),
(507, 'John7', 'Doe7', 'john7.doe@example.com', '1234560007'),
(508, 'John8', 'Doe8', 'john8.doe@example.com', '1234560008'),
(509, 'John9', 'Doe9', 'john9.doe@example.com', '1234560009'),
(510, 'John10', 'Doe10', 'john10.doe@example.com', '1234560010');

INSERT INTO products (product_id, name, description, price, stock_quantity, category) VALUES
(701, 'Product 1', 'Description 1', 10.99, 100, 'Category A'),
(702, 'Product 2', 'Description 2', 19.99, 50, 'Category B'),
(703, 'Product 3', 'Description 3', 25.00, 200, 'Category A'),
(704, 'Product 4', 'Description 4', 15.50, 75, 'Category C'),
(705, 'Product 5', 'Description 5', 30.00, 30, 'Category B'),
(706, 'Product 6', 'Description 6', 12.75, 120, 'Category A'),
(707, 'Product 7', 'Description 7', 22.50, 60, 'Category C'),
(708, 'Product 8', 'Description 8', 18.00, 90, 'Category B'),
(709, 'Product 9', 'Description 9', 27.50, 40, 'Category A'),
(710, 'Product 10', 'Description 10', 14.25, 110, 'Category C');

INSERT INTO payments (payment_id, order_id, payment_date, amount, payment_method, transaction_status)
VALUES
(801, 101, '2024-01-15', 25.50, 'Credit Card', 'Completed'),
(802, 102, '2024-01-16', 120.00, 'PayPal', 'Completed'),
(803, 103, '2024-01-17', 75.25, 'Debit Card', 'Completed'),
(804, 104, '2024-01-18', 300.00, 'Bank Transfer', 'Pending'),
(805, 105, '2024-01-19', 15.75, 'Credit Card', 'Completed'),
(806, 106, '2024-01-20', 90.50, 'PayPal', 'Completed'),
(807, 107, '2024-01-21', 45.00, 'Debit Card', 'Failed'),
(808, 108, '2024-01-22', 200.00, 'Bank Transfer', 'Completed'),
(809, 109, '2024-01-23', 60.00, 'Credit Card', 'Completed'),
(810, 110, '2024-01-24', 30.25, 'PayPal', 'Completed');

INSERT INTO employees (employee_id, first_name, last_name, department, hire_date, salary) VALUES
(901, 'Aarav', 'Sharma', 'Marketing', '2020-01-15', 55000.00),
(902, 'Aanya', 'Verma', 'Sales', '2019-08-20', 60000.00),
(903, 'Ishaan', 'Gupta', 'Engineering', '2021-03-01', 75000.00),
(904, 'Siya', 'Singh', 'HR', '2018-11-10', 50000.00),
(905, 'Arjun', 'Khan', 'Finance', '2022-02-05', 65000.00),
(906, 'Diya', 'Joshi', 'Marketing', '2020-05-12', 58000.00),
(907, 'Rohan', 'Mehta', 'Sales', '2019-12-01', 62000.00),
(908, 'Priya', 'Reddy', 'Engineering', '2021-07-15', 80000.00),
(909, 'Aryan', 'Patel', 'HR', '2018-09-01', 52000.00),
(910, 'Anika', 'Kumar', 'Finance', '2022-01-20', 68000.00);

SELECT * FROM CUSTOMERS

SELECT * FROM products

SELECT * FROM orders

SELECT * FROM employees

SELECT * FROM payments


SELECT * FROM orders as o
full join customers as c
on o.customer_id=c.customer_id;


select * from payments as p
inner join orders as o
on p.order_id=o.order_id;



select * from payments as p
left join customers as c
on p.payment_id=c.customer_id;




select * from products as p
right join employees as e
on p.product_id=e.employee_id;

select * from products as p
right join employees as e
on p.product_id=e.employee_id;


--4 tables using where query to condtionalize the data.			

SELECT * FROM orders as o
full join customers as c
on o.customer_id=c.customer_id where order_id>200;

select * from payments as p
inner join orders as o
on p.order_id=o.order_id where 100<customer_id and customer_id<150;

select * from payments as p
left join customers as c
on p.payment_id=c.customer_id where order_id>50 and order_id<350;

select * from products as p
right join employees as e
on p.product_id=e.employee_id where salary>=50000.00;


--give 4 example of multi join	


select * from customers as c
join orders as o on c.customer_id=o.customer_id
join products as p on o.order_id= p.product_id;


select * from customers as c
join orders as o on c.customer_id=o.customer_id
join products as p on o.order_id= p.product_id
where stock_quantity> 100;


select * from products as pro
join payments as pa on pro.product_id=pa.payment_id
join orders as o on pa.payment_id= o.order_id;


select * from products as pro
join payments as pa on pro.product_id=pa.payment_id
join orders as o on pa.payment_id= o.order_id
where 100<customer_id and customer_id<150;
