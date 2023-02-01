
-- Adding data into database:
create or replace function add_customer(_customer_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _address VARCHAR, _phone VARCHAR)
returns void
as $MAIN$
begin
	insert into customer(customer_id, first_name, last_name, address, phone)
	values (_customer_id, _first_name, _last_name, _address, _phone);
end;
$MAIN$
language plpgsql;

select add_customer(1, 'Bilbo', 'Baggins', '123 Main St', '555-555-5555');
select add_customer(2, 'James', 'Bond', '234 1st St', '(555) 555-1111');
select add_customer(3, 'Harry', 'Potter', '567 3rd St', '555-555-2222');
select add_customer(4, 'The', 'Prince', '890 15th St', '(555)555-3333');


insert into salesperson(
	salesperson_id,
	first_name,
	last_name
)values(
	1,
	'Bob',
	'Sells'
);

insert into salesperson(
	salesperson_id,
	first_name,
	last_name
)values(
	2,
	'Susie',
	'Sells-more'
);


insert into mechanic(
	mechanic_id,
	first_name,
	last_name
)values(
	1,
	'Steve',
	'Fixes'
);

insert into mechanic(
	mechanic_id,
	first_name,
	last_name
)values(
	2,
	'Jimmy',
	'Fixes-more'
);


insert into invoice(
	invoice_id,
	amount,
	invoice_date,
	salesperson_id,
	customer_id
)values(
	1,
	35000,
	CURRENT_TIMESTAMP,
	1,
	1
);

insert into invoice(
	invoice_id,
	amount,
	invoice_date,
	salesperson_id,
	customer_id
)values(
	2,
	50000,
	CURRENT_TIMESTAMP,
	2,
	3
);


insert into service(
	service_id,
	buy_parts,
	amount,
	service_date,
	mechanic_id,
	customer_id
)values(
	1,
	'No',
	238.78,
	CURRENT_TIMESTAMP,
	1,
	2
);

insert into service(
	service_id,
	buy_parts,
	amount,
	service_date,
	mechanic_id,
	customer_id
)values(
	2,
	'Yes',
	975.81,
	CURRENT_TIMESTAMP,
	2,
	4
);


create or replace function add_car(_car_id INTEGER, _sale_service VARCHAR, _new_used VARCHAR, _make VARCHAR, _model VARCHAR, _year_ INTEGER, _invoice_id INTEGER, _service_id INTEGER)
returns void
as $MAIN$
begin
	insert into car(car_id, sale_service, new_used, make, model, year_, invoice_id, service_id)
	values (_car_id, _sale_service, _new_used, _make, _model, _year_, _invoice_id, _service_id);
end;
$MAIN$
language plpgsql;


select add_car(1, 'sale', 'used', 'Toyota', 'Tacoma', 2015, 1, Null);
select add_car(2, 'service', null , 'Honda', 'Accord', 2010, null, 1);
select add_car(3, 'sale', 'new', 'Subaru', 'WRX', 2023, 2, Null);
select add_car(4, 'service', null , 'Jeep', 'Cherokee', 2012, null, 2);


