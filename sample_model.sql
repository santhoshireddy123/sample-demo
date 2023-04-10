{{
  config(
    materialized='view'
  )
}}

with demo_data as
     ( select customer_id,
              coalesce (first_name,last_name) as full_name,
              number_of_orders
        from {{ 'first_model'}} )

select * from demo_data

