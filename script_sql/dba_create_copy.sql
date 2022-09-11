-- Create the table in the specified schema
CREATE TABLE public.order_detail
(
    sales_date TIMESTAMP NOT NULL, -- Primary Key column
    product_type VARCHAR(50) NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    quantity int NOT NULL,
    price int NOT NULL
);


-- copy csv file and insert into order_detail table
COPY public.order_detail(sales_date, product_type, product_name, quantity, price)
-- copy and paste the file path below:
FROM 'script_sql/cthd_order_detail_aug.csv'
DELIMITER ','
CSV HEADER;
