with 

source as (

    select * from {{ source('raw', 'raw_gz_adwords') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key,
        campaign_name,
        CAST(ads_cost AS FLOAT64) AD ads_cost,
        impression,
        click

    from source

)

select * from renamed
