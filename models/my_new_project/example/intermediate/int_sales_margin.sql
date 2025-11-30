SELECT
	s.pdt_id as products_id,
	s.date_date as date_date,
	s.orders_id as orders_id,
	s.revenue as revenue,
	s.quantity as quantity,
	p.purchse_price as purchase_price,
	ROUND(s.quantity*p.purchse_price,2) AS purchase_cost,
	ROUND(s.revenue - s.quantity*p.purchse_price, 2) AS margin
FROM {{ref("stg_raw__sales")}} s
LEFT JOIN {{ref("stg_raw__product")}} p
	ON s.pdt_id = p.products_id


    
