{{
    config(
        materialized='table'
    )
}}

SELECT * 
FROM raw.orders