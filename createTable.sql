Use sales;

create table sales_data(product_id int,customer_id int,price int,quantity int,timestamp datetime);

BULK INSERT sales_data
FROM "C:\Users\usman.kamran\Downloads\Data Engineering Capstone Project\E-Commerce-DE-Project\oltpdata.csv"
WITH
(
    DATAFILETYPE = 'char',
    FIELDQUOTE = '"',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '0x0a',   --Use to shift the control to next row
    TABLOCK
)




create index ts on sales_data(timestamp)
EXEC sp_helpindex  'sales_data'






