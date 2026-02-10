{{config(
    materialized='view')
}}

WITH src_listing AS (
    SELECT * FROM {{ ref('src_listings') }}
)

SELECT 
    listing_id, 
    listing_name, 
    room_type, 
    CASE 
        WHEN MINIMUM_NIGHTS = 0 THEN 1
        ELSE MINIMUM_NIGHTS
    END AS minimum_nights, 
    host_id, 
    REPLACE(price_str, '$') :: NUMBER(10,2) AS price, 
    created_at, 
    updated_at 
 FROM 
    src_listing 