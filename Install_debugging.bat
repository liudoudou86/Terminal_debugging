@echo off
rem adb shell dumpsys window | findstr mCurrentFocus 查看当前启动的app名字
rem adb tcpip 5555 重新打开5555端口，需要使用数据线将设备和电脑连接

set /p ip=请输入IP地址及端口：
echo 等待连接设备...
adb connect %ip%

goto start
:start
    echo   ================
    echo     终端调试工具
	echo.
    echo     1.智能医护
    echo     2.智慧看护
    echo     3.智慧留置
    echo     4.呼叫提醒
    echo     5.退出工具
    echo   ================
    echo (请输入数字选项)
    set /p select=                   
    if %select%==1 goto YH
    if %select%==2 goto ZHKH
    if %select%==3 goto ZHLZ
    if %select%==4 goto HJTX
    if %select%==5 goto End

:YH
	echo 正在卸载Apk中...
	adb uninstall com.mobile.medical
	echo 正在安装Apk,请点击允许继续安装
	adb install D:\APK\YH_3.1.0.apk
	Pause
	goto start

:ZHKH
	echo 正在卸载Apk中...
	adb uninstall com.mobile.unattended
	echo 正在安装Apk,请点击允许继续安装
	adb install D:\APK\ZHKH_3.1.0.apk
	Pause
	goto start
	
:ZHLZ
	echo 正在卸载Apk中...
	adb uninstall com.mobile.khba
	echo 正在安装Apk,请点击允许继续安装
	adb install D:\APK\ZHLZ_3.1.0.apk
	Pause
	goto start
	
:HJTX
	echo 正在卸载Apk中...
	adb uninstall com.mobile.display
	echo 正在安装Apk,请点击允许继续安装
	adb install D:\APK\HJTX_3.1.0.apk
	Pause
	goto start

:End