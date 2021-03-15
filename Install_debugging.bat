@echo off

goto start
:start
    echo #################################
	echo.
    echo             终端调试工具
	echo.
    echo   1.智能医护
    echo   2.智慧看护
    echo   3.智慧留置
    echo   4.呼叫提醒
    echo   5.退出工具
	echo.
    echo ################################
    echo (请输入数字)
    set /p select=                   
    if %select%==1 goto YH
    if %select%==2 goto ZHKH
    if %select%==3 goto ZHLZ
    if %select%==4 goto 
    if %select%==5 goto End

:YH
	:Loop
	echo wait-for-device...
	adb wait-for-device

	rem adb shell dumpsys window | findstr mCurrentFocus
	adb uninstall com.mobile.medical
	echo uninstall success
	adb install D:\APK\YH_3.1.0.apk
	echo install success
	Pause
	Goto Loop
	goto start

:ZHKH
	:Loop
	echo wait-for-device...
	adb wait-for-device

	rem adb shell dumpsys window | findstr mCurrentFocus
	adb uninstall com.mobile.medical
	echo uninstall success
	adb install D:\APK\YH_3.1.0.apk
	echo install success

	Pause
	Goto Loop
	
:ZHLZ
	:Loop
	echo wait-for-device...
	adb wait-for-device

	rem adb shell dumpsys window | findstr mCurrentFocus
	adb uninstall com.mobile.medical
	echo uninstall success
	adb install D:\APK\YH_3.1.0.apk
	echo install success

	Pause
	Goto Loop

:E
    ECHO.
    echo 退出