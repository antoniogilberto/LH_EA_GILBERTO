with
    stg_clientes as (
        select 
          cod_cliente as id_cliente
          , primeiro_nome
          , ultimo_nome
          , email
          , tipo_cliente
          , cast(parse_timestamp('%Y-%m-%d %H:%M:%S UTC', data_inclusao) as date) as data_inclusao
          , cpfcnpj
          , data_nascimento
          , endereco
          , cep
        from {{ source('dev_gilberto', 'clientes') }} 
    )
select *
from stg_clientes


