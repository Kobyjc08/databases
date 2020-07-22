select columns_names from Table_Name;

select name, address, phone from customers;

select * from customers; --brings all the rows--

select * from hotels where rooms  > 2;

select name from hotels where rooms > 2;

select * from hotels where city = 'Barcelona';

select * from hotels where city = ('Barcelona', 'Madrid');

select * from hotels where city in 'Barcelona';

select * from hotels where city not in ('Barcelona', 'zaragoza');

select * from hotels where city = 'Barcelona' and rooms > 2;

select * from hotels where city like 'Barce%' and rooms > 2;
select * from hotels where pet_friendly;

select * from hotels where rooms > 3 limit 2;

select * from hotels where rooms > 5 
