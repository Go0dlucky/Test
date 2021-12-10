-- Найти самый дорогой товар. Вывести имя товара и его цену
-- Сергей Убонов

SELECT g.name, p.value 
FROM goods as g INNER JOIN prices as p ON g.id = p.goods_id
WHERE value = (SELECT MAX(value) FROM prices) 
