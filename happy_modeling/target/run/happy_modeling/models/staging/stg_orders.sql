
  create view `my_dbt_db`.`stg_orders__dbt_tmp`
    
    
  as (
    with source as (
    select * from `my_dbt_db`.`raw_orders`
),
renamed as (
    select
        id as order_id
    from source
)
select * from renamed
  );