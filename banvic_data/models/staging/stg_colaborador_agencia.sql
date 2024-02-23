with 
    stg_colaborador_agencia as (
        select 
          cod_colaborador
          , cod_agencia
        from {{ source('dev_gilberto', 'colaborador_agencia') }} 
    )
select *
from stg_colaborador_agencia