# Powershell  

### SSH with tunnel
```
ssh -i id_file -L clientport:localhost:serverport user@host 
```
### Flush DNS cache
```
ipconfig /flushdns
```
### MD5
```
Get-FileHash <file> -Algorithm MD5
```
### MS SQL view
#### Connect MS SQL server
```
sqlcmd -S localhost,1433 -U username -P password  
```
#### Get database list
```
SELECT Name from sys.Databases  
GO  
```
#### Select database list
```
USE dbname
```
#### Get table list
```
SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE'
```
#### Get column list
```
SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'tablename'
```
#### Get latest 5 values if index is datetime
```
SELECT TOP(5) [index], columnname FROM random ORDER BY [index] DESC
```

### Net resource as disk
```
net use X: //path/to/resource
```

### Install Disk Usage utility
Initialize directory:  
```
mkdir $ENV:USERPROFILE\Sysinternals -ea 0  
cd $ENV:USERPROFILE\Sysinternals  
$ENV:PATH += "$ENV:USERPROFILE\Sysinternals;"  
```  

Download Disk Usage archive:  
```iwr https://download.sysinternals.com/files/DU.zip -OutFile DU.zip```  

Unzip Disk Usage:  
```Expand-Archive DU.zip -DestinationPath .```   

Remove Disk Usage archive:  
```rm DU.zip```

### Uninstall Disk Usage utility
Remove directory:  
```rm -r "$ENV:USERPROFILE\Sysinternals"```  
Remove from path:  
```$ENV:PATH=$ENV:PATH.Replace("$ENV:USERPROFILE\Sysinternals;","")```

### Make disk usage report
```
echo "sep=," > du.csv
du -c -l 1 | Out-File -FilePath du.csv -Append
```

### Test network connection
```tnc 8.8.8.8 -Port 80```
