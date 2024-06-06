
    
    

with all_values as (

    select
        Genre as value_field,
        count(*) as n_records

    from `wide-hold-423812-a4`.`intermediate`.`intermediate_cust__join`
    group by Genre

)

select *
from all_values
where value_field not in (
    'Male','Female'
)


