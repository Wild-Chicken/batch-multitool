rem The Change Log!!
rem Added:
rem 	a secrect (gas)
rem 	a note for killing pids and apps
rem 	renamed "kill certain pid" to "kill certain pid or process name"
rem 	going to console! (it just makes it a cmd prompt window that doesnt close on error with scripts)
rem 	computer info
rem 	joke of le day
rem 	advice
rem 	fun fact
rem 	i added >nul to pause commands and used echo to make my own pause messages (im da maverik!!11!!1!)
rem 	1 second timeout between joke question and punchline (#14)
rem 	added social media to allow suggestions!
rem Removed:
rem 	a line telling the user to close the command prompt window when they are done, and i realized this line is useless, as it closes by itself.
rem 	removed unessacery exit comands
rem Improved/Changed:
rem 	nothing
rem Bug Fixes
rem 	nothing
rem Notes
rem 	the tree "hacking" randomly freezes for a second sometimes, this is normal.
rem 	got anything to suggest? dm @ch1ck3m on discord or @ch1ck3mmm on telegram.
rem Dev Notes (to myself)
rem 	nothing

rem enjoy the script!
@echo off
:urmomshouse
cls
echo 0. exit
echo 1. kid
echo 2. random number 1-65000
echo 3. clean the files..
echo 4. kill certain pid or process name
echo 5. open my website
echo 6. dvd screensaver
echo 7. go to my user-friendly repo selector for lazy humans
echo 8. explode
echo 9. do some "haking"
echo 10. test
echo 11. clones of your mother
echo 12. some internet advice
echo 13. joke of the day
echo 14. fun fact
echo 15. le troubleshooting console
echo 16. computer info
echo 17. request feature (dont be dumb)
set /p wow="choose your fate: "

if "%wow%"=="0" (
    echo bye
) else if "%wow%"=="1" (
	cls
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/child.png' -OutFile '%temp%\child.png'"
	echo                                                     we open file now
    start %temp%\child.png
    timeout /t 5 >nul
    del "%temp%\child.png"
) else if "%wow%"=="2" (
	cls
    set /a random_number=%random% * 65000 / 32768 + 1
    echo your random number is: %random%
	echo click any key to exit..
    pause >nul
) else if "%wow%"=="3" (
	cls
	echo it is recommended to run this script as admin before doing this.
	echo click any button to continue, or close out of the script..
	pause >nul
    taskkill /f /im ccleaner64.exe
    taskkill /f /im ccleaner.exe
    del /f /q "C:\Program Files (x86)\Microsoft\EdgeUpdate\*"
    del /f /q "C:\Program Files (x86)\Microsoft\Temp\*"
    del /f /q "C:\Users\chicken\AppData\Local\SquirrelTemp\*"
    del /f /q "C:\Program Files (x86)\BraveSoftware\Update\*"
    del /f /q "%temp%\*"
	del /f /q "%localappdata%\Discord\Packages\SquirrelTemp\*"
	del /f /q "C:\Windows\SystemTemp\*"
	del /f /q "%localappdata%\SquirrelTemp\*"
	del /f /q "C:\Windows\Temp\*"
	del /f /q "C:\Windows\WinSxS\Temp\*"
	del /f /q "%localappdata%\cache\*"
	timeout /t 1 >nul
	cls
	echo you can close this window now.
    start ccleaner.exe /AUTO
	cls
	echo you can close this window now.
	cleanmgr /sagerun
	cls
	echo you can close this window now.
) else if "%wow%"=="4" (
	cls
	echo  downloading the kill pid or app batch code, as batch sadly does not support nesting a set /p in a set /p
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/pid.bat' -OutFile '%temp%\pid.bat'"
    start %temp%\pid.bat
) else if "%wow%"=="5" (
	echo great choice!
	start http://chicken.bulletinbay.com
) else if "%wow%"=="6" (
	cls
	echo This screensaver uses PYTHON! Make sure you have it installed!
	echo The screensaver is located in your user folder.
	if exist "%homepath%\dvd-screensaver-x86.scr" (
		echo file already exists my friend!
	) else (
		echo we download cuz it doesnt already exist womp womp
		echo this download will take about 15 seconds
		powershell -Command "Invoke-WebRequest -Uri 'https://github.com/lemonyte/dvd-screensaver/releases/download/v1.0.1/dvd-screensaver-x86.scr' -OutFile '"%homepath%\dvd-screensaver-x86.scr'"
	)
	echo starting the screen saver..
	"%homepath%\dvd-screensaver-x86.scr" /S
) else if "%wow%"=="7" (
	start http://chicken.bulletinbay.com/repo.html
) else if "%wow%"=="8" (
    cls
    echo pluh
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/catexplode.gif' -OutFile '%temp%\catexplode.gif'"
    start %temp%\catexplode.gif
    cls
    timeout /t 5 >nul
    del "%temp%\catexplode.gif"
	shutdown -h
) else if "%wow%"=="9" (
	color 2
	cd C:\
	cls
	echo starting hack...
	timeout /t 2 >nul
	tree
	echo EXIT: 1
	pause >nul
	echo what a fucking joke you are!!
) else if "%wow%"=="10" (
    cls
	echo test incoming!
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/test.bat' -OutFile '%temp%\test.bat'"
    start %temp%\test.bat
    cls
) else if "%wow%"=="11" (
    cls
	echo get prepared to see many clones of your mother!
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/mom.gif' -OutFile '%temp%\mom.gif'"
    start %temp%\mom.gif
    cls
    timeout /t 5 >nul
    del "%temp%\mom.gif"
) else if "%wow%"=="12" (
	cls
    echo getting your life advice
    powershell -Command "Invoke-WebRequest -Uri 'https://api.adviceslip.com/advice' -OutFile '%temp%\fortune.json'"
    powershell -Command "(Get-Content '%temp%\fortune.json' | ConvertFrom-Json).slip.advice"
    del "%temp%\fortune.json"
	echo click any key to exit..
    pause >nul
) else if "%wow%"=="13" (
	cls
    echo heres a joke for you!!11!
    powershell -Command "Invoke-WebRequest -Uri 'https://official-joke-api.appspot.com/random_joke' -OutFile '%temp%\joke.json'"
    powershell -Command "(Get-Content '%temp%\joke.json' | ConvertFrom-Json).setup"
	timeout /t 1 >nul
    powershell -Command "(Get-Content '%temp%\joke.json' | ConvertFrom-Json).punchline"
    del "%temp%\joke.json"
	echo click any key to exit..
    pause >nul
) else if "%wow%"=="14" (
    cls
    echo getting a fun fact
    powershell -Command "Invoke-WebRequest -Uri 'https://uselessfacts.jsph.pl/api/v2/facts/random?language=en' -OutFile '%temp%\fact.json'"
    powershell -Command "(Get-Content '%temp%\fact.json' | ConvertFrom-Json).text"
    del "%temp%\fact.json"
	echo click any key to exit..
    pause >nul
) else if "%wow%"=="15" (
	cls
	echo this is literally just a command prompt window
	echo it will not close even on error, which is why i called it "le troubleshooting console"
	echo it only closes when killed, or closed by user.
	cmd /k
) else if "%wow%"=="16" (
	cls
	echo computer name: %computername%
	echo user folder: %homepath%
	echo processor archetecture: %PROCESSOR_ARCHITECTURE%
	echo system drive: %homedrive%
	echo # of processors: %NUMBER_OF_PROCESSORS%
	echo that didn't help did it?
	timeout /t 1 >nul
	echo click any key to exit..
	pause >nul
) else if "%wow%"=="17" (
    cls
    echo this batch script will not delete on its own, to prevent error when using it. 
	echo if you want to delete it yourself, it is stored in %temp%\socials.bat
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/socials.bat' -OutFile '%temp%\socials.bat'"
    start %temp%\socials.bat
) else if "%wow%"=="e" (
	cls
	echo      ooh.. secrect??
	timeout /t 5 >nul
	cls
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/strawberryfull.jpg' -OutFile '%temp%\chicken.jpg'"
	echo                                                     we open file now
    start %temp%\chicken.jpg
	cls
	echo       do you like my chicken????
    timeout /t 5 >nul
    del "%temp%\chicken.jpg"
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
	del "%temp%\horn.mp3"
) else if "%wow%"=="sigma" (
	cls
	echo      ooh.. secrect??
	timeout /t 1 >nul
	powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/sigma.jpg' -OutFile '%temp%\sigma.jpg'"
    start %temp%\sigma.jpg
	cls
	timeout /t 5 >nul
	del "%temp%\sigma.jpg"
) else if "%wow%"==" " (
	cls
	echo      ooh.. secrect??
    timeout /t 1 >nul
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/skibity.jpg' -OutFile '%temp%\skibity.jpg'"
    start %temp%\skibity.jpg
    cls
    timeout /t 5 >nul
    del "%temp%\skibity.jpg"
) else if "%wow%"=="crack" (
    cls
    echo      ooh.. secrect??
    timeout /t 1 >nul
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/cracker.jpg' -OutFile '%temp%\cracker.jpg'"
    start %temp%\cracker.jpg
    cls
    timeout /t 5 >nul
    del "%temp%\cracker.jpg" 
) else if "%wow%"=="fart" (
    cls
    echo      ooh.. secrect??
    timeout /t 1 >nul
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/fart.gif' -OutFile '%temp%\fart.gif'"
    start %temp%\fart.gif
    cls
    timeout /t 5 >nul
    del "%temp%\fart.gif"
) else if "%wow%"=="" (
	cls
	echo wow! a secrect!
    timeout /t 1 >nul
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/code.jpg' -OutFile '%temp%\code.jpg'"
    start %temp%\code.jpg
    cls
    timeout /t 5 >nul
    del "%temp%\code.jpg"
) else if "%wow%"=="crime" (
	cls
    echo      ooh.. secrect??
    timeout /t 1 >nul
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/crime.jpg' -OutFile '%temp%\crime.jpg'"
    start %temp%\crime.jpg
    cls
    timeout /t 5 >nul
    del "%temp%\crime.jpg"
) else if "%wow%"==":3" (
	cls
    echo      ooh.. secrect??
    timeout /t 1 >nul
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/wtf.gif' -OutFile '%temp%\wtf.png'"
    start %temp%\wtf.png
    cls
    timeout /t 5 >nul
    del "%temp%\wtf.png"
) else if "%wow%"=="SHUT UP YOU'RE :clover:" (
	cls
	echo      ooh.. secrect??
	echo	  you shouldn't even know this exists without looking at the code but its ok 🥰 we love you my friend even though your gay
	timeout /t 1 >nul
	powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/SHUTUP.gif' -OutFile '%temp%\SHUTUP.gif'"
	start %temp%\SHUTUP.gif
	cls
	timeout /t 5 >nul
	del "%temp%\SHUTUP.gif"
) else if "%wow%"=="table" (
    cls
    echo      ooh.. secrect??
    timeout /t 1 >nul
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/table.gif' -OutFile '%temp%\table.gif'"
    start %temp%\table.gif
    cls
    timeout /t 5 >nul
    del "%temp%\table.gif"
) else if "%wow%"=="gas" (
	cls
	color 6
	echo      ooh.. secrect??
    timeout /t 1 >nul
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/gas.gif' -OutFile '%temp%\gas.gif'"
    start %temp%\gas.gif
    cls
    timeout /t 5 >nul
    del "%temp%\gas.gif"
) else (
    cls
    echo ur fate is invalid hahahahahhaheiruydgohoiugusdf
	echo i will send you back to the main menu!!
	timeout /t 3 >nul
	cls
	goto urmomshouse
)
rem end of script


rem ######################################################################################################
rem cls
rem echo      ooh.. secrect??
rem timeout /t 1 >nul
rem powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/' -OutFile '%temp%\'"
rem start %temp%\
rem cls
rem timeout /t 5 >nul
rem del "%temp%\"
rem ######################################################################################################