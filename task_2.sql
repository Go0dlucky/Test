-- Найти товары с нулевым остатком. Вывести имя товара и его цену
-- Сергей Убонов

SELECT g.name, p.value
FROM goods as g INNER JOIN prices as p ON g.id = p.goods_id
INNER JOIN quantity as q ON g.id = q.goods_id
WHERE q.value = 0
