with 

source as (

    select * from {{ source('raw', 'raw_gz_criteo') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key,
        campgn_name,
        ads_cost,
        impression,
        click

    from source

)

select * from renamed
