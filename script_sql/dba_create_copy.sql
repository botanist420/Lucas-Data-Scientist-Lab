-- use database: cthd

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


--create and copy csv file: "ctdh_alc_sales_aug_transform.csv" into alcohol_detail
CREATE TABLE public.alcohol_detail
(
    sales_date TIMESTAMP NOT NULL,
    product_type VARCHAR(50) NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    product_price INT NOT NULL,
    product_amount INT NOT NULL,
    sales_price INT NOT NULL,
    discount INT NOT NULL,
    discount_total INT NOT NULL,
    real_receive_price INT NOT NULL
);

COPY public.alcohol_detail(sales_date,product_type,product_name,product_price,product_amount,sales_price,discount,discount_total,real_receive_price)
-- copy and paste the file path below:
FROM '/Users/lucaslee/Documents/GitHub/Lucas-Data-Scientist-Lab/notebook_ipynb/ctdh_alc_sales_aug_transform.csv'
DELIMITER ','
CSV HEADER;


-- In case you want to rename table:
--ALTER TABLE alcohol_deatil RENAME TO alcohol_detail