# Maven Profile Example
The purpose of this code is to demonstrate the ability to utilize Maven profiles to substitute settings in a configuration file.

## Running the example
The repository is provided with 2 script files. I am assuming that Java and Maven are already installed.

Linux
`./run.sh`

Powershell
`./run.ps1`

## To note...

It is important that you utilize the classloader to load the configuration file.

```
	public void loadProperties() throws IOException {
		//FileInputStream fileInputStream = new FileInputStream("src/main/resources/config.properties");
		InputStream is = this.getClass().getClassLoader().getResourceAsStream("config.properties");
```