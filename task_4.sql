-- Найти все товары производителей из Москвы. 
-- Вывести имена товаров, их цены и имена производителей
-- Сергей Убонов

SELECT goods.name as name_goods, prices.value, manufacturer.name
FROM prices JOIN goods ON prices.goods_id = goods.id
JOIN suppliers ON goods.supplier_id = suppliers.id
JOIN manufacturer ON suppliers.manufacturer_id = manufacturer.id
WHERE manufacturer.location = 'Moscow'
ORDER BY manufacturer.id ASC
