{{ 
    config(
    materialized='table'
    , schema='STAGE'
    , alias='TPC_REGION') 
    
}}

select *
from TPC.TPCH_SF1.REGION