with 
    stg_contas as (
        select 
          cod_cliente as cliente_id
          , cod_agencia as agencia_id
          , cod_colaborador as colaborador_id
          , num_conta
          , tipo_conta
          , cast(parse_timestamp('%Y-%m-%d %H:%M:%S UTC', data_abertura) as date) as data_abertura
          , saldo_total
          , saldo_disponivel
          , date(data_ultimo_lancamento) as ultimo_lancamento
        from {{ source('dev_gilberto', 'contas') }} 
    )
select *
from stg_contas