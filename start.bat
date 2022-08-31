@echo off
@chcp 65001

set time_start=%time%
set date_start=%date%

echo Updating local files...

echo:
git pull origin master

TIMEOUT /T 5

echo:
echo:
echo:
echo Starting a server...
java -Xmx4G -Xms4G -Dfile.encoding=UTF-8 -jar forge-1.12.2-14.23.5.2860.jar nogui


echo:
echo:
echo:
echo Uploading changes...

echo:
git add *

echo:
git status

echo:
git commit -m "%date_start% %time_start% - %date% %time%   %ComputerName%"

echo:
git push origin master


echo:
echo:
echo:
echo Changes uploaded... Hopefully...
echo All done!

pause