SELECT 
    p.product_id,
    ROUND(COALESCE(SUM(u.units*p.price) / SUM(u.units), 0),2) as average_price
    FROM Prices p
    LEFT JOIN UnitsSold u
        ON p.product_id = u.product_id
        AND purchase_date >= start_date
        AND purchase_date <= end_date
GROUP BY p.product_id;