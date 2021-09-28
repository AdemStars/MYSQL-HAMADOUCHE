SELECT *
FROM sql_store.order_items
WHERE order_id LIKE '2'
ORDER BY quantity*unit_price;