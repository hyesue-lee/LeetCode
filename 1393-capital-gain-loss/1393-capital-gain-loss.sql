# Write your MySQL query statement below
/*캐피탈 이득/손실
stock 은 한번 또는 많이 산것과 판것 이후의 전체 이득, 손실 */

SELECT stock_name
,SUM(price) capital_gain_loss 
FROM(
    SELECT stock_name
    ,operation
    ,IF(operation = 'buy' , -price, price ) AS price 
    FROM Stocks
)sub 
GROUP BY stock_name
