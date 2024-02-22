with
    sources as (
        select 
          cod_agencia
          , nome
          , endereco
          , cidade
          , uf
          , data_abertura
          , tipo_agencia
        from {{ source('dev_gilberto', 'agencias') }} 
    )

select *
from sources


