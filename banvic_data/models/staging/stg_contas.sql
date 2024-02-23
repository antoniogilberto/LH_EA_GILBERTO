with 
    stg_contas as (
        select 
          cod_cliente
          , cod_agencia
          , cod_colaborador
          , num_conta
          , tipo_conta
          , cast(parse_timestamp('%Y-%m-%d %H:%M:%S UTC', data_abertura) as date) as data_abertura
          , saldo_total
          , saldo_disponivel
          , cast(parse_timestamp('%Y-%m-%d %H:%M:%S UTC', data_ultimo_lancamento) as date) as data_ultimo_lancamento
        from {{ source('dev_gilberto', 'contas') }} 
    )
select *
from stg_contas