@echo off
echo ִ����........
for %%x in (%*) do attrib +h +s "%%~dpx%%~nxx" 
pause
