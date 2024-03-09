--ÊÎÒíä ÇáÏÇÊÇ
insert into production.categories(category_name)
values('weels');

insert into production.categories(category_name)
values('bike');


insert into sales.customers(first_name,last_name,email)
values('ahmed','ali','a.ali@gmail.com');


insert into sales.customers(first_name,last_name,email,phone,city,street)
values('mohamed','hassan','m.hassan@gmail.com','0115879624','riyadh','mn'),
      ('mostafa','hassan','m.hassan@gmail.com','0125899624','macca','ca'),
      ('abdullah','hassan','a.hassan@gmail.com','0115666624','macca','ca'),
	  ('sara','mohamed','s.hassan@gmail.com','019966624','macca','po'),
	  ('ehab','ayman','e.hassan@gmail.com','0122226624','macca','pi');


insert into sales.stores(store_name,city,phone)
output inserted.store_id,inserted.store_name
values
('store 1','riyadh','018759625'),
('store 2','macca','0789456'),
('store 3','macca','0178541236');


--ÚÑÖ
select*from sales.customers;
select*from sales.orders;
select*from production.categories;
select*from  sales.stores;
select*from  sales.staffs;
select*from  sales.order_items;
select*from  production.stocks ;
select*from  production.products ;
select*from  production.brands ;

--update
update production.categories
set production.categories.category_name='bike'
where category_id=1;


update sales.stores
set email='store1@gmail.com',street='omar bin alkhatab street',
zip_code='17162'
where store_id=1;
  

--delete
delete from production.categories
where category_id=3;

--     åÍÏİ ãä    Çáí      
--delete from sales.customers
--where customer_id between 1 and 3 ;

--åÍĞİ Çæá 2 Õİæİ 
--delete top(2) from sales.customers;

delete top(9) from sales.customers;

--ÇÍĞİ 10% ãä ÇáÕİæİ
--delete top(10) percent from sales.customers;


