with
    stg_clientes as (
        select 
          cast(cod_cliente as int) as cliente_id
          , cast(primeiro_nome || ' ' || ultimo_nome as string) as nome_cliente
          , email
          , tipo_cliente
          , cast(parse_timestamp('%Y-%m-%d %H:%M:%S UTC', data_inclusao) as date) as data_inclusao
          , cpfcnpj
          , date_diff(current_date(), data_nascimento, year) as idade
          , regexp_extract(endereco, r' / ([A-Z]{2})$') as estado
        from {{ source('dev_gilberto', 'clientes') }} 
    )
select *
from stg_clientes


