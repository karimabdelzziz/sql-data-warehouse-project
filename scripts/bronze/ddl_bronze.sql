/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/
if OBJECT_ID('bronze.crm_cust_info','U') is not Null
   Drop Table bronze.crm_cust_info;

Create Table bronze.crm_cust_info(
cst_id int,
cst_key Nvarchar(50),
cst_firstname Nvarchar(50),
cst_lastname Nvarchar(50),
cst_material_status Nvarchar(50),
cst_gndr Nvarchar(50),
cst_create_date Date
);

if OBJECT_ID('bronze.crm_prd_info','U') is not Null
   Drop Table bronze.crm_prd_info;

Create Table bronze.crm_prd_info(
prd_id int,
prd_key Nvarchar(50),
prd_nm Nvarchar(50),
prd_cost int,
prd_line Nvarchar(50),
prd_start_dt DateTime,
prd_end_dt Datetime
);

if OBJECT_ID('bronze.crm_sales_details','U') is not Null
   Drop Table bronze.crm_sales_details;

Create Table bronze.crm_sales_details(
sls_ord_num Nvarchar(50),
sls_prd_key Nvarchar(50),
sls_cust_id int,
sls_order_dt int,
sls_ship_dt int,
sls_due_dt int,
sls_sales int,
sls_quantity int,
sls_price int
);

if OBJECT_ID('bronze.erp_loc_a101','U') is not Null
   Drop Table bronze.erp_loc_a101;

Create Table bronze.erp_loc_a101(
cid Nvarchar(50),
cntry Nvarchar(50)
);

if OBJECT_ID('bronze.erp_cust_az12','U') is not Null
   Drop Table bronze.erp_cust_az12;

Create Table bronze.erp_cust_az12(
cid Nvarchar(50),
bdate Date,
gen Nvarchar(50)
);

if OBJECT_ID('bronze.erp_px_cat_g1v1','U') is not Null
   Drop Table bronze.erp_px_cat_g1v1;

Create Table bronze.erp_px_cat_g1v1(
id Nvarchar(50),
cat Nvarchar(50),
subcat Nvarchar(50),
maintenance Nvarchar(50)
);  
