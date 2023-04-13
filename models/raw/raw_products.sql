{{
    config(
        materialized='table'
    )
}}

SELECT * 
FROM raw.products