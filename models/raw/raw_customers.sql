{{
    config(
        materialized='table'
    )
}}

SELECT * 
FROM raw.customers