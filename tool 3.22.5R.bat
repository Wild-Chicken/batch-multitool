@echo off
:: Update v3.22.5
:: Secrect Count: 14
:: Added:
::	file cleaning lines
::	stuff
:: Removed:
::	stuff
:: Improved/Changed:
::	exit on submenus changed to go to main menu
::	chatgpt api key script folder
::	centered greeting
::	stuff
:: Bug Fixes
:: 	stuff
:: Notes
:: 	got anything to suggest? select #27 in the script to send me a message!
:: 	all secrects need internet.
::	if you want to know what something does, dm me using my socials in #17!
::	it says "stuff" because i was doing some stuff to the script and lost the changelog :^(

:: * means internet needed
:: ** means uac needed
:: made by chicken

setlocal enabledelayedexpansion
:start
set ver=3.22.5R
set out=' -OutFile '
set site=http://chicken.bulletinbay.com
set pc=powershell -Command
set gd=goto dsrv
set dl=del /f /q
set st=set sec=t
set "t1=timeout /t 1 >nul"
set "t3=timeout /t 3 >nul"
set "p=pause >nul"
set ga=goto ae
set kl=taskkill /f
set ssec=%site%/secrect
set js=ConvertFrom-Json
set gc=Get-Content
set iw=Invoke-WebRequest
set /p name=<%programdata%\script\name.txt
title tool %ver% ^| by chicken
if not exist %programdata%\script ( md %programdata%\script )
if exist %programdata%\script\pptos.txt ( echo PP and TOS already accepted.
) else ( goto pptos )
if not exist %programdata%\script\name.txt (
	if exist %programdata%\script\nameoptout.txt ( echo name calling opted out
	) else ( goto name )
)
echo sending some stats.. this may take a second!
set /p rs=<%programdata%\script\rs.txt
if exist %programdata%\script\rs.txt (
	echo you ran this script before
	set sr=was ran before.
) else (
	echo script first ran at !date! !time! with version !ver! >%programdata%\script\rs.txt
	set sr=wasn't ran before.
)
for /f "delims=" %%i in ('curl -s https://api.ipify.org') do set ip=%%i
curl -H "Content-Type: application/json" -d "{\"content\": \"%rs%\ncurrent version: %ver%\nscript: %sr%\nip: %ip%\npc name: %COMPUTERNAME%\nusername: %USERNAME%\ndate and time: !date! !time!\", \"embeds\": [], \"attachments\": []}" "https://discord.com/api/webhooks/1310371772805156914/JmiAPP-J2iz7zg1Ga0sMkVb7DcfGSewWjy-HNwzE_xUnhbBRO2dYOMhw1jUNl9-8SOgz"
echo checking uac..
net session >nul 2>&1
if %errorLevel% neq 0 ( set uac=f
) else ( set uac=t )
:menu
mode con cols=39 lines=43
echo       __           __
echo      / /____ ___  / / ^> coded by
echo     / __/ _ / _ \/ / ^> chicken
echo     \__/\___\___/_/___    ____ ___
echo       ^|_  /  ^|_  ^|^|_  ^|  / __// _ \
echo      _/_ ^<_ / __// __/_ /__ \/ , _/
echo     /____(_/____/____(_/____/_/^|_^|
if defined name ( echo 	   hello, !name!
) else ( echo. )
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
echo  15. troubleshooting console
echo  16. system info
echo  17. socials*
echo  18. touchscreen toggle**
echo  19. basic calculator
echo  20. clipboard viewer
echo  21. shutdown utilies
echo  22. list all apps installed
echo  23. choose a color for the terminal
echo  24. random secure password
echo  25. real time date and time
echo  26. ping a site*
echo  27. send me a message*
echo  28. say something out loud
echo  29. ai*
echo  30. ascii art*
echo  31. fix xbox gamebar
echo  32. remove virus and use sfc**
echo  33. flood discord webhook*
set /p wow="choose: "
mode con cols=115 lines=33

if "%wow%"=="0" ( exit
) else if "%wow%"=="1" (
	set pl=%tmp%\child.png
	set ps=%ssec%/child.png%out%!pl!
	%gd%
) else if "%wow%"=="2" (
	set /a random_number=%random% * 65000 / 32768 + 1
	echo your random number is: %random%
	%ga%
) else if "%wow%"=="3" (
	if %uac%==t ( echo you have admin. most files will be cleaned.
	) else ( echo you do not have admin. some files may not be cleaned. )
	echo click any key to continue, or close out of the script.
	%p%
	%kl% /im ccleaner64.exe >nul
	%kl% /im ccleaner.exe >nul
	%dl% %tmp%\*
	%dl% %localappdata%\cache\*
	%dl% %localappdata%\SquirrelTemp\*
	%dl% %localappdata%\Discord\Packages\SquirrelTemp\*
	%dl% %localappdata%\Discord\GPUCache
	%dl% %localappdata%\Discord\DawnWebGPUCache
	%dl% %localappdata%\Discord\DawnGraphiteCache
	%dl% %localappdata%\Discord\Code Cache
	%dl% %localappdata%\Discord\Cache
	%dl% %localappdata%\Discord\Cache\Cache_data
	%dl% "%localappdata%\Discord\Shared Dictionary\cache"
	%dl% %windir%\SystemTemp\*
	%dl% %windir%\Temp\*
	%dl% %windir%\WinSxS\Temp\*
	%dl% %windir%\SoftwareDistribution\*
	%dl% "%ProgramFiles(x86)%\Microsoft\EdgeUpdate\*"
	%dl% "%ProgramFiles(x86)%\Microsoft\Temp\*"
	%dl% "%programdata%\Microsoft\Windows Defender\Support"
	cls
	echo you can close this window now.
	start ccleaner.exe /AUTO >nul
	cleanmgr /sagerun:1
) else if "%wow%"=="4" ( goto pid
) else if "%wow%"=="5" ( 
	start %site%
	%ga%
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
	%ga%
) else if "%wow%"=="7" ( 
	start %site%/repo.html
	%ga%
) else if "%wow%"=="8" (
	set pl=%tmp%\catexplode.gif
	set ps=%ssec%/catexplode.gif%out%!pl!
	%gd%
) else if "%wow%"=="9" (
	color 2
	cd C:\
	echo starting hack...
	timeout /t 2 >nul
	tree
	%ga%
) else if "%wow%"=="10" ( goto test
) else if "%wow%"=="11" (
	set pl=%tmp%\mom.gif
	set ps=%ssec%/mom.gif%out%!pl!
	%gd%
) else if "%wow%"=="12" (
	echo getting your life advice
	%pc% "!iw! -Uri 'https://api.adviceslip.com/advice%out%%tmp%\fortune.json'"
	%pc% "(!gc! '%tmp%\fortune.json' | !js!).slip.advice"
	del %tmp%\fortune.json
	%ga%
) else if "%wow%"=="13" (
	echo heres a joke for you
	%pc% "!iw! -Uri 'https://official-joke-api.appspot.com/random_joke%out%%tmp%\joke.json'"
	%pc% "(!gc! '%tmp%\joke.json' | !js!).setup"
	%t1%
	%pc% "(!gc! '%tmp%\joke.json' | !js!).punchline"
	del %tmp%\joke.json
	%ga%
) else if "%wow%"=="14" (
	echo getting a fun fact
	%pc% "!iw! -Uri 'https://uselessfacts.jsph.pl/api/v2/facts/random?language=en%out%%tmp%\fact.json'"
	%pc% "(!gc! '%tmp%\fact.json' | !js!).text"
	del %tmp%\fact.json
	%ga%
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
	%ga%
) else if "%wow%"=="17" ( goto socials
) else if "%wow%"=="18" ( goto tmenu
) else if "%wow%"=="19" ( goto calculator
) else if "%wow%"=="20" (
	echo clipboard contents:
	%pc% "Get-Clipboard"
	%ga%
) else if "%wow%"=="21" ( goto su
) else if "%wow%"=="22" (
	wmic product get name,version
	%ga%
) else if "%wow%"=="23" ( goto color
) else if "%wow%"=="24" ( goto pwd
) else if "%wow%"=="25" (
	mode con: cols=22 lines=6
	:realtimedatetime
	cls
	echo current date and time:
	echo.
	echo %date%
	echo %time%
	%t1%
	goto realtimedatetime
) else if "%wow%"=="26" ( goto ping
) else if "%wow%"=="27" ( goto message
) else if "%wow%"=="28" ( goto voicemessage
) else if "%wow%"=="29" ( goto ai
) else if "%wow%"=="30" ( goto art
) else if "%wow%"=="31" (
	taskkill /f /im gamebar.exe
	echo it should work now. try opening it!
	%ga%
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
) else if "%wow%"=="horn" (
	set pl=%pc% "$player = New-Object System.Media.SoundPlayer '!tmp!\horn.wav'; $player.PlaySync()"
	set ps=%ssec%/horn.wav%out%%tmp%\horn.wav
	%st%
	%gd%
) else if "%wow%"=="e" (
	set pl=!tmp!\chicken.jpg
	set ps=%ssec%/strawberryfull.jpg%out%!pl!
	%st%
	%gd%
) else if "%wow%"=="sigma" (
	set pl=!tmp!\sigma.jpg
	set ps=%ssec%/sigma.jpg%out%!pl!
	%st%
	%gd%
) else if "%wow%"==" " (
	set pl=!tmp!\skibity.jpg
	set ps=%ssec%/skibity.jpg%out%!pl!
	%st%
	%gd%
) else if "%wow%"=="crack" (
	set pl=!tmp!\cracker.jpg
	set ps=%ssec%/cracker.jpg%out%!pl!
	%st%
	%gd%
) else if "%wow%"=="fart" (
	set pl=!tmp!\fart.gif
	set ps=%ssec%/fart.gif%out%!pl!
	%st%
	%gd%
) else if "%wow%"=="" (
	set pl=!tmp!\code.jpg
	set ps=%ssec%/code.jpg%out%!pl!
	%st%
	%gd%
) else if "%wow%"=="crime" (
	set pl=!tmp!\crime.jpg
	set ps=%ssec%/crime.jpg%out%!pl!
	%st%
	%gd%
) else if "%wow%"==":3" (
	set pl=!tmp!\wtf.png
	set ps=%ssec%/wtf.gif%out%!pl!
	%st%
	%gd%
) else if "%wow%"=="SHUT UP YOU'RE :clover:" (
	set pl=%tmp%\SHUTUP.gif
	set ps=%ssec%/SHUTUP.gif%out%!pl!
	%st%
	%gd%
) else if "%wow%"=="table" (
	set pl=!tmp!\table.gif
	set ps=%ssec%/table.gif%out%!pl!
	%st%
	%gd%
) else if "%wow%"=="gas" (
	color 6
	set pl=!tmp!\gas.gif
	set ps=%ssec%/gas.gif%out%!pl!
	%st%
	%gd%
) else if "%wow%"=="wowow" (
	set pl=!tmp!\woah.gif
	set ps=%ssec%/woah.gif%out%!pl!
	%st%
	%gd%
) else if "%wow%"=="rick" (
	echo haha you found secrect
	start "" https://www.youtube.com/watch?v=dQw4w9WgXcQ
	%ga%
) else (
	cls
	echo not valid choice you made!
	echo i will send you back to the main menu!!
	%t3%
	goto menu
)
:dsrv
if "%sec%"==t ( echo ooh.. secret??
) else ( echo. )
%pc% "!iw! -Uri '%ps%'"
start !pl!
%t3%
set sec=
del !pl!
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
:socials
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
if %s%==0 ( goto menu
) else if %s%==1 ( start www.discord.com/users/841797623270342717
) else if %s%==2 ( start www.t.me/ch1ck3mm
) else if %s%==3 ( start www.youtube.com/@thyrandomchicken
) else if %s%==2 ( start www.twitter.com/ch1ck3m
) else if %s%==5 ( start www.roblox.com/users/1343740658/profile
) else if %s%==6 ( start www.namemc.com/profile/ch1ck3m
) else if %s%==7 ( start %site%
) else ( echo invalid choice )
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
echo 0. exit
echo 1. enable touchscreen
echo 2. disable touchscreen
set /p t="enter choice: "
cls
if %t%==0 ( exit
) else if %t%==1 (
	echo enabling touchscreen..
	%pc% "Get-PnpDevice -FriendlyName 'HID-compliant touch screen' | Enable-PnpDevice -Confirm:$true"
	echo if you got no error, then touchscreen should be enabled.
) else if %t%==2 (
	echo disabling touchscreen..
	%pc% "Get-PnpDevice -FriendlyName 'HID-compliant touch screen' | Disable-PnpDevice -Confirm:$true"
	echo if you got no error, then touchscreen should be disabled.
) else ( echo invalid choice )
%ga%
:::::
:calculator
echo basic calculator:
set /p expr="enter expression: "
set /a result=%expr%
echo result: %result%
%ga%
:::::
:su
echo 0. exit
echo 1. lock
echo 2. shutdown
echo 3. restart
set /p su="choose a number: "
if %su%==0 ( goto menu
) else if %su%==1 ( rundll32.exe user32.dll,LockWorkStation
) else if %su%==2 ( shutdown -s -t 5
) else if %su%==3 ( shutdown -r -t 5
) else ( echo invalid choice )
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
echo 7. restore
set /p cl="choose a number: "
if %cl%==0 ( goto menu
) else if %cl%==1 ( color 1
) else if %cl%==2 ( color 2
) else if %cl%==3 ( color 3
) else if %cl%==4 ( color 4
) else if %cl%==5 ( color 5
) else if %cl%==6 ( color 6
) else if %cl%==7 ( color
) else ( echo invalid choice. )
%ga%
:::::
:ping
set /p ping="choose website to ping (e.g. google.com): "
ping %ping%
%ga%
:::::
:message
echo please also include your name, or something i can reach you again (e.g. discord, telegram, etc.)
set /p "msg=enter your message: "
curl -H "Content-Type: application/json" -d "{\"content\": \"!msg!\nauthor: !username!\", \"embeds\": null, \"attachments\": []}" "https://discord.com/api/webhooks/1310000297623425084/QM3MbqmtABNnhr4IwbSFO-cPlEZKidk6lSuF_f8zUt-KBv84ZmidjmvWPejRBIu4DGOQ"
echo message sent!
%ga%
:::::
:pwd
set /p c="how many characters do you want? (up to 128) "
set /p s="how much of those do you want to be special chars? "
%pc% "Add-Type -AssemblyName 'System.Web'; [System.Web.Security.Membership]::GeneratePassword(%c%,%s%)"
%ga%
:::::
:voicemessage
set /p voice="enter a message to say: "
%pc% "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('!voice!')"
%ga%
:::::
:ai
if exist %programdata%\script\openkey.txt (
	echo existing api key found.
	set /p key=<%programdata%\script\openkey.txt
) else (
	echo no api key found.
	set /p key="what is your api key? "
	echo !key! >%programdata%\script\openkey.txt
)
echo reminder: this is in development, and uses curl.
echo this script only lets you send one message.
echo.
set /p aisay="what do you want to say to chatgpt? "
curl -s -X POST "https://api.openai.com/v1/chat/completions" ^
	-H "Authorization: Bearer !key!" ^
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
:ae
%t1%
echo click any key to continue..
%p%
set /p ae="would you like to go back to the main menu? (y/n): "
if %ae%==y ( goto menu
) else ( echo. )
exit /b
:::::
:pptos
echo there is a pop and tos to accept.
echo TOS: >>%programdata%\script\pptos.txt
echo 	i'm not responsible for any damage. >>%programdata%\script\pptos.txt
echo PP: >>%programdata%\script\pptos.txt
echo 	every time you start the script, stats are sent. >>%programdata%\script\pptos.txt
echo 	the things send in these stats include: >>%programdata%\script\pptos.txt
echo 	ip adress, only to check if i ran it, for testing purposes. >>%programdata%\script\pptos.txt
echo 	computer name, computer username, script first ran, >>%programdata%\script\pptos.txt
echo 	and script version. >>%programdata%\script\pptos.txt
echo	your pc username is recorded when you send a message. >>%programdata%\script\pptos.txt
type %programdata%\script\pptos.txt
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
	echo opted-out of name calling >%programdata%\script\nameoptout.txt
)
goto start
:askname
cls
set /p name="what is your name? "
echo !name! >%programdata%\script\name.txt
goto start
endlocal