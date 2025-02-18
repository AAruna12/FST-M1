select customer_id, max(purchase_amount) as maxamnt from orders group by customer_id;

select salesman_id, order_date, max(purchase_amount) as maxamnt from orders 
where order_date = to_date('2012-08-17','yyyy/mm/dd') group by salesman_id,order_date;

select customer_id, order_date, max(purchase_amount) as maxamnt from orders 
group by customer_id, order_date having max(purchase_amount) in(2030, 3450, 5760, 6000);

select count(distinct salesman_id) as totalsalesman from orders;