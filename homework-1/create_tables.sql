-- SQL-команды для создания таблиц
create table customers
(
	customer_id varchar(100) primary key,
	company_name varchar(100) NOT NULL,
	contact_name varchar(100) NOT NULL
);


create table employees
(
	employee_id int primary key,
	first_name varchar(100) NOT NULL,
	last_name varchar(100),
	title varchar(100),
	birth_date varchar(100),
	notes text
);
create table orders
(
	order_id int primary key,
	customer_id varchar(100) REFERENCES customers(customer_id) NOT NULL
	employee_id int REFERENCES customers(employees) NOT NULL,
	order_date varchar(100),
	ship_city varchar(100)
);