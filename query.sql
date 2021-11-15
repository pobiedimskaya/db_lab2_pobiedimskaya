SELECT 
		year_built, 
		COUNT(house_id) houses_amount 
FROM houses 
GROUP BY 1 
ORDER BY 1

SELECT  
		neighborhood_name,
		COUNT(house_id) houses_amount 
FROM houses h
JOIN neighborhoods n
ON h.neighborhood_id = n.neighborhood_id
GROUP BY 1 
ORDER BY 1

SELECT  
		CAST(AVG(sale_price) AS int) avg_price,
		year_built 
FROM houses h
JOIN sales s
ON h.sale_id = s.sale_id
GROUP BY 2 
ORDER BY 2
