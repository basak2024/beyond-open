

  create or replace view `wide-hold-423812-a4`.`staging`.`stg_customer_add__test`
  OPTIONS()
  as select CustomerID,Name from `wide-hold-423812-a4`.`customer_raw_data`.`customer_address`;

