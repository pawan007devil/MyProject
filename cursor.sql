create or replace procedure fetch_sales_curLOOP (s_date date)
as 
BEGIN
    for rec in (select * from sales where sale_date = s_date) loop
        DBMS_OUTPUT.PUT_LINE('Sale ID: ' || rec.sale_id || 
                           ', Sale Date: ' || rec.sale_date || 
                           ', Amount: ' || rec.AMOUNT || 
                           ', Customer ID: ' || rec.customer_id || 
                           ', Product: ' || rec.PRODUCT);
    end loop;
end;

-- To execute the procedure, you can use the following command:
exec fetch_sales_cur(to_date('2023-10-10', 'YYYY-MM-DD'));




