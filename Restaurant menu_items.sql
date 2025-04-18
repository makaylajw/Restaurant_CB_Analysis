USE restaurant_db
SELECT * FROM menu_items;
SELECT COUNT(*) FROM menu_items;
SELECT * FROM menu_items
ORDER BY price ASC;
SELECT COUNT(*) FROM menu_items WHERE category='Italian';
SELECT * FROM menu_items WHERE category='Italian'
ORDER BY price ASC;
SELECT * FROM menu_items;
SELECT category, COUNT(item_name) AS num_dishes FROM menu_items
GROUP BY category; 
SELECT category, AVG(price) AS avg_price FROM menu_items
GROUP BY category; 
