
  select     *   from {{ ref('demo')}} where c_name not like 'Customer%'

