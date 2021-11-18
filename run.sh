echo "AD authentication"
mvn compile exec:java -D"exec.mainClass"="com.kessler.ProfileExample" -P local

echo "SQL Server authentication"
mvn compile exec:java -D"exec.mainClass"="com.kessler.ProfileExample" -P deployed

echo "AD authentication Multi profile"
mvn compile exec:java -D"exec.mainClass"="com.kessler.ProfileExample" -P local,another1

echo "SQL Server authentication Multi profile"
mvn compile exec:java -D"exec.mainClass"="com.kessler.ProfileExample" -P deployed,another2