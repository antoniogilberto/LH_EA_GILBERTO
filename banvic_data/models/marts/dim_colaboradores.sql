with
    colaboradores as (
        select *
        from {{ ref('stg_colaboradores') }}
    )
    , agencias as (
        select *
        from {{ ref('stg_agencias') }}
    )
    , colaborador_agencia as (
        select *
        from {{ ref('stg_colaborador_agencia') }}
    )
    , dim_colaboradores as (
        select 
            colaboradores.colaborador_id
            , agencias.agencia_id
            , colaboradores.nome_colaborador
            , agencias.nome_agencia
            , agencias.cidade as cidade_agencia
            , agencias.uf as estado_agencia
            , agencias.tipo_agencia
        from colaboradores
        left join colaborador_agencia on colaboradores.colaborador_id = colaborador_agencia.colaborador_id
        left join agencias on colaborador_agencia.agencia_id = agencias.agencia_id
    )
select *
from dim_colaboradores