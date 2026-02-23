with 
    invalid_orders as (
        select *
        from `my_dbt_db`.`stg_customers`
        where customer_id is null
    )
select
    count(*)
from
    invalid_orders
having
    count(*) >0