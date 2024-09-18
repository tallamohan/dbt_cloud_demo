{{ 
    config(
        materialized="table"
    ) 
}}
WITH source AS (
    SELECT * FROM {{ ref('raw_purchases') }}
),
renamed AS (
    SELECT
        id,
        user_id,
        product_id,
        purchased_at,
        returned_at,
        created_at,
        updated_at,
        added_to_cart_at,
        _airbyte_extracted_at
    FROM source
)
SELECT * FROM renamed

 