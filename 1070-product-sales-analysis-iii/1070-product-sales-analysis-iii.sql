SELECT product_id,
       year AS first_year,
       quantity,
       price
FROM Sales s
WHERE (s.product_id, s.year) IN (
    SELECT p.product_id, MIN(p.year)
    FROM Sales p
    GROUP BY p.product_id
);