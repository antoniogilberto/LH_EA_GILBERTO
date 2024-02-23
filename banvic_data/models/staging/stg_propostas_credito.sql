with
    stg_propostas_credito
     as (
        select 
          cod_proposta as id_proposta
          , cod_cliente as id_cliente
          , cod_colaborador as id_colaborador
          , cast(parse_timestamp('%Y-%m-%d %H:%M:%S UTC', data_entrada_proposta) as date) as data_entrada_proposta
          , taxa_juros_mensal
          , valor_proposta
          , valor_financiamento
          , valor_entrada
          , valor_prestacao
          , quantidade_parcelas
          , carencia
          , status_proposta
        from {{ source('dev_gilberto', 'propostas_credito') }}
    )
select *
from stg_propostas_credito
