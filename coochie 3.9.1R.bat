@echo off
:urmomshouse
cls
echo 1. kid
echo 2. random number 1-65000
echo 3. clean the files..
echo 4. kill certain pid
echo 5. open my website
echo 6. dvd screensaver
echo 10. exit
set /p wow="choose your fate: "

if "%wow%"=="1" (
	cls
    setlocal
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/child.png' -OutFile '%temp%\child.png'"
	echo                                                     we open file now
    timeout /t 1 >nul
    start %temp%\child.png
    timeout /t 3 >nul
    del "%temp%\child.png"
    endlocal
) else if "%wow%"=="2" (
	cls
    set /a random_number=%random% * 65000 / 32768 + 1
    echo Your random number is: %random%
    pause
) else if "%wow%"=="3" (
	cls
	echo it is recommended to run this script as admin before doing this.
	echo click any button to continue, or close out of the script.
	pause
    taskkill /f /im ccleaner64.exe
    taskkill /f /im ccleaner.exe
    del /f /q "C:\Windows\Installer\*"
    del /f /q "C:\Program Files (x86)\Microsoft\EdgeUpdate\*"
    del /f /q "C:\Program Files (x86)\Microsoft\Temp\*"
    del /f /q "C:\Users\chicken\AppData\Local\SquirrelTemp\*"
    del /f /q "C:\Program Files (x86)\BraveSoftware\Update\*"
    del /f /q "C:\Windows\SoftwareDistribution\Download\*"
    del /f /q "%temp%\*"
	cls
	echo you can close this window now.
    start ccleaner.exe /AUTO
	cleanmgr /sagerun:1
) else if "%wow%"=="4" (
	setlocal
	set /p procname="pid to kill: "
	taskkill /IM %procname% /F
	endlocal
) else if "%wow%"=="5" (
	start http://chicken.bulletinbay.com
) else if "%wow%"=="6" (
	cls
	echo This screensaver uses PYTHON! Make sure you have it installed!
	echo The screensaver is located in your user folder.
	setlocal
	if exist "%homepath%\dvd-screensaver-x86.scr" (
		echo file already exists my friend!
	) else (
		echo we download cuz it doesnt already exist womp womp
		echo this download will take about 15 seconds
		powershell -Command "Invoke-WebRequest -Uri 'https://github.com/lemonyte/dvd-screensaver/releases/download/v1.0.1/dvd-screensaver-x86.scr' -OutFile '"%homepath%\dvd-screensaver-x86.scr'"
	)
	echo starting the screen saver..
	"%homepath%\dvd-screensaver-x86.scr" /S
	timeout /t 1 >nul
    endlocal
) else if "%wow%"=="7" (
	cls
	echo this does nothing yet!
	timeout /t 2 >nul
	goto urmomshouse
) else if "%wow%"=="8" (
	cls
	echo this does nothing yet!
	timeout /t 2 >nul
	goto urmomshouse
) else if "%wow%"=="9" (
	cls
	echo this does nothing yet!
	timeout /t 2 >nul
	goto urmomshouse
) else if "%wow%"=="10" (
    echo bye
    exit
) else if "%wow%"=="e" (
	cls
	echo      ooh.. secrect??
	timeout /t 2
	cls
    setlocal
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/strawberryfull.jpg' -OutFile '%temp%\chicken.jpg'"
	echo                                                     we open file now
    timeout /t 1 >nul
    start %temp%\chicken.jpg
	cls
	echo       do you like my chicken????
    timeout /t 3 >nul
    del "%temp%\chicken.jpg"
	timeout /t 3 >nul
    endlocal
) else if "%wow%"=="horn" (
	cls
	echo      ooh.. secrect??
	timeout /t 1 >nul
	powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/horn.mp3' -OutFile '%temp%\horn.mp3'"
	timeout /t 1 >nul
    start wmplayer "%temp%\horn.mp3" /min
	timeout /t 3 >nul
	taskkill /f /im wmplayer.exe
	cls
	timeout /t 1 >nul
	del "%temp%\horn.mp3"
	timeout /t 1 >nul
) else if "%wow%"=="sigma" (
	setlocal
	cls
	echo      ooh.. secrect??
	timeout /t 1 >nul
	powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/sigma.jpg' -OutFile '%temp%\sigma.jpg'"
    start %temp%\sigma.jpg
	cls
	timeout /t 2 >nul
	del "%temp%\sigma.jpg"
	timeout /t 1 >nul
	endlocal
) else if "%wow%"==" " (
	setlocal
	cls
	echo      ooh.. secrect??
    timeout /t 1 >nul
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/skibity.jpg' -OutFile '%temp%\skibity.jpg'"
    start %temp%\skibity.jpg
    cls
    timeout /t 1 >nul
    del "%temp%\skibity.jpg"
    timeout /t 1 >nul
    endlocal
) else if "%wow%"=="crack" (
	setlocal
    cls
    echo      ooh.. secrect??
    timeout /t 1 >nul
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/cracker.jpg' -OutFile '%temp%\cracker.jpg'"
    start %temp%\cracker.jpg
    cls
    timeout /t 1 >nul
    del "%temp%\cracker.jpg"
    timeout /t 1 >nul
    endlocal
) else if "%wow%"=="fart" (
	setlocal
    cls
    echo      ooh.. secrect??
    timeout /t 1 >nul
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/fart.gif' -OutFile '%temp%\fart.gif'"
    start %temp%\fart.gif
    cls
    timeout /t 1 >nul
    del "%temp%\fart.gif"
    timeout /t 1 >nul
    endlocal
) else if "%wow%"=="" (
	cls
	echo wow! a secrect!
	timeout /t 2 >nul
	setlocal
    timeout /t 1 >nul
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/code.jpg' -OutFile '%temp%\code.jpg'"
    start %temp%\code.jpg
    cls
    timeout /t 1 >nul
    del "%temp%\code.jpg"
    timeout /t 1 >nul
    endlocal
) else (
    cls
    echo ur fate is invalid hahahahahhaheiruydgohoiugusdf
	echo i will send you back to the main menu!!
	timeout /t 3 >nul
	cls
	goto urmomshouse
)
rem setlocal
rem cls
rem echo      ooh.. secrect??
rem timeout /t 1 >nul
rem powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/' -OutFile '%temp%\'"
rem start %temp%\
rem cls
rem timeout /t 1 >nul
rem del "%temp%\"
rem timeout /t 1 >nul
rem endlocal