rem The Change Log!!
rem The Addition Update v3.20
rem Added:
rem 	added clipboard viewer (#20)
rem 	added shutdown utilites (#21)
rem 	added terminal color selector (#23)
rem 	added listing all apps installed (#22)
rem 	added generating a random password (#24)
rem 	added time (#25)
rem 	when you start the script it auto-adjusts the window size to a good one that i set
rem 	added pinging sites (#26)
rem 	added codenames for updates
rem 	added a space for echo to prevent hallucinating, this might be useless for some people but for me it helps.
rem 	added a secret
rem Removed:
rem 	nothing
rem Improved/Changed:
rem 	replaced exit with goto askexit (#4)
rem 	changed one of the big comments that commented with :: to rem because of annoying syntax stuff
rem 	replaced exit with askexit for the internet advice and stuffz
rem Bug Fixes
rem 	nothing
rem Notes
rem 	the tree "hacking" randomly freezes for a second sometimes, this is normal.(#9)
rem 	got anything to suggest? select #17 in the script for my socials!
rem 	all secrects need internet.
rem Secrect Count: 12 > 13
rem Dev Notes (to myself)
rem 	nothing

rem enjoy the script!
@echo off
:checkuac
echo checking for admin perms..
net session >nul 2>&1
if %errorLevel% neq 0 (
    set uac=false
) else (
    set uac=true
)
:urmomshouse
mode con: cols=40 lines=30
cls
echo  0. exit
echo  1. kid*
echo  2. random number 1-65000
echo  3. clean the files..
echo  4. kill certain process
echo  5. open my website*
echo  6. dvd screensaver*
echo  7. my repo version selector*
echo  8. explode*
echo  9. do some "haking"
echo  10. test
echo  11. clones of your mother*
echo  12. some internet advice*
echo  13. joke of the day*
echo  14. fun fact*
echo  15. le troubleshooting console
echo  16. system info
echo  17. socials*
echo  18. touchscreen on/off (needs admin!)
echo  19. basic calculator
echo  20. clipboard viewer
echo  21. shutdown utilies
echo  22. list all apps installed
echo  23. choose a color for the terminal
echo  24. random secure password
echo  25. real time date and time
echo  26. check internet*
echo  * means the feature needs internet!
set /p wow="choose your fate: "
mode con: cols=115 lines=35
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

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
	goto askexit
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
	goto pid
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
    goto test
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
	echo click any key to continue..
    pause >nul
	goto askexit
) else if "%wow%"=="13" (
	cls
    echo heres a joke for you!!11!
    powershell -Command "Invoke-WebRequest -Uri 'https://official-joke-api.appspot.com/random_joke' -OutFile '%temp%\joke.json'"
    powershell -Command "(Get-Content '%temp%\joke.json' | ConvertFrom-Json).setup"
	timeout /t 1 >nul
    powershell -Command "(Get-Content '%temp%\joke.json' | ConvertFrom-Json).punchline"
    del "%temp%\joke.json"
	echo click any key to continue..
    pause >nul
	goto askexit
) else if "%wow%"=="14" (
    cls
    echo getting a fun fact
    powershell -Command "Invoke-WebRequest -Uri 'https://uselessfacts.jsph.pl/api/v2/facts/random?language=en' -OutFile '%temp%\fact.json'"
    powershell -Command "(Get-Content '%temp%\fact.json' | ConvertFrom-Json).text"
    del "%temp%\fact.json"
	echo click any key to continue..
    pause >nul
	goto askexit
) else if "%wow%"=="15" (
	cls
	echo this is literally just a command prompt window
	echo it will not close even on error, which is why i called it "le troubleshooting console"
	echo it only closes when killed, or closed by user.
	cmd /k
) else if "%wow%"=="16" (
	cls
	echo system information:
	echo =========================
	echo computer name: %computername%
	echo user folder: %homedrive%%homepath%
	echo processor architecture: %processor_architecture%
	echo system drive: %homedrive%
	echo number of processor cores: %number_of_processors%
	echo os version: %os%
	echo username: %username%
	echo local date/time: %date% %time%
	echo =========================
	timeout /t 1 >nul
	echo click any key to continue
	pause >nul
	goto askexit
) else if "%wow%"=="17" (
    cls
    goto socials
) else if "%wow%"=="18" (
	cls
	goto tmenu
) else if "%wow%"=="19" (
	goto calculator
) else if "%wow%"=="20" (
	cls
	echo clipboard contents:
	powershell -Command "Get-Clipboard"
	timeout /t 1 >nul
	echo click anything to exit
	pause >nul
) else if "%wow%"=="21" (
	goto shutdownutil
) else if "%wow%"=="22" (
	wmic product get name,version
	goto askexit
) else if "%wow%"=="23" (
	goto color
) else if "%wow%"=="24" (
	cls
	echo generating a random password..
	powershell -Command "Add-Type -AssemblyName 'System.Web'; [System.Web.Security.Membership]::GeneratePassword(12,3)"
	timeout /t 1 >nul
	echo click any key to exit..
	pause >nul
) else if "%wow%"=="25" (
	goto realtimedatetime
) else if "%wow%"=="26" (
	goto ping
rem ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
rem you are now in terretory of the secrects! ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
rem ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
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
) else if "%wow%"=="wowow" (
	cls
    echo      ooh.. secrect??
    timeout /t 1 >nul
    powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/woah.gif' -OutFile '%temp%\woah.gif'"
    start %temp%\woah.gif
    cls
    timeout /t 5 >nul
    del "%temp%\woah.gif"
) else (
    cls
    echo ur fate is invalid hahahahahhaheiruydgohoiugusdf
	echo i will send you back to the main menu!!
	timeout /t 3 >nul
	cls
	goto urmomshouse
)
exit
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: you are now in terretory of the other complicated features! :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:pid
echo this will also kill any subprocesses.
set /p proc="input a pid or process name to kill: "
taskkill /f /im %proc% >nul
taskkill /f /pid %proc% >nul
goto askexit
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:test
echo ready?
timeout /t 1 >nul
echo (click any key to continue)..
pause >nul
cls
echo 1. saturn
echo 2. uranus
echo 3. moon
echo 4. earth
set /p planet="which planet has the most moons? "
if "%planet%"=="1" (
	cls
	echo your correct!!!!
	timeout /t 3 >nul
	cls
) else if "%planet%"=="saturn" (
	cls
	echo your correct!!!!
	timeout /t 3 >nul
	cls
) else (
	cls
	echo wrong!!!!
	pause
	exit
)
echo 1. seagull
echo 2. dog
echo 3. chicken
echo 4. cat
set /p pluh="what animal do i like? "
if "%pluh%"=="3" (
	cls
	echo your correct!!!!
	timeout /t 3 >nul
	cls
) else if "%pluh%"=="chicken" (
	cls
	echo your correct!!!!
	timeout /t 3 >nul
	cls
) else (
	cls
	echo wrong!!!!
	echo click anything to exit
	pause >nul
	exit
)
echo 1. hitler
echo 2. trump
echo 3. ice cream biden
echo 4. all of the above
echo 5. none
set /p politics="what poletition do i like? "
if "%politics%"=="1" (
	cls
	echo what is your problem?
	echo click anything to exit
	pause >nul
	exit
) else if "%politics%"=="5" (
	cls
	echo your correct!!!!
	timeout /t 3 >nul
	cls
) else if "%politics%"=="none" (
	cls
	echo your correct!!!!
	timeout /t 3 >nul
	cls
) else (
	cls
	echo wrong!!!!
	echo click anything to exit
	pause >nul
	exit
)
echo 1. heads
echo 2. tails
set /p headstails="heads.. or tails? "
if "%headstails%"=="2" (
	cls
	echo your correct!!!!
	timeout /t 3 >nul
	cls
) else if "%headstails%"=="tails" (
	cls
	echo your correct!!!!
	timeout /t 3 >nul
	cls
) else (
	echo wrong!!!!
	echo click anything to exit
	pause >nul
	exit
)
echo nothing is impossible
echo 1. true
echo 2. false
set /p possible="true or false? "
if "%possible%"=="2" (
	cls
	echo your correct!!!!
	timeout /t 3 >nul
	cls
) else if "%possible%"=="f" (
	cls
	echo your correct!!!!
	timeout /t 3 >nul
	cls
) else if "%possible%"=="false" (
	cls
	echo your correct!!!!
	timeout /t 3 >nul
	cls
) else (
	echo wrong!!!!
	echo click anything to exit
	pause >nul
	exit
)
cls
echo you passed!
echo great job!
echo theres more coming soon..
timeout /t 1 >nul
goto askexit
exit
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:socials
cls
echo these are *most* of my socials.
echo 0. exit
echo 1. discord
echo 2. telegram
echo 3. youtube
echo 4. twitter
echo 5. roblox
echo 6. minecraft
echo 7. my site
echo 8. go back to main menu
set /p s="select a number: "
if "%s%"=="0" (
	echo ok
	exit
) else if "%s%"=="1" (
	start https://discord.com/users/841797623270342717
) else if "%s%"=="2" (
	start https://t.me/ch1ck3mm
) else if "%s%"=="3" (
	start https://youtube.com/@thyrandomchicken
) else if "%s%"=="2" (
	start https://twitter.com/ch1ck3m
) else if "%s%"=="5" (
	start https://roblox.com/users/1343740658/profile
) else if "%s%"=="6" (
	start https://namemc.com/profile/ch1ck3m
) else if "%s%"=="7" (
	start http://chicken.bulletinbay.com
) else if "%s%"=="8" (
	cls
	goto urmomshouse
) else (
	echo invalid number.
	echo click any key to continue back to the menu.
	pause >nul
	goto socials
)
exit
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
setlocal EnableDelayedExpansion
:tmenu
cls
if "%uac%"=="false" (
    echo you did not start the script as admin!
    echo touchscreen features will be restricted until you start the script as admin.
    goto askexit
) else if "%uac%"=="true" (
    echo you have admin!
    echo continuing..
    timeout /t 1 >nul
	cls
) else (
	echo something happened.. not sure what!
    goto askexit
)
echo this may or may not work for you, but for almost basically everybody it SHOULD work.
echo 0. exit
echo 1. enable touchscreen
echo 2. disable touchscreen
set /p touch="enter choice: "

if "%touch%"=="0" (
    exit
) else if "%touch%"=="1" (
    cls
    echo enabling touchscreen..
    powershell -Command "try { Get-PnpDevice -FriendlyName 'HID-compliant touch screen' | Enable-PnpDevice -Confirm:$false } catch { if ($_.Exception.HResult -eq 0x80041001) { Write-Host 'failed to enable touchscreen. did you run this script as admin?' } else { throw $_ } }"
    powershell -Command "try { Get-PnpDevice -FriendlyName '*touchscreen*' | Enable-PnpDevice -Confirm:$false } catch { if ($_.Exception.HResult -eq 0x80041001) { Write-Host 'failed to enable touchscreen. did you run this script as admin?' } else { throw $_ } }"
    powershell -Command "try { Get-PnpDevice -FriendlyName '*touch screen*' | Enable-PnpDevice -Confirm:$false } catch { if ($_.Exception.HResult -eq 0x80041001) { Write-Host 'failed to enable touchscreen. did you run this script as admin?' } else { throw $_ } }"
    echo if you got no error, then touchscreen should be enabled!
    timeout /t 1 >nul
	goto askexit
) else if "%touch%"=="2" (
    cls
    echo disabling touchscreen..
    powershell -Command "try { Get-PnpDevice -FriendlyName 'HID-compliant touch screen' | Disable-PnpDevice -Confirm:$false } catch { if ($_.Exception.HResult -eq 0x80041001) { Write-Host 'failed to disable touchscreen. did you run this script as admin?' } else { throw $_ } }"
    powershell -Command "try { Get-PnpDevice -FriendlyName '*touchscreen*' | Disable-PnpDevice -Confirm:$false } catch { if ($_.Exception.HResult -eq 0x80041001) { Write-Host 'failed to disable touchscreen. did you run this script as admin?' } else { throw $_ } }"
    powershell -Command "try { Get-PnpDevice -FriendlyName '*touch screen*' | Disable-PnpDevice -Confirm:$false } catch { if ($_.Exception.HResult -eq 0x80041001) { Write-Host 'failed to disable touchscreen. did you run this script as admin?' } else { throw $_ } }"
    echo if you got no error, then touchscreen should be disabled!
	timeout /t 1 >nul
	goto askexit
) else (
    echo invalid choice
    echo click anything to go back
    pause >nul
    goto tmenu
)
endlocal
exit
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:calculator
cls
echo basic calculator:
set /p expr="enter expression: "
set /a result=%expr%
echo result: %result%
echo click any key to continue
pause >nul
goto askexit
exit
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:shutdownutil
cls
echo 0. exit
echo 1. lock
echo 2. shutdown
echo 3. restart
set /p shututil="choose a number: "
if "%shututil%"=="0" (
	exit
) else if "%shututil%"=="1" (
	rundll32.exe user32.dll,LockWorkStation
) else if "%shututil%"=="2" (
	shutdown -s -t 5
) else if "%shututil%"=="3" (
	shutdown -r -t 5
) else (
	echo invalid choice
	echo click anything to go back
	pause >nul
	goto shutdownutil
)
exit
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:color
cls
echo 0. exit
echo 1. blue
echo 2. green
echo 3. aqua
echo 4. red
echo 5. purple
echo 6. yellow
echo 7. restore
set /p color="choose a number: "
if "%color%"=="0" (
	exit
) else if "%color%"=="1" (
	color 1
) else if "%color%"=="2" (
	color 2
) else if "%color%"=="3" (
	color 3
) else if "%color%"=="4" (
	color 4
) else if "%color%"=="5" (
	color 5
) else if "%color%"=="6" (
	color 6
) else if "%color%"=="7" (
	color
) else (
	echo invalid choice.
	echo make sure you are using a number!
	timeout /t 1 >nul
	echo click any key to continue..
	pause >nul
	goto color
)
goto askexit
exit
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:ping
cls
set /p ping="choose website to ping (e.g. google.com): "
ping %ping%
echo click any key to continue
pause >nul
goto askexit
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:realtimedatetime
cls
echo current date and time:
echo ==================
echo  %date%
echo %time%
echo ==================
timeout /t 1 >nul
goto realtimedatetime
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:askexit
set /p askexit="would you like to go back to the main menu? (y/n): "
if "%askexit%"=="y" (
	goto urmomshouse
) else (
	exit
)
exit
rem end of script

rem #################### this is for creating secrects (its the secrect template!!1!) ####################
rem cls
rem echo      ooh.. secrect??
rem timeout /t 1 >nul
rem powershell -Command "Invoke-WebRequest -Uri 'http://chicken.bulletinbay.com/data/' -OutFile '%temp%\'"
rem start %temp%\
rem cls
rem timeout /t 5 >nul
rem del "%temp%\"
rem ######################################################################################################