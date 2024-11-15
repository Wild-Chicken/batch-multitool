@echo off
rem The Change Log!!
rem The Efficency Update v3.21
rem Secrect Count: 12
rem Added:
rem 	added message to me
rem Removed:
rem 	removed "great choice!" when you open my site. (i might remove the entire feature and say it moved to socials..)
rem Improved/Changed:
rem 	improved the secrect/download system
rem 	made all the exit use one universal exit system
rem 	changed the social menu to reloop back to go back to this main menu
rem 	freed up space for one line commands
rem 	moved realtimedatetime to main instead of using alternate ways
rem 	made kid use modern downolad system
rem 	"we download cuz it doesnt already exist womp womp" > "file doesn't exist, i will download it!" in screensaver
rem 	made screensaver use modern download system
rem 	made horn use modern download system
rem 	moved @echo off, improving the time of statup and startup in general
rem 	improved efficiency of cleaning files
rem 	freed up some lines of code with one lines commands.
rem 	lots of other things
rem Bug Fixes
rem 	nothing
rem Notes
rem 	the tree "hacking" randomly freezes for a second sometimes, this is normal.(#9)
rem 	got anything to suggest? select #17 in the script for my socials!
rem 	all secrects need internet.
rem Dev Notes (to myself)
rem 	nothing

rem enjoy the script!
set out=' -OutFile '
:checkuac
echo checking for admin perms..
net session >nul 2>&1
if %errorLevel% neq 0 (
    set uac=f
) else (
    set uac=t
)
:urmomshouse
mode con: cols=40 lines=31
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
echo  27. send me a message*
echo  * means the feature needs internet!
set /p wow="choose your fate: "
mode con: cols=115 lines=33
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

if "%wow%"=="0" (
    echo bye
) else if "%wow%"=="1" (
	cls
    set ps=http://chicken.bulletinbay.com/data/child.png%out%%tmp%\child.png
    set pl=%tmp%\child.png
	goto downlaodserve
) else if "%wow%"=="2" (
	cls
    set /a random_number=%random% * 65000 / 32768 + 1
    echo your random number is: %random%
	goto askexit
) else if "%wow%"=="3" (
	cls
	set d=del /f /q
	echo it is recommended to run this script as admin before doing this.
	echo click any button to continue, or close out of the script..
	pause >nul
    taskkill /f /im ccleaner64.exe
    taskkill /f /im ccleaner.exe
    %d% "C:\Program Files (x86)\Microsoft\EdgeUpdate\*"
    %d% "C:\Program Files (x86)\Microsoft\Temp\*"
    %d% "C:\Users\chicken\AppData\Local\SquirrelTemp\*"
    %d% "C:\Program Files (x86)\BraveSoftware\Update\*"
    %d% "%tmp%\*"
	%d% "%localappdata%\Discord\Packages\SquirrelTemp\*"
	%d% "C:\Windows\SystemTemp\*"
	%d% "%localappdata%\SquirrelTemp\*"
	%d% "C:\Windows\Temp\*"
	%d% "C:\Windows\WinSxS\Temp\*"
	%d% "%localappdata%\cache\*"
	clear
	echo you can close this window now.
    start ccleaner.exe /AUTO >nul
	cleanmgr /sagerun >nul.
) else if "%wow%"=="4" ( goto pid
) else if "%wow%"=="5" ( start http://chicken.bulletinbay.com
) else if "%wow%"=="6" (
	cls
	echo This screensaver uses PYTHON! Make sure you have it installed!
	echo The screensaver is located in your user folder.
	if exist "%homepath%\dvd-screensaver-x86.scr" (
		echo file already exists my friend!
	) else (
		echo file doesn't exist, i will download it!
		echo this download will take about 15 seconds
		set ps=https://github.com/lemonyte/dvd-screensaver/releases/download/v1.0.1/dvd-screensaver-x86.scr%out%%homepath%\dvd-screensaver-x86.scr
		set pl=%homepath%\dvd-screensaver-x86.scr
		set dlredir=screensaver
		goto downloadserve
		:screensaver
		set pl=
		set dlredir=
	)
	echo starting the screen saver..
	%homepath%\dvd-screensaver-x86.scr /S
	goto askexit
) else if "%wow%"=="7" (
	start http://chicken.bulletinbay.com/repo.html
) else if "%wow%"=="8" (
    cls
    echo pluh
    set ps=http://chicken.bulletinbay.com/data/catexplode.gif%out%%tmp%\catexplode.gif
    set pl=%tmp%\catexplode.gif
	set dlredir=explode
    goto downloadserve
	:explode
    timeout /t 5 >nul
    del "%tmp%\catexplode.gif"
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
    set ps=http://chicken.bulletinbay.com/data/mom.gif%out%%tmp%\mom.gif
    set pl=%tmp%\mom.gif
    goto downloadserve
) else if "%wow%"=="12" (
	cls
    echo getting your life advice
    powershell -Command "Invoke-WebRequest -Uri 'https://api.adviceslip.com/advice%out%%tmp%\fortune.json'"
    powershell -Command "(Get-Content '%tmp%\fortune.json' | ConvertFrom-Json).slip.advice"
    del "%tmp%\fortune.json"
	goto askexit
) else if "%wow%"=="13" (
	cls
    echo heres a joke for you!!11!
    powershell -Command "Invoke-WebRequest -Uri 'https://official-joke-api.appspot.com/random_joke%out%%tmp%\joke.json'"
    powershell -Command "(Get-Content '%tmp%\joke.json' | ConvertFrom-Json).setup"
	timeout /t 1 >nul
    powershell -Command "(Get-Content '%tmp%\joke.json' | ConvertFrom-Json).punchline"
    del "%tmp%\joke.json"
	goto askexit
) else if "%wow%"=="14" (
    cls
    echo getting a fun fact
    powershell -Command "Invoke-WebRequest -Uri 'https://uselessfacts.jsph.pl/api/v2/facts/random?language=en%out%%tmp%\fact.json'"
    powershell -Command "(Get-Content '%tmp%\fact.json' | ConvertFrom-Json).text"
    del "%tmp%\fact.json"
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
	goto askexit
) else if "%wow%"=="17" ( goto socials
) else if "%wow%"=="18" ( goto tmenu
) else if "%wow%"=="19" ( goto calculator
) else if "%wow%"=="20" (
	cls
	echo clipboard contents:
	powershell -Command "Get-Clipboard"
	goto askexit
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
	goto askexit
) else if "%wow%"=="25" (
	:realtimedatetime
	mode con: cols=25 lines=6
	cls
	echo current date and time:
	echo ==================
	echo %date%
	echo %time%
	echo ==================
	timeout /t 1 >nul
	goto realtimedatetime
) else if "%wow%"=="26" (
	goto ping
) else if "%wow%"=="27" (
	goto message
rem ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
rem you are now in terretory of the secrects! ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
rem ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
) else if "%wow%"=="horn" (
	cls
	set ps=http://chicken.bulletinbay.com/data/horn.mp3%out%%tmp%\horn.mp3
	set pl=wmplayer "%tmp%\horn.mp3" /min
	set dlredir=horn
	set kill=taskill /f /im wmplayer.exe
	goto downloadserve
) else if "%wow%"=="e" (
    set ps=http://chicken.bulletinbay.com/data/strawberryfull.jpg%out%%tmp%\chicken.jpg
    set pl=%tmp%\chicken.jpg
	set sec=t
	goto downloadserve
) else if "%wow%"=="sigma" (
	set ps=http://chicken.bulletinbay.com/data/sigma.jpg%out%%tmp%\sigma.jpg
    set pl=%tmp%\sigma.jpg
	set sec=t
	goto downloadserve
) else if "%wow%"==" " (
    set ps=http://chicken.bulletinbay.com/data/skibity.jpg%out%%tmp%\skibity.jpg
    set pl=%tmp%\skibity.jpg
	set sec=t
	goto downloadserve
) else if "%wow%"=="crack" (
    set ps=http://chicken.bulletinbay.com/data/cracker.jpg%out%%tmp%\cracker.jpg
    set pl=%tmp%\cracker.jpg
	set sec=t
	goto downloadserve
) else if "%wow%"=="fart" (
    set ps=http://chicken.bulletinbay.com/data/fart.gif%out%%tmp%\fart.gif
    set pl=%tmp%\fart.gif
	set sec=t
	goto downloadserve
) else if "%wow%"=="" (
    set ps=http://chicken.bulletinbay.com/data/code.jpg%out%%tmp%\code.jpg
    set pl=%tmp%\code.jpg
	set sec=t
	goto downloadserve
) else if "%wow%"=="crime" (
    set ps=http://chicken.bulletinbay.com/data/crime.jpg%out%%tmp%\crime.jpg
    set pl=%tmp%\crime.jpg
	set sec=t
	goto downloadserve
) else if "%wow%"==":3" (
    set ps=http://chicken.bulletinbay.com/data/wtf.gif%out%%tmp%\wtf.png
	set pl=%tmp%\wtf.png
	set sec=t
	goto downloadserve
) else if "%wow%"=="SHUT UP YOU'RE :clover:" (
	set ps=http://chicken.bulletinbay.com/data/SHUTUP.gif%out%%tmp%\SHUTUP.gif
	set pl=%tmp%\SHUTUP.gif
	set sec=t
	goto downloadserve
) else if "%wow%"=="table" (
    set ps=http://chicken.bulletinbay.com/data/table.gif%out%%tmp%\table.gif
    set pl=%tmp%\table.gif
	set sec=t
	goto downloadserve
) else if "%wow%"=="gas" (
	color 6
    set ps=http://chicken.bulletinbay.com/data/gas.gif%out%%tmp%\gas.gif
    set pl=%tmp%\gas.gif
	set sec=t
	goto downloadserve
) else if "%wow%"=="wowow" (
    set ps=http://chicken.bulletinbay.com/data/woah.gif%out%%tmp%\woah.gif
	set pl=%tmp%\woah.gif
	set sec=t
    goto downloadserve
) else (
    cls
    echo ur fate is invalid hahahahahhaheiruydgohoiugusdf
	echo i will send you back to the main menu!!
	timeout /t 3 >nul
	cls
	goto urmomshouse
)
:downloadserve
cls
if "%sec%"=="t" (
	echo  ooh.. secrect??
	timeout /t 1 >nul
) else (
	set sec=
)
powershell -Command "Invoke-WebRequest -Uri '%ps%'"
start %pl%
timeout /t 3 >nul
if defined kill (
	%kill%
) else (
	echo hi >nul
)
del %pl%
set ps=
set sec=
if defined dlredir (
    goto %dlredir%
) else (
	set pl=
)
goto askexit
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: you are now in terretory of the other complicated features! :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:pid
cls
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
	goto askexit
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
	goto askexit
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
	goto askexit
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
	goto askexit
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
	goto askexit
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
	goto askexit
)
cls
echo you passed!
echo great job!
echo theres more coming soon..
goto askexit
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
if "%s%"=="0" ( goto askexit
) else if "%s%"=="1" ( start https://discord.com/users/841797623270342717
) else if "%s%"=="2" ( start https://t.me/ch1ck3mm
) else if "%s%"=="3" ( start https://youtube.com/@thyrandomchicken
) else if "%s%"=="2" ( start https://twitter.com/ch1ck3m
) else if "%s%"=="5" ( start https://roblox.com/users/1343740658/profile
) else if "%s%"=="6" ( start https://namemc.com/profile/ch1ck3m
) else if "%s%"=="7" ( start http://chicken.bulletinbay.com
) else if "%s%"=="8" ( goto urmomshouse
) else (
	echo invalid number.
	echo click any key to continue back to the main menu.
	pause >nul
	goto urmomshouse
)
goto askexit
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:tmenu
cls
if "%uac%"=="f" (
    echo you did not start the script as admin!
    echo touchscreen features will be restricted until you start the script as admin.
    goto askexit
) else if "%uac%"=="t" (
    echo you have admin!
    echo continuing..
    timeout /t 1 >nul
	cls
) else (
	echo something happened.. somehow you may have skipped the uac check at the start..
    goto askexit
)
echo this may or may not work for you, but for almost basically everybody it SHOULD work.
echo 0. exit
echo 1. enable touchscreen
echo 2. disable touchscreen
set /p touch="enter choice: "

