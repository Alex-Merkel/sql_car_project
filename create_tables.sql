-- Creating database:
create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR (100),
	address VARCHAR (150),
	phone VARCHAR (50)
);

create table salesperson(
	salesperson_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table mechanic(
	mechanic_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table invoice(
	invoice_id SERIAL primary key,
	amount numeric(7,2),
	invoice_date Date default CURRENT_DATE,
	salesperson_id INTEGER not null,
	customer_id INTEGER not null,
	foreign key(salesperson_id) references salesperson(salesperson_id),
	foreign key(customer_id) references customer(customer_id)
);

create table service(
	service_id SERIAL primary key,
	buy_parts VARCHAR(50),
	amount numeric(5,2),
    service_date Date default CURRENT_DATE,
	mechanic_id INTEGER not null,
	customer_id INTEGER not null,
	foreign key(mechanic_id) references mechanic(mechanic_id),
	foreign key(customer_id) references customer(customer_id)
);

create table car(
	car_id SERIAL primary key,
	sale_service VARCHAR(50),
	new_used VARCHAR (50),
	make VARCHAR (50),
	model VARCHAR (50),
	year_ INTEGER,
	invoice_id INTEGER,
	service_id INTEGER,
	foreign key(invoice_id) references invoice(invoice_id),
	foreign key(service_id) references service(service_id)
);


