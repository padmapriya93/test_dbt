
  select  *   from {{ ref('demo')}} where c_name like 'Customer%'