if "%touch%"=="0" (
    goto askexit
) else if "%touch%"=="1" (
    cls
    echo enabling touchscreen..
    powershell -Command "try { Get-PnpDevice -FriendlyName 'HID-compliant touch screen' | Enable-PnpDevice -Confirm:$false } catch { if ($_.Exception.HResult -eq 0x80041001) { Write-Host 'failed to enable touchscreen. did you run this script as admin?' } else { throw $_ } }"
    powershell -Command "try { Get-PnpDevice -FriendlyName '*touchscreen*' | Enable-PnpDevice -Confirm:$false } catch { if ($_.Exception.HResult -eq 0x80041001) { Write-Host 'failed to enable touchscreen. did you run this script as admin?' } else { throw $_ } }"
    powershell -Command "try { Get-PnpDevice -FriendlyName '*touch screen*' | Enable-PnpDevice -Confirm:$false } catch { if ($_.Exception.HResult -eq 0x80041001) { Write-Host 'failed to enable touchscreen. did you run this script as admin?' } else { throw $_ } }"
    echo if you got no error, then touchscreen should be enabled
	goto askexit
) else if "%touch%"=="2" (
    cls
    echo disabling touchscreen..
    powershell -Command "try { Get-PnpDevice -FriendlyName 'HID-compliant touch screen' | Disable-PnpDevice -Confirm:$false } catch { if ($_.Exception.HResult -eq 0x80041001) { Write-Host 'failed to disable touchscreen. did you run this script as admin?' } else { throw $_ } }"
    powershell -Command "try { Get-PnpDevice -FriendlyName '*touchscreen*' | Disable-PnpDevice -Confirm:$false } catch { if ($_.Exception.HResult -eq 0x80041001) { Write-Host 'failed to disable touchscreen. did you run this script as admin?' } else { throw $_ } }"
    powershell -Command "try { Get-PnpDevice -FriendlyName '*touch screen*' | Disable-PnpDevice -Confirm:$false } catch { if ($_.Exception.HResult -eq 0x80041001) { Write-Host 'failed to disable touchscreen. did you run this script as admin?' } else { throw $_ } }"
    echo if you got no error, then touchscreen should be disabled!
	goto askexit
) else (
    echo invalid choice
    echo click anything to go to main menu
    goto askexit
)
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:calculator
cls
echo basic calculator:
set /p expr="enter expression: "
set /a result=%expr%
echo result: %result%
goto askexit
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:shutdownutil
cls
echo 0. exit
echo 1. lock
echo 2. shutdown
echo 3. restart
set /p shututil="choose a number: "
if "%shututil%"=="0" ( goto askexit
) else if "%shututil%"=="1" ( rundll32.exe user32.dll,LockWorkStation
) else if "%shututil%"=="2" ( shutdown -s -t 5
) else if "%shututil%"=="3" ( shutdown -r -t 5
) else (
	echo invalid choice
	echo click any key to go back
	pause >nul
	goto shutdownutil
)
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
if "%color%"=="0" ( goto askexit
) else if "%color%"=="1" ( color 1
) else if "%color%"=="2" ( color 2
) else if "%color%"=="3" ( color 3
) else if "%color%"=="4" ( color 4
) else if "%color%"=="5" ( color 5
) else if "%color%"=="6" ( color 6
) else if "%color%"=="7" ( color
) else (
	echo invalid choice.
	echo make sure you are using a number!
	timeout /t 1 >nul
	echo click any key to continue..
	pause >nul
	goto color
)
goto askexit
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:ping
cls
set /p ping="choose website to ping (e.g. google.com): "
ping %ping%
goto askexit
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:message
cls
:: pls dont spam the webhook
:: this is only for feedback
set hook=https://discord.com/api/webhooks/1299113328425177199/98108zeGNlf61q8xdxfr3lYKQiG1v4qUC7-ocSltlTdQHfscVj-l2LtNarBmbnwSEjo4
set /p "message=enter your message to me: "
set "payload={\"content\": \"%message%\"}"
powershell -Command "Invoke-RestMethod -Uri '%hook%' -Method Post -Body '%payload%' -ContentType 'application/json'"
echo message sent!
goto askexit
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:askexit
timeout /t 1 >nul
echo click any key to continue..
pause >nul
set /p askexit="would you like to go back to the main menu? (y/n): "
if "%askexit%"=="y" ( goto urmomshouse
) else ( exit /b
)
rem end of script

rem #################### this is for creating downloads ##################################################
rem set ps=http://chicken.bulletinbay.com/data/%out%%tmp%\
rem set pl=%tmp%\
rem goto downloadserve
rem ######################################################################################################