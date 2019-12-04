taskkill /f /im explorer.exe
cd /d %userprofile%\AppData\Local
attrib -h IconCache.db
del IconCache.db
explorer.exe
pause 0