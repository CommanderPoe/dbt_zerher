SELECT COUNT(*) AS num_listings, MAX(price) AS max_price
FROM {{ ref('dim_listings_cleansed') }}
WHERE price > 5000