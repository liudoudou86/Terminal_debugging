@echo off

goto start
:start
    echo #################################
	echo.
    echo             �ն˵��Թ���
	echo.
    echo   1.����ҽ��
    echo   2.�ǻۿ���
    echo   3.�ǻ�����
    echo   4.��������
    echo   5.�˳�����
	echo.
    echo ################################
    echo (����������)
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
    echo �˳