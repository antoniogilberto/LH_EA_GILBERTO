with 
    stg_colaborador_agencia as (
        select 
          cod_colaborador as colaborador_id
          , cod_agencia as agencia_id
        from {{ source('dev_gilberto', 'colaborador_agencia') }} 
    )
select *
from stg_colaborador_agencia