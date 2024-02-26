with 
    stg_transacoes as (
        select 
          cod_transacao as transacao_id
          , num_conta as cliente_id
          , date(data_transacao) as data_transacao          , nome_transacao
          , valor_transacao
        from {{ source('dev_gilberto', 'transacoes') }}
    )
select * 
from  stg_transacoes
