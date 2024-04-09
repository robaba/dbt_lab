{{ 
    config(
    materialized='table'
    , schema='STAGE'
    , alias='TPC_SUPPLIER') 
    
}}


select *
from TPC.TPCH_SF1.SUPPLIER