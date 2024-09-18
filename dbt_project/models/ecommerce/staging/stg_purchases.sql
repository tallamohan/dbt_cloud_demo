{{
    config(
        materialized="table"
    )
}}
with source as (

    select * from {{ ref('raw_purchases') }}

),

renamed as (

    select
        id,
        user_id,
        product_id,
        purchased_at,
        returned_at,
        created_at,
        updated_at,
        added_to_cart_at,
        _airbyte_extracted_at

    from source

)

select * from renamed
