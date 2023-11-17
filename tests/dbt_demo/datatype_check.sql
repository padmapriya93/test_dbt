with data_type as (
select
  'Data Type Validation' as test,
  case
    when
      all(email::text ~ '^[0-9]+$' or hire_date::date is not null)
    then 'PASS'
	else 'FAIL'
  end as status
from {{ref('emp')}}
)

select * from data_type where status <>'PASS'
