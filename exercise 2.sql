select o.order_id, o.customer_id from orders o 
where order_date = (select max(o2.order_date) from orders o2)

select p.product_name, p.unit_price from products p 
where p.unit_price > (select p2.unit_price from products p2 where p2.product_name='Carnarvon Tigers')
