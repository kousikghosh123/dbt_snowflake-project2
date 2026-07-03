{{ dbt_utils.union_relations(
    relations=[
        source('dbt_sch', 'SALES_TRANSACTIONS_2024'),
        source('dbt_sch', 'SALES_TRANSACTIONS_2025')
    ]
) }}