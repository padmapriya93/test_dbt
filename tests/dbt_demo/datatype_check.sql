with data_type as (
select
  'Data Type Validation' as test,
  case
    when
      hire_date is not null and email NOT REGEXP '[0-9]'
    then 'PASS'
	else 'FAIL'
  end as status
from {{ref('emp')}}
)
select * from data_type where status <>'PASS'
