
- split it into 25 MB per parts  
```split -b 25M mesa.tgz "mesa.tgz"  ```
- to join this file, we can use cat command.  
```cat mesa.tgz* > mesa.tgz  ```
