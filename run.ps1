 
 Write-Host "AD authentication"
 mvn compile exec:java -D"exec.mainClass"="com.kessler.ProfileExample" -P local
 
 Write-Host "SQL Server authentication"
 mvn compile exec:java -D"exec.mainClass"="com.kessler.ProfileExample" -P deployed
 
  
 Write-Host "AD authentication Multi profile"
 mvn compile exec:java -D"exec.mainClass"="com.kessler.ProfileExample" -P local,another1
 
 Write-Host "SQL Server authentication Multi profile"
 mvn compile exec:java -D"exec.mainClass"="com.kessler.ProfileExample" -P deployed,another2