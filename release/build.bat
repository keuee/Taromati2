chcp 65001
@echo off
.\unlocker.exe
cd ..
.\unlocker.exe
echo update build foldr now
pause
cd release
start .\before_build.bat
.\locker.exe
echo build updates.txt now
pause
del Taromati2.nar
"C:\Program Files\7-Zip\7z.exe" a -tzip "Taromati2.nar" -mx=0 -mmt -r "Taromati2"
del Taromati2.7z
"C:\Program Files\7-Zip\7z.exe" a -t7z "Taromati2.7z" s=9999f4g -mx=9 -mmt -ms=512m -mhc -mhcf -m0=LZMA2:a=2:d=1536m:mf=bt4:fb=273:lc=4:lp=0:pb=4 -r "Taromati2.nar" "wiz.nar"
del 初心者包.7z
"C:\Program Files\7-Zip\7z.exe" a -t7z "初心者包.7z" s=9999f4g -mx=9 -mmt -ms=512m -mhc -mhcf -m0=LZMA2:a=2:d=1536m:mf=bt4:fb=273:lc=4:lp=0:pb=4 -r "Taromati2.nar" "wiz.nar" "ssp" "使用方法.txt"
copy /Y /B ..\.github\repository-open-graph-HD.png + 初心者包.7z ..\readme-bg.png
echo build updates.txt done?
pause
start .\after_build.bat
.\unlocker.exe
@echo on
