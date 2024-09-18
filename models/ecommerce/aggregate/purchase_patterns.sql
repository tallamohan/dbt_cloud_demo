SELECT 
  user_id,
  product_id,
  purchased_at,
  added_to_cart_at,  
  returned_at,
DATEDIFF(day, added_to_cart_at, purchased_at) AS time_to_purchase_days
FROM {{ ref('stg_purchases') }}





