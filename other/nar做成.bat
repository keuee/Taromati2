@echo off
echo nar������........
for %%x in (%*) do "C:\Program Files\7-Zip\7z.exe" a -tzip "%%~dpx%%~nxx.nar" -mx=0 -mmt -r "%%~dpx%%~nxx" 
pause
