{{
    config(
        materialized="table"
    )
}}

with source as (

    select * from {{ ref('raw_products') }}

),

renamed as (
    select 
        id,
        myear,
        price,
        model,
        make,
        created_at,
        updated_at,
        _airbyte_extracted_at
        
    from source

)

select * from renamed