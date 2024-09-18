{{
	config(
		materialized="table"
	)
}}

with source as (

    select * from {{ ref('raw_customers') }}

),

renamed as (
	select

		id,
		gender,
		academic_degree,
		mtitle,
		nationality,
		age,
		name,
		email,
		created_at,
		updated_at,
		_airbyte_extracted_at

	from source
)

select * from renamed