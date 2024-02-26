with
    stg_propostas_credito
     as (
        select 
          cod_proposta as proposta_id
          , cod_cliente as cliente_id
          , cod_colaborador as colaborador_id
          , cast(parse_timestamp('%Y-%m-%d %H:%M:%S UTC', data_entrada_proposta) as date) as data_entrada_proposta
          , taxa_juros_mensal
          , valor_proposta
          , valor_financiamento
          , valor_entrada
          , valor_prestacao
          , quantidade_parcelas as qtd_parcelas
          , carencia
          , status_proposta
        from {{ source('dev_gilberto', 'propostas_credito') }}
    )
select *
from stg_propostas_credito
