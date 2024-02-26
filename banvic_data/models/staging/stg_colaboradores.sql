with
    stg_colaboradores as (
        select 
          cod_colaborador as colaborador_id
          , cast(primeiro_nome || ' ' || ultimo_nome as string) as nome_colaborador
          , regexp_extract(endereco, r' / ([A-Z]{2})$') as estado
        from {{ source('dev_gilberto', 'colaboradores') }} 
    )
select *
from stg_colaboradores
