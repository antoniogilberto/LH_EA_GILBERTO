with
    stg_agencias as (
        select 
          cod_agencia as agencia_id
          , nome as nome_agencia
          , cidade
          , uf
          , data_abertura
          , tipo_agencia
        from {{ source('dev_gilberto', 'agencias') }} 
    )
select *
from stg_agencias