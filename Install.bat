@echo off
echo Starting...
echo adb wait for device...
adb wait-for-device

set BASE_DIR=D:\Log
set CURR_TIME=%date:~,4%%date:~5,2%%date:~8,2%_%time:~,2%%time:~3,2%%time:~6,2%
set DEST_DIR=%BASE_DIR%_%CURR_TIME%

md "%DEST_DIR%"
cd /d "%DEST_DIR%"

adb pull /sdcard/oppo_log "%DEST_DIR%"