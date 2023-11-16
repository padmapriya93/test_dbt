with source_data as (
  select
    'source_table' as source,
    count(*) as source_rowCount
  from
    {{ ref('demo')}}
),
target_data as (
  select
    'target_data' as target,
    count(*) as target_rowCount
  from
    {{ ref('demonew')}}
)

select * from source_data s,target_data t where (s.source_rowCount-t.target_rowCount) <>0