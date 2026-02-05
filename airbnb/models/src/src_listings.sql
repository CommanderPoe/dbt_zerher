WITH raw_listing AS (
    SELECT * FROM AIRBNB.RAW.RAW_LISTINGS
)
SELECT 
    id AS listing_id,
    name AS lisitng_name,
    listing_url,
    room_type,
    MINIMUM_NIGHTS,
    host_id,
    price as price_str,
    created_at,
    updated_at

FROM raw_listing