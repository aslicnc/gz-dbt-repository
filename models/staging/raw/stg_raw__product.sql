with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        cast(products_id as int64) as products_id,
        cast(purchse_price as float64) as purchse_price

    from source

)

select * from renamed