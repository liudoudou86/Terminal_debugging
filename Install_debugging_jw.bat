@echo off
rem adb shell dumpsys window | findstr mCurrentFocus �鿴��ǰ������app����
rem adb tcpip 5555 ���´�5555�˿ڣ���Ҫʹ�������߽��豸�͵�������

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
	set /p ip=������IP���Σ�
    set /p select=����������ѡ�
    if %select%==1 goto YH
    if %select%==2 goto ZHKH
    if %select%==3 goto ZHLZ
    if %select%==4 goto HJTX
    if %select%==5 goto End

:YH
	for /f "skip=1 tokens=1 delims= " %%i in (1,1,255) do (
	echo �ȴ������豸...
	adb connect %ip%%%i
	echo ���ڰ�װapk,�������������װ
	adb install -r D:\APK\YH_3.1.0.apk)
	pause
	goto start

:ZHKH
	set /p ip=������IP���Σ�
	for /L %%i in (1,1,254) do (
	echo �ȴ������豸...
	adb connect %ip%%%i
	echo ���ڰ�װapk,�������������װ
	adb install -r D:\APK\ZHKH_3.1.0.apk)
	pause
	goto start
	
:ZHLZ
	set /p ip=������IP���Σ�
	for /L %%i in (1,1,254) do (
	echo �ȴ������豸...
	adb connect %ip%%%i
	echo ���ڰ�װapk,�������������װ
	adb install -r D:\APK\ZHLZ_3.1.0.apk)
	pause
	goto start
	
:HJTX
	set /p ip=������IP���Σ�
	for /L %%i in (1,1,254) do (
	echo �ȴ������豸...
	adb connect %ip%%%i
	echo ���ڰ�װapk,�������������װ
	adb install -r D:\APK\HJTX_3.1.0.apk)
	pause
	goto start

:End