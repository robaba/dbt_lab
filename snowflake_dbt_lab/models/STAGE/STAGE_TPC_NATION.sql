{{ 
    config(
    materialized='table'
    , schema='STAGE'
    , alias='TPC_NATION') 
    
}}


select *
from TPC.TPCH_SF1.NATION