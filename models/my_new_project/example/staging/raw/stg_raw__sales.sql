with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        date_date,
        cast(orders_id as int64) as orders_id,
        pdt_id,
        cast(revenue as int64) as revenue,
        cast(quantity as int64) as quantity

    from source

)

select * from renamed
