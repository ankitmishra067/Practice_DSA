# Write your MySQL query statement below

select v.customer_id, count(v.visit_id) as count_no_trans
from visits v

where not exists

(select t.transaction_id
from transactions t
where v.visit_id = t.visit_id)

group by v.customer_id;