--select ááÚÑÖ
--Çæá ØÑíŞå (ÍÏÏÊ ÇÚãÏå ãÚíäå 
SELECT customer_id ,first_name ,last_name ,city 
from sales.customers ;

--select ááÚÑÖ
--ÇÚÑÖ ßá Çááí İí ÇáÌÏæá
select*from sales.customers;
	
--select ááÚÑÖ
--ÇÌãÚ Èíä ÇßÊÑ ãä ÚãæÏ
--ÌãÚÊ ÇáÇÓã ÇáÇæá ãÚ ÇáÇÓã ÇáÊÇäí æÊã æÖÚåã İí ÚãæÏ æÇÍÏ ÈÓ ÇáÚãæÏ Ïå ãä ÛíÑ ÇÓã
SELECT customer_id ,first_name +' '+last_name ,city 
from sales.customers ;

--ÇÌãÚ Èíä ÇßÊÑ ãä ÚãæÏ
--  ÌãÚÊ ÇáÇÓã ÇáÇæá ãÚ ÇáÇÓã ÇáÊÇäí æÊã æÖÚåã İí ÚãæÏ æÇÍÏ ÈÓ ÇáÚãæÏ Ïå ãä ÛíÑ ÇÓã åäÇ åÍØáæÇ ÇÓã ãÓÊÚÇÑ
SELECT customer_id ,first_name +' '+last_name as'customer name',city 
from sales.customers ;


select*from sales.customers
where city='macca';

SELECT customer_id ,first_name ,last_name ,city 
from sales.customers  where city='riyadh';


SELECT customer_id ,first_name ,last_name ,city 
from sales.customers  where city='macca' and customer_id=16;

--ÇáÔÇÑÚ ãßÊÈåæÔ
select*from sales.customers
where street is null;

--ãÔ İÇÑÛ
select*from sales.customers
where street is not null;

--ÈÏá ãÇ ÇßÊÈ ßĞÇ or
select*from sales.customers
where street in ('ca','mn');

select*from sales.customers
where street not in ('ca','mn');

---select*from production.products
---where list_price between 300 and 600;
--  ========
--select*from production.products
---where list_price>= 300 and list_price<=600;

---select*from production.products
---where list_price not between 300 and 600;



select city from sales.customers;
--Ïæä ÊßÑÇÑ
select distinct city from sales.customers;
select distinct street,city from sales.customers;


---select like
--ÊŞÑíÈÇ íÈÏÇ ÈÍÑİ Çá m
select*from sales.customers
where first_name like 'm%'



---select like
--ÊŞÑíÈÇ íäÊåí ÈÍÑİ Çá n
select*from sales.customers
where last_name like '%n'


---select like
--ÇÓã íÍÊæí Úáí a
select*from sales.customers
where last_name like '%a%'

---select like
--ÇÓã íÊßæä ãä ËáÇËå ÍÑæİ
select*from sales.customers
where first_name like '____'

---select like
--ÇÓã íÊßæä ãä 4 ÍÑæİ æÇáÍÑİ ÇáÇæá a
select*from sales.customers
where first_name like 's___'

---select like
--Ôßá ÇáÇíãíá ßÏå
select*from sales.customers
where email like '%@gmail.com';



--select like
--ÇÓã íÈÏÇ ÈÍÑİ aÇæ e
select*from sales.customers
where first_name like '[ae]%';

--select like
--ÇÓã íÈÏÇ ÈÍÑİ ãä ÍÑæİ ÇáÑíäÌ Ïå 
select*from sales.customers
where first_name like '[a-e]%';

--select like
--ÇÓã ãÔ íÈÏÇ ÈÍÑİ ãä ÍÑæİ ÇáÑíäÌ Ïå 
select*from sales.customers
where first_name not  like '[a-e]%';


--select like
--ÇÓã ãÔ íÈÏÇ ÈÍÑİ  m 
select*from sales.customers
where first_name not  like 'm%';


--select like
--ÍÇÌå İí ÑíäÌ Çá 300æ ãÚÇäÇ ÇáßÓæÑ
--select*from production.products
---where list_price like '3__.%';


--select like
-- ÇÓã íÈÏÇ ÈÍÑİ Çá   æËÇáË ÍÑİ Çá        
select*from sales.customers
where first_name   like 'a__u%';


--order by
--ÇÎáí ÇáäÊíÌå ÙÇåÑå ÈÔßá ãÚíä
--ÑÊÈ ÊÑÊíÈ ÊÕÇÚÏí ááÕİ Çá first name
SELECT first_name ,last_name ,last_name ,city 
from sales.customers 
order by first_name;


--order by
--ÇÎáí ÇáäÊíÌå ÙÇåÑå ÈÔßá ãÚíä
--ÑÊÈ ÊÑÊíÈ ÊäÇÒáí ááÕİ Çá first name
SELECT first_name ,last_name ,last_name ,city 
from sales.customers 
order by first_name desc;

--order by
--ÑÊÈ ãä ÇÚáí ÓÚÑ Çáí ÇáÇŞá
--select product_id,product_name,list_price
--from production.products
-- order by list_price desc;

--order by
--ÑÊÈ ÇáÚãæÏíä Ïæá
SELECT first_name ,last_name ,last_name ,city 
from sales.customers 
order by city ,first_name ;

--order by
--ÑÊÈ ÇáÚãæÏíä Ïæá ÈÓ ÇáÇÓã ÇáÇæá ÊäÇÒáí
SELECT first_name ,last_name ,last_name ,city 
from sales.customers 
order by city ,first_name desc;



--order by
--ÑÊÈ ÇáÚãæÏíä Ïæá
--select  category_id,product_id,product_name,list_price
--from production.products
--order by category_id,list_price desc;



--join
--Çæá ØÑíŞå Èíä 2 ÌÏæá
--inner join
--ÈŞæáæÇ Çíå ÇáÍÇÌå ÇáãÔÊÑßå Èíä ÇáÌÏæáíä
select first_name,last_name,email,order_id,order_date,store_id
from sales.customers c,sales.orders o
where c.customer_id=o.customer_id;

--1.1
select first_name,last_name,email,order_id,order_date,store_id
from sales.customers c join sales.orders o
on c.customer_id=o.customer_id;

--1.2
select first_name,last_name,email,order_id,order_date,store_id
from sales.customers c inner join sales.orders o
on c.customer_id=o.customer_id;


--ÊÇäí ØÑíŞå Èíä 2 ÌÏæá
--íÙåÑ ßáæÇ ÍÊí áæ ãİíÔ ÍÇÌå ãÊÔÇÈå
--outer join
--ßá Çááí İí ÇáÔãÇá
select c.customer_id, first_name,last_name,email,order_id,order_date
from sales.customers c left outer join sales.orders o
on c.customer_id=o.customer_id;

--ÊÇäí ØÑíŞå
--2.1
--íÙåÑ ßáæÇ ÍÊí áæ ãİíÔ ÍÇÌå ãÊÔÇÈå
--outer join
--ßá Çááí İí Çáíãíä
select c.customer_id, first_name,last_name,email,order_id,order_date
from sales.customers c right outer join sales.orders o
on c.customer_id=o.customer_id;

--ÊÇäí ØÑíŞå
--2.2
--íÙåÑ ßáæÇ ÍÊí áæ ãİíÔ ÍÇÌå ãÊÔÇÈå
--outer join
--Çááí İí äÇÍíÊíä
select c.customer_id, first_name,last_name,email,order_id,order_date
from sales.customers c full outer join sales.orders o
on c.customer_id=o.customer_id;

--ËÇáË ØÑíŞå Èíä ÇßÊÑ ãä ÌÏæá
select  first_name,last_name,order_id,order_date,store_name,s.street,s.city
from sales.customers c,sales.orders o,sales.stores s
where c.customer_id=o.customer_id and o.store_id=s.store_id;

--ËÇáË ØÑíŞå Èíä ÇßÊÑ ãä ÌÏæá
--3.1
select  first_name,last_name,order_id,order_date,store_name,s.street,s.city
from sales.customers c join sales.orders o on c.customer_id=o.customer_id 
join  sales.stores s on o.store_id=s.store_id;
 

 --ËÇáË ØÑíŞå Èíä ÇßÊÑ ãä ÌÏæá
--3.1
select  first_name,last_name,brand_name
from sales.customers c ,sales.orders o,sales.order_items oi,production.products p,production.brands b
where c.customer_id=o.customer_id and oi.order_id=o.order_id
and p.product_id = oi.product_id 
and b.brand_id=p.brand_id

 --ËÇáË ØÑíŞå Èíä ÇßÊÑ ãä ÌÏæá
--3.2
select  first_name,last_name,brand_name
from sales.customers c join sales.orders o on c.customer_id=o.customer_id 
join sales.order_items oi on oi.order_id=o.order_id
join production.products p on p.product_id = oi.product_id 
join production.brands b on b.brand_id=p.brand_id

------------------------------------------------------
--function

--count ÈÍØ ÌæÇåÇ äÌãå ÚÔÇä ÊÚÏ Çá null
--ÇáÇÚãÏå ãä ÛíÑ ÇÓã
select max(list_price) ,min(list_price),avg(list_price),sum(list_price),count(*)
from production.products;
--ÇáÇÚãÏå İíåÇ ÇÓã :ØÑíŞå 1
select max(list_price) "highest price" ,min(list_price) "lowest price",avg(list_price) average ,sum(list_price)"total_price",count(*)"num of products"
from production.products;
--ÇáÇÚãÏå İíåÇ ÇÓã :ØÑíŞå 2
select max(list_price) as "highest price" ,min(list_price) as  "lowest price",avg(list_price) as average ,sum(list_price) as "total_price",count(*) as "num of products"
from production.products;
--İíå ÔÑØ
select max(list_price) as "highest price" ,min(list_price) as  "lowest price",avg(list_price) as average ,sum(list_price) as "total_price",count(*) as "num of products"
from production.products
where category_id=3;

--ÇÎÑ  æ Çæá æÚÏÏ ÇáÇæÑÏíÑ 
select max(order_date),min( order_date),count(*)
from sales.orders;
--İí ÔÑØ
select max(order_date) as "last order ",min( order_date) as "first order",count(*) as "num of order"
from sales.orders
where customer_id=100;

------------------------------
--group
-- question  for each categry ,list categgory_id,max,lowest,avg
select category_id,max(list_price) "highest price" ,min(list_price) "lowest price" ,avg(list_price) average,count(*)"num of products"
from production.products
group by category_id;

-- question  for each brand ,list brand name,max,lowest,num
select brand_name,count(*),max(list_price),min(list_price)
from production.brands b join production.products p
on b.brand_id=p.brand_id
group by brand_name;

--ques
select customer_id ,max(order_date),min( order_date),count(*)
from sales.orders
group by customer_id;

--ÇÎÊÇÑ ÌÑæÈ ãÚíä
--having ÔÑØ íÊÍØ Úáí ÇáÌÑæÈ
-- question  for each categry ,list categgory_id,max,lowest,avg
select category_id,max(list_price) "highest price" ,min(list_price) "lowest price" ,avg(list_price) average,count(*)"num of products"
from production.products
group by category_id
having count(*)>70;

--having
-- question  for each brand ,list brand name,max,lowest,num
select brand_name,count(*),max(list_price),min(list_price)
from production.brands b join production.products p
on b.brand_id=p.brand_id
group by brand_name
having  count(*)<20;

--having
--ques
select customer_id ,max(order_date),min( order_date),count(*)
from sales.orders
group by customer_id 
having  count(*)>=4;


---------------------------------------------------------------------------------
--use join  , group by , order by
select store_name,count(*) " num of order"
from sales.stores  s join sales.orders o
on s.store_id=o.store_id
group by store_name
having count(*)>400
order by count(*) desc;

select brand_name,count(*)
from production.brands b join production.products p on b.brand_id=p.brand_id
join sales.order_items oi on p.product_id=oi.product_id
group by brand_name
having count(*)>1000
order by count(*) desc;

--------------------------------------------------------
--top records
--Çæá Çí ÍÇÌå
--ÇÚáí 10 ãäÊÌÇÊ
select  top 10 product_name,list_price
from production.products
order by list_price desc;


--ÇÚáí 10 İí Çáãíå ãä ãäÊÌÇÊ
select  top 10 percent  product_name,list_price
from production.products
order by list_price desc;

--with ties
--ÇäÇ ŞæáÊæÇ åÇÊ Çæá 3 .İÇåæ åíÔæİ ÇÎÑ æÇÍÏ áæ Çááí ÈÚÏæÇ áå äİÓ ÇáÓÚÑ åíÇÎÏæÇ ãÚÇå
select  top 3 with ties  product_name,list_price
from production.products
order by list_price desc;
-----------------------------------------------------




