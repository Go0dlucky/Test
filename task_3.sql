-- Найти производителя с самой большой средней ценой за товары. 
-- Вывести имя производителя и среднюю стоимость
-- Сергей Убонов

SELECT manufacturer.name, AVG(prices.value)
FROM prices JOIN goods ON prices.goods_id = goods.id
JOIN suppliers ON goods.supplier_id = suppliers.id
JOIN manufacturer ON suppliers.manufacturer_id = manufacturer.id
GROUP BY manufacturer.id
ORDER BY manufacturer.id
ASC