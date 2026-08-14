/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'bronze' schema from external CSV files. 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `BULK INSERT` command to load data from csv Files to bronze tables.

Parameters:
    None. 
	  This stored procedure does not accept any parameters or return any values.

Usage Example:
    EXEC bronze.load_bronze;
===============================================================================
*/
Create or Alter procedure bronze.load_bronze As
Begin
Declare @start_time datetime , @end_time datetime, @start_batch_time datetime , @batch_end_time datetime;
Begin Try
Set @start_batch_time = GETDATE();
print '==================================================';
print 'Loading Bronze Layer'
print '==================================================';


print '--------------------------------------------------';
print 'Loading CRM Tables';
print '--------------------------------------------------';

Set @start_time = GetDate();
print '>> Truncating Table: bronze.crm_cust_info';
Truncate Table bronze.crm_cust_info;
print '>> Inserting data into : bronze.crm_cust_info';
Bulk insert bronze.crm_cust_info 
From 'C:\Users\DataOnLine\Desktop\New folder\sql-data-warehouse-project-main\sql-data-warehouse-project-main\datasets\source_crm\cust_info.csv'
With(
FirstRow = 2 ,
Fieldterminator = ',',
Tablock
);
Set @end_time = GETDATE();
Print 'Load Duration: ' + Cast(Datediff(second,@start_time,@end_time) As Nvarchar) + ' seconds';

Set @start_time = GetDate();
print '>> Truncating Table: bronze.crm_prd_info';
Truncate Table bronze.crm_prd_info;
print '>> Inserting data into : bronze.crm_prd_info';
Bulk insert bronze.crm_prd_info 
From 'C:\Users\DataOnLine\Desktop\New folder\sql-data-warehouse-project-main\sql-data-warehouse-project-main\datasets\source_crm\prd_info.csv'
With(
FirstRow = 2 ,
Fieldterminator = ',',
Tablock
);
Set @end_time = GETDATE();
Print 'Load Duration: ' + Cast(Datediff(second,@start_time,@end_time) As Nvarchar) + ' seconds';

Set @start_time = GetDate();
print '>> Truncating Table: bronze.crm_sales_details';
Truncate Table bronze.crm_sales_details;
print '>> Inserting data into : bronze.crm_sales_details';
Bulk insert bronze.crm_sales_details 
From 'C:\Users\DataOnLine\Desktop\New folder\sql-data-warehouse-project-main\sql-data-warehouse-project-main\datasets\source_crm\sales_details.csv'
With(
FirstRow = 2 ,
Fieldterminator = ',',
Tablock
);
Set @end_time = GETDATE();
Print 'Load Duration: ' + Cast(Datediff(second,@start_time,@end_time) As Nvarchar) + ' seconds';


print '--------------------------------------------------';
print 'Loading ERP Tables';
print '--------------------------------------------------';

Set @start_time = GetDate();
print '>> Truncating Table: bronze.erp_loc_a101';

Truncate Table bronze.erp_loc_a101;

print '>> Inserting data into : bronze.erp_loc_a101';

Bulk insert bronze.erp_loc_a101 
From 'C:\Users\DataOnLine\Desktop\New folder\sql-data-warehouse-project-main\sql-data-warehouse-project-main\datasets\source_erp\loc_a101.csv'
With(
FirstRow = 2 ,
Fieldterminator = ',',
Tablock
);
Set @end_time = GETDATE();
Print 'Load Duration: ' + Cast(Datediff(second,@start_time,@end_time) As Nvarchar) + ' seconds';

Set @start_time = GetDate();
print '>> Truncating Table: bronze.erp_cust_az12';
Truncate Table bronze.erp_cust_az12;
print '>> Inserting data into : bronze.erp_cust_az12';
Bulk insert bronze.erp_cust_az12 
From 'C:\Users\DataOnLine\Desktop\New folder\sql-data-warehouse-project-main\sql-data-warehouse-project-main\datasets\source_erp\cust_az12.csv'
With(
FirstRow = 2 ,
Fieldterminator = ',',
Tablock
);
Set @end_time = GETDATE();
Print 'Load Duration: ' + Cast(Datediff(second,@start_time,@end_time) As Nvarchar) + ' seconds';

Set @start_time = GetDate();

print '>> Truncating Table: bronze.erp_px_cat_g1v1';
Truncate Table bronze.erp_px_cat_g1v1;
print '>> Inserting data into : bronze.erp_px_cat_g1v1';
Bulk insert bronze.erp_px_cat_g1v1 
From 'C:\Users\DataOnLine\Desktop\New folder\sql-data-warehouse-project-main\sql-data-warehouse-project-main\datasets\source_erp\px_cat_g1v2.csv'
With(
FirstRow = 2 ,
Fieldterminator = ',',
Tablock
);
Set @end_time = GETDATE();
Print 'Load Duration: ' + Cast(Datediff(second,@start_time,@end_time) As Nvarchar) + ' seconds';
print '>> ------------';
Set @batch_end_time = GETDATE();
print '============================================'
print 'Loading Bronze Layer Completed';
print '   - Total Load Duration:' + Cast(Datediff(second,@start_batch_time,@batch_end_time) AS Nvarchar) + ' seconds';
print'============================================='
End Try
Begin Catch
print '============================================'
print 'Error occured During Loading Bronze Layer'
print 'Error Message'+ Error_message();
print '============================================'
End Catch
End
