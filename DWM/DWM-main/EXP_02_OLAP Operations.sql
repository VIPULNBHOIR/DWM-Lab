 Exp_02 :  Apply OLAP operations

select p.productname,  t.quarter, b.branchname, sum(s.total_sales) as 'total sales', sum(s.total_profit) as 'profit' 
from product p, sales s, time t, branch b
where p.productid= s.prod_id and t.timeid = s.timeid and b.branchid = s.branchid
group by p.productname, t.quarter, b.branchname

select p.productname, sum(s.total_sales) as 'total sales', t.quarter, b.branchname
from product p, sales s, time t, branch b
where p.productid= s.prod_id and t.timeid = s.timeid and b.branchid = s.branchid and quarter=2
group by p.productname, t.quarter, b.branchname

select p.productname, sum(s.total_sales) as 'total sales', t.quarter, b.branchname
from product p, sales s, time t, branch b
where p.productid= s.prod_id and t.timeid = s.timeid and b.branchid = s.branchid and quarter=2 and b.branchid=2
group by p.productname, t.quarter, b.branchname

select t.year, sum(s.total_sales) as 'total sales'
from sales s, time t
where t.timeid = s.timeid 
group by t.year

select t.year, sum(s.total_sales) as 'total sales'
from sales s, time t
where t.timeid = s.timeid 
group by t.year


select t.month, sum(s.total_sales) as 'total sales'
from sales s, time t
where t.timeid = s.timeid 
group by t.month
