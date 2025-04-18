SELECT * FROM menu_items;
SELECT * FROM order_details;
SELECT * FROM order_details od LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id;
SELECT item_name,category, COUNT(order_details_id) AS num_purchases FROM order_details od LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id
GROUP BY item_name, category ORDER BY num_purchases DESC;
SELECT order_id, SUM(price) AS total_spend FROM order_details od LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id
GROUP BY order_id ORDER BY total_spend DESC LIMIT 5;
SELECT category, COUNT(item_id) FROM order_details od LEFT JOIN menu_items mi
ON od.item_id = mi.menu_item_id
WHERE order_id = 2675
GROUP BY category;