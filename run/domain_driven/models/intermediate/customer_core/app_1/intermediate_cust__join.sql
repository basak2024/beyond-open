
  
    

    create or replace table `wide-hold-423812-a4`.`intermediate`.`intermediate_cust__join`
      
    partition by range_bucket(
            customerid,
            generate_array(1, 200, 1)
        )
    cluster by Genre

    OPTIONS(
      require_partition_filter=True
    )
    as (
      

with stagin1 as (
    select * from `wide-hold-423812-a4`.`staging`.`stg_customer_add__test`
),
stagin2 as (
    select * from `wide-hold-423812-a4`.`staging`.`stg_customer__test`
)

select a.*, b.Name from
stagin2 as a
join stagin1 as b
on a.CustomerID = b.CustomerID
    );
  