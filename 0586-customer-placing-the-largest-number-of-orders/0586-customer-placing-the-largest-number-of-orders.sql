# Write your MySQL query statement below
# 가장 많은 주문한 고객 

SELECT customer_number
  FROM (
    SELECT customer_number
    FROM Orders
    GROUP BY customer_number -- custom_num grouping 
    ORDER BY count(customer_number) desc -- cnt custom_num 
    LIMIT 1 -- no.1
  )sub
