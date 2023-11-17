select
  'Data Type Validation' as test,
  case
    when
      all(email::text ~ '^[0-9]+$' and hire_date::date is not null)
    then 'PASS'
    else 'FAIL'
  end as status
from {{ref('emp')}}
