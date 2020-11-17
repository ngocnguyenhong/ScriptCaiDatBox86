- split it into 25 MB per parts  
```split -b 25M wine.tgz "wine.tgz"  ```
- to join this file, we can use cat command.  
```cat wine.tgz* > wine.tgz  ```
