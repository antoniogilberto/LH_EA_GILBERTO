with
    stg_colaboradores as (
        select 
          cod_colaborador
          , primeiro_nome
          , ultimo_nome
          , email
          , cpf
          , data_nascimento
          , endereco
          , cep
        from {{ source('dev_gilberto', 'colaboradores') }} 
    )
select *
from stg_colaboradores
