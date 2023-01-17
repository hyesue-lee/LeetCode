# Write your MySQL query statement below
/*캐피탈 이득/손실
stock 은 한번 또는 많이 산것과 판것 이후의 전체 이득, 손실 */


SELECT stock_name
, SUM(IF(operation = 'buy' , -price, price )) AS capital_gain_loss 
FROM Stocks
GROUP BY stock_name


