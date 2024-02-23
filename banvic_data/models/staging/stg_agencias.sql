with
    source as (
        select 
          cod_agencia
          , nome as nome_agencia
          , endereco
          , cidade
          , uf
          , data_abertura
          , tipo_agencia
        from {{ source('dev_gilberto', 'agencias') }} 
    )

select *
from source


