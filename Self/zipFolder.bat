@echo off

::设置7z的命令行程序路径
set zip7=C:\Program Files\7-Zip\7z.exe

::设置压缩包保存路径
set Save=F:\test

::当天日期，备份文件名
set curdate=%date:~0,4%-%date:~5,2%-%date:~8,2%

::设置要打包压缩的文件夹
set www=D:\Projects\workspcae\xxxx

::从文件(夹)全路径获取文件(夹)名， 不包含后缀
set fname=xxxx
for %%a in ("%www%") do (set fname=%%~na)

::备份命令 -xr!过滤文件夹  output  build  .svn  .gradle .idea gradle 
"%zip7%" a -tzip "%Save%\%fname%_%curdate%.zip" "%www%" -mx0 -xr!build -xr!output -xr!.svn -xr!.gradle -xr!.idea -xr!.gradle -xr!gradle

pause