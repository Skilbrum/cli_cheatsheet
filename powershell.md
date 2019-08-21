# Powershell  
### Flush DNS cache
ipconfig /flushdns

### MD5
Get-FileHash <file> -Algorithm MD5

### MS SQL view
#### Connect MS SQL server
sqlcmd -S localhost,1433 -U username -P password  
#### Get database list
SELECT Name from sys.Databases  
GO  
#### Select database list
USE dbname  
#### Get table list
SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE'
#### Get column list
SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'tablename'
#### Get latest 5 values if index is datetime
SELECT TOP(5) [index], columnname FROM random ORDER BY [index] DESC
