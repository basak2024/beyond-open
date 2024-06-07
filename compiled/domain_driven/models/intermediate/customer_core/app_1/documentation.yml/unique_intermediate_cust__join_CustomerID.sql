
    
    

with dbt_test__target as (

  select CustomerID as unique_field
  from `wide-hold-423812-a4`.`intermediate`.`intermediate_cust__join`
  where CustomerID is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


