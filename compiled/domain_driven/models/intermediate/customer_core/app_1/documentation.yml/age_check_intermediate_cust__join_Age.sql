

with validation as (
    select 
       CustomerID,
       Age
    from `wide-hold-423812-a4`.`intermediate`.`intermediate_cust__join`
    where Age < 18)
select * from validation
