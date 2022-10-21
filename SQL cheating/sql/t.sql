CREATE SCHEMA dannys_diner;
SET search_path = dannys_diner;

CREATE TABLE sales (
  customer_id VARCHAR(1),
  order_date DATE,
  product_id INTEGER
);

INSERT INTO sales
  (customer_id, order_date,product_id)
VALUES
  ('A', '2021-01-01', '1'),
  ('A', '2021-01-01', '2'),
  ('A', '2021-01-07', '2'),
  ('A', '2021-01-10', '3'),
  ('A', '2021-01-11', '3'),
  ('A', '2021-01-11', '3'),
  ('B', '2021-01-01', '2'),
  ('B', '2021-01-02', '2'),
  ('B', '2021-01-04', '1'),
  ('B', '2021-01-11', '1'),
  ('B', '2021-01-16', '3'),
  ('B', '2021-02-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-07', '3');
 

CREATE TABLE menu (
  product_id INTEGER,
  product_name VARCHAR(5),
  price INTEGER
);

INSERT INTO menu
  (product_id, product_name, price)
VALUES
  ('1', 'sushi', '10'),
  ('2', 'curry', '15'),
  ('3', 'ramen', '12');
  

CREATE TABLE members (
  customer_id VARCHAR(1),
  join_date DATE
);

INSERT INTO members
  (customer_id, join_date)
VALUES
  ('A', '2021-01-07'),
  ('B', '2021-01-09');
  
select (customer_id ), sum(price) 
from sales as s 
join menu as m 
on s.product_id =  m.product_id
group by customer_id;
  
select count(distinct(order_date))  , customer_id from sales group by customer_id;
  
select DISTINCT(customer_id) , product_name from sales as p join menu as m 
on p.product_id = m.product_id
order by product_name ASC;

select (SUM(m.product_id)) as most_purchased , product_name
from sales as s
join menu as m
on m.product_id = s.product_id
group by product_name
order by most_purchased DESC limit 1;

select distinct(customer_id) ,(product_name) 
from sales as s 
join menu as m 
on s.product_id = m.product_id ;

select s.customer_id , count(s.product_id) as total_items, sum(price) as money_spent
from sales as s 
join menu as m 
on m.product_id = s.product_id
join members as mm 
on s.customer_id = mm.customer_id
where s.order_date < mm.join_date
group by s.customer_id;

WITH points AS 
(
SELECT *,
    CASE 
    WHEN m.product_name = 'sushi' THEN price * 20
    WHEN m.product_name != 'sushi' THEN price * 10
    END AS points
FROM menu m
    )
SELECT customer_id, SUM(points) AS points
FROM sales s
JOIN points p ON p.product_id = s.product_id
GROUP BY s.customer_id ;


