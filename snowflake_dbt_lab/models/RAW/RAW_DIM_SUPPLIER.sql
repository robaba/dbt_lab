{{ 
    config(
    materialized='incremental'
    , unique_key='SUPPLIER_KEY'
    , on_schema_change='sync_all_columns'
    , alias='DIM_SUPPLIER'
    , schema='RAW') 
    
}}

SELECT S_SUPPKEY        AS SUPPLIER_KEY
, S_NAME                AS SUPPLIER_NAME
, S_ADDRESS             AS SUPPLIER_ADDRESS
, N_NAME                AS SUPPLIER_NATION
, R.R_NAME              AS SUPPLIER_REGION
FROM {{ref('STAGE_TPC_SUPPLIER')}} S
INNER JOIN {{ref('STAGE_TPC_NATION')}} N
ON N.N_NATIONKEY = S.S_NATIONKEY
INNER JOIN {{ref('STAGE_TPC_REGION')}} R
ON R.R_REGIONKEY = N.N_REGIONKEY