with 
    stg_colaborador_agencia as (
        select 
          cod_colaborador as id_colaborador
          , cod_agencia as id_agencia
        from {{ source('dev_gilberto', 'colaborador_agencia') }} 
    )
select *
from stg_colaborador_agencia