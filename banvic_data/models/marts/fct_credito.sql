with
    propostas_credito as (
        select *
        from {{ ref('stg_propostas_credito') }}
    )
    , fct_credito as (
        select 
            propostas_credito.proposta_id
            , propostas_credito.cliente_id     
            , propostas_credito.colaborador_id
            , propostas_credito.data_entrada_proposta
            , propostas_credito.taxa_juros_mensal
            , propostas_credito.valor_proposta
            , propostas_credito.valor_prestacao
            , propostas_credito.valor_financiamento
            , propostas_credito.valor_entrada
            , propostas_credito.carencia
            , propostas_credito.qtd_parcelas
            , propostas_credito.status_proposta
            , ((propostas_credito.valor_prestacao * propostas_credito.qtd_parcelas) + propostas_credito.valor_entrada)  as total_pago
            , ((valor_prestacao * qtd_parcelas) - valor_proposta) as lucro
        from propostas_credito

    )
select *
from fct_credito