@echo off
rem adb shell dumpsys window | findstr mCurrentFocus

goto start
:start
    echo   ================
    echo     �ն˵��Թ���
	echo.
    echo     1.����ҽ��
    echo     2.�ǻۿ���
    echo     3.�ǻ�����
    echo     4.��������
    echo     5.�˳�����
    echo   ================
    echo (����������ѡ��)
    set /p select=                   
    if %select%==1 goto YH
    if %select%==2 goto ZHKH
    if %select%==3 goto ZHLZ
    if %select%==4 goto HJTX
    if %select%==5 goto End

:YH
	echo �ȴ������豸...
	adb wait-for-device
	echo ����ж��Apk��...
	adb uninstall com.mobile.medical
	echo ���ڰ�װApk,�������������װ
	adb install D:\APK\YH_3.1.0.apk
	Pause
	goto start

:ZHKH
	echo �ȴ������豸...
	adb wait-for-device
	echo ����ж��Apk��...
	adb uninstall com.mobile.unattended
	echo ���ڰ�װApk,�������������װ
	adb install D:\APK\ZHKH_3.1.0.apk
	Pause
	goto start
	
:ZHLZ
	echo �ȴ������豸...
	adb wait-for-device
	echo ����ж��Apk��...
	adb uninstall com.mobile.khba
	echo ���ڰ�װApk,�������������װ
	adb install D:\APK\ZHLZ_3.1.0.apk
	Pause
	goto start
	
:HJTX
	echo �ȴ������豸...
	adb wait-for-device
	echo ����ж��Apk��...
	adb uninstall com.mobile.display
	echo ���ڰ�װApk,�������������װ
	adb install D:\APK\HJTX_3.1.0.apk
	Pause
	goto start

:End