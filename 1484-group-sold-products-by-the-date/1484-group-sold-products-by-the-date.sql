select sell_date,
count(distinct(product)) AS num_sold,
group_concat(distinct(product)) AS products
from Activities
group by sell_date
order by sell_date;