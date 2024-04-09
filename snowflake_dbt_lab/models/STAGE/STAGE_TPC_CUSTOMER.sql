{{ 
    config(
    materialized='table'
    , schema='STAGE'
    , alias='TPC_CUSTOMER') 
    
}}


select *
from TPC.TPCH_SF1.CUSTOMER