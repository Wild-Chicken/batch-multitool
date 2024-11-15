@echo off
:: The Change Log!!
:: Extra Improvments Update v3.22
:: Secrect Count: 12
:: Added:
:: 	clean files stuff
:: 	>nul to killing ccleaner
::	voice stuff
::	well, theres a big boom in ai, why not use it! (will be in dev for quite some time.)
::	new quiz question
::	ascii art (using ascii.live)
::	ascii art at start
::	title
::	many other things!
:: Removed:
:: 	quotes around clean commands that aren't needed
::	some other things
:: Improved/Changed:
:: 	some things in clean files
:: 	sorted clean files commands
:: 	rem to :: for cool
:: 	C:\Windows to %windir%
::	freed some chars in places!
::	allowed changing of password
::	changed filename to "tool"
::	shorter powershell commands
::	removed some commands from the touchscreen stuff. The first command should haave worked for everything, if it now doesn't work, send me a message using #27 in the script.
::	also removed error handling that worked on rare occasians, and wasn't needed after the uac check was implemented.
::	replaced repeated commands with set variables.
::	many other things!
:: Bug Fixes
:: 	cleaning files not working
::	catched 5 and 7 with exit
::	OLDER VERSIONS WILL NOT WORK FOR ANY IMAGES/SECRECTS, AS I HAVE UPDATED THE SITE MAP.
:: Notes
:: 	got anything to suggest? select #27 in the script to send me a message!
:: 	all secrects need internet.

::	Credits:
::	It's all me. (chicken)

setlocal enabledelayedexpansion
set out=' -OutFile '
set site=www.chicken.bulletinbay.com
set pscmd=powershell -Command
set gd=goto dsrv
set del=del /f /q
set st=set sec=t
set "t1=timeout /t 1 >nul"
set "t3=timeout /t 3 >nul"
set "p=pause >nul"
set gta=goto askexit
set kl=taskkill /f
set ssec=%site%/secrect

echo checking for uac..
net session >nul 2>&1
if %errorLevel% neq 0 (
    set uac=f
) else (
    set uac=t
)
title tool 3.22R
:menu
mode con cols=40 lines=45
cls
echo          __              __
echo         / /_____  ____  / /
echo        / __/ __ \/ __ \/ /
echo       / /_/ /_/ / /_/ / /
echo       \__/\____/\____/_/
echo         ______ ____ ____   ____
echo         \__  / \__ \\__ \ / __ \
echo          /_ /  __/ /__/ // /_/ /
echo        ___/ / / __// __// _, _/
echo       /____(_)____/____/_/ /_/
echo.
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
echo  18. touchscreen toggle (needs admin)
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
echo  29. ai (in dev)*
echo  30. ascii art*
echo  * means internet is needed
set /p wow="choose your fate: "
mode con cols=115 lines=33

if %wow%==0 ( exit /b
) else if %wow%==1 (
	cls
    set ps=%ssec%/child.png%out%%tmp%\child.png
    set pl=%tmp%\child.png
	%gd%
) else if %wow%==2 (
	cls
    set /a random_number=%random% * 65000 / 32768 + 1
    echo your random number is: %random%
	%gta%
) else if %wow%==3 (
	cls
	if %uac%==t ( echo you have admin. most files will be cleaned.
	) else ( echo you do not have admin. some files may not be cleaned.
	)
	echo click any key to continue, or close out of the script.
	%p%
    %kl% /im ccleaner64.exe >nul
    %kl% /im ccleaner.exe >nul
	%del% %tmp%\*
	%del% %localappdata%\cache\*
    %del% %localappdata%\SquirrelTemp\*
	%del% %localappdata%\Discord\Packages\SquirrelTemp\*
	%del% %windir%\SystemTemp\*
	%del% %windir%\Temp\*
	%del% %windir%\WinSxS\Temp\*
	%del% %windir%\SoftwareDistribution\*
    %del% "%ProgramFiles(x86)%\Microsoft\EdgeUpdate\*"
    %del% "%ProgramFiles(x86)%\Microsoft\Temp\*"
	cls
	echo you can close this window now.
    start ccleaner.exe /AUTO >nul
	cleanmgr /sagerun:1
) else if %wow%==4 ( goto pid
) else if %wow%==5 ( 
	start %site%
	exit
) else if %wow%==6 (
    cls
    echo this screensaver uses python!
    echo the screensaver is stored in your user folder
	set pl=%homepath%\dvd-screensaver-x86.scr /S
    if exist %homepath%\dvd-screensaver-x86.scr (
        echo file already exists..
    ) else (
        set ps=www.github.com/lemonyte/dvd-screensaver/releases/download/v1.0.1/dvd-screensaver-x86.scr%out%%homepath%\dvd-screensaver-x86.scr
        %gd%
    )
	cls
    echo starting..
    %pl%
	%gta%
) else if %wow%==7 ( 
	start %site%/repo.html
	%gta%
) else if %wow%==8 (
    set ps=%ssec%/catexplode.gif%out%%tmp%\catexplode.gif
    set pl=%tmp%\catexplode.gif
    %gd%
) else if %wow%==9 (
	color 2
	cd C:\
	cls
	echo starting hack...
	timeout /t 2 >nul
	tree
	%gta%
) else if %wow%==10 ( goto test
) else if %wow%==11 (
    set ps=%ssec%/mom.gif%out%%tmp%\mom.gif
    set pl=%tmp%\mom.gif
    %gd%
) else if %wow%==12 (
	cls
    echo getting your life advice
    %pscmd% "Invoke-WebRequest -Uri 'www.api.adviceslip.com/advice%out%%tmp%\fortune.json'"
    %pscmd% "(Get-Content '%tmp%\fortune.json' | ConvertFrom-Json).slip.advice"
    del %tmp%\fortune.json
	%gta%
) else if %wow%==13 (
	cls
    echo heres a joke for you
    %pscmd% "Invoke-WebRequest -Uri 'www.official-joke-api.appspot.com/random_joke%out%%tmp%\joke.json'"
    %pscmd% "(Get-Content '%tmp%\joke.json' | ConvertFrom-Json).setup"
	%t1%
    %pscmd% "(Get-Content '%tmp%\joke.json' | ConvertFrom-Json).punchline"
    del %tmp%\joke.json
	%gta%
) else if %wow%==14 (
    cls
    echo getting a fun fact
    %pscmd% "Invoke-WebRequest -Uri 'www.uselessfacts.jsph.pl/api/v2/facts/random?language=en%out%%tmp%\fact.json'"
    %pscmd% "(Get-Content '%tmp%\fact.json' | ConvertFrom-Json).text"
    del %tmp%\fact.json
	%gta%
) else if %wow%==15 (
	cls
	echo it will not close even on error, which is why i called it "troubleshooting console"
	echo it only closes when killed, or closed by user.
	cmd /k
) else if %wow%==16 (
	cls
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
	%gta%
) else if %wow%==17 ( goto socials
) else if %wow%==18 ( goto tmenu
) else if %wow%==19 ( goto calculator
) else if %wow%==20 (
	cls
	echo clipboard contents:
	%pscmd% "Get-Clipboard"
	%gta%
) else if %wow%==21 ( goto shutdownutil
) else if %wow%==22 (
	wmic product get name,version
	%gta%
) else if %wow%==23 ( goto color
) else if %wow%==24 ( goto password
) else if %wow%==25 (
	mode con: cols=22 lines=6
	:realtimedatetime
	cls
	echo current date and time:
	echo.
	echo %date%
	echo %time%
	%t1%
	goto realtimedatetime
) else if %wow%==26 ( goto ping
) else if %wow%==27 ( goto message
) else if %wow%==28 ( goto voicemessage
) else if %wow%==29 ( goto ai
) else if %wow%==30 ( goto art
rem you are now in terretory of the secrects!
) else if %wow%==horn (
	cls
	set ps=%ssec%/horn.mp3%out%%tmp%\horn.mp3
	set pl=wmplayer "%tmp%\horn.mp3" /min
	set kill=taskill /f /im wmplayer.exe
	%st%
	%gd%
) else if %wow%==e (
    set ps=%ssec%/strawberryfull.jpg%out%%tmp%\chicken.jpg
    set pl=%tmp%\chicken.jpg
	%st%
	%gd%
) else if %wow%==sigma (
	set ps=%ssec%/sigma.jpg%out%%tmp%\sigma.jpg
    set pl=%tmp%\sigma.jpg
	%st%
	%gd%
) else if %wow%==" " (
    set ps=%ssec%/skibity.jpg%out%%tmp%\skibity.jpg
    set pl=%tmp%\skibity.jpg
	%st%
	%gd%
) else if %wow%==crack (
    set ps=%ssec%/cracker.jpg%out%%tmp%\cracker.jpg
    set pl=%tmp%\cracker.jpg
	%st%
	%gd%
) else if %wow%==fart (
    set ps=%ssec%/fart.gif%out%%tmp%\fart.gif
    set pl=%tmp%\fart.gif
	%st%
	%gd%
) else if %wow%=="" (
    set ps=%ssec%/code.jpg%out%%tmp%\code.jpg
    set pl=%tmp%\code.jpg
	%st%
	%gd%
) else if %wow%==crime (
    set ps=%ssec%/crime.jpg%out%%tmp%\crime.jpg
    set pl=%tmp%\crime.jpg
	%st%
	%gd%
) else if %wow%==:3 (
    set ps=%ssec%/wtf.gif%out%%tmp%\wtf.png
	set pl=%tmp%\wtf.png
	%st%
	%gd%
) else if %wow%==SHUT UP YOU'RE :clover: (
	set ps=%ssec%/SHUTUP.gif%out%%tmp%\SHUTUP.gif
	set pl=%tmp%\SHUTUP.gif
	%st%
	%gd%
) else if %wow%==table (
    set ps=%ssec%/table.gif%out%%tmp%\table.gif
    set pl=%tmp%\table.gif
	%st%
	%gd%
) else if %wow%==gas (
	color 6
    set ps=%ssec%/gas.gif%out%%tmp%\gas.gif
    set pl=%tmp%\gas.gif
	%st%
	%gd%
) else if %wow%==wowow (
    set ps=%ssec%/woah.gif%out%%tmp%\woah.gif
	set pl=%tmp%\woah.gif
	%st%
    %gd%
) else (
    cls
    echo not valid choice you made!
	echo i will send you back to the main menu!!
	%t3%
	goto menu
)
:dsrv
cls
if %sec%==t (
	echo  ooh.. secrect??
	%t1%
) else (
	set >nul
)
%pscmd% "Invoke-WebRequest -Uri '%ps%'"
start %pl%
%t3%
if defined kill (
	%kill%
) else (
	set >nul
)
set sec=
del %pl%
if defined dlredir (
    goto %dlredir%
) else (
	set pl=
)
set ps=
%gta%
rem you're in the complicated features!
:pid
cls
echo this will also kill any subprocesses.
set /p p="input a pid or process name to kill: "
%kl% /im %p% >nul
%kl% /pid %p% >nul
%gta%
:::::
:test
set c=echo your correct!
set w=echo wrong!
cls
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
	%gta%
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
	%gta%
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
	%gta%
) else if %test%==5 (
	cls
	%c%
	%t3%
	cls
) else (
	cls
	%w%
	%gta%
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
	%gta%
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
	%gta%
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
	%gta%
)
cls
echo you passed!
echo great job!
echo theres more coming soon..
%gta%
:::::
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
cls
if %s%==0 ( echo.
) else if %s%==1 ( start www.discord.com/users/841797623270342717
) else if %s%==2 ( start www.t.me/ch1ck3mm
) else if %s%==3 ( start www.youtube.com/@thyrandomchicken
) else if %s%==2 ( start www.twitter.com/ch1ck3m
) else if %s%==5 ( start www.roblox.com/users/1343740658/profile
) else if %s%==6 ( start www.namemc.com/profile/ch1ck3m
) else if %s%==7 ( start %site%
) else if %s%==8 ( goto menu
) else (
	echo invalid choice
)
%gta%
:::::
:tmenu
cls 
) else if %uac%==t (
    echo you have admin!
    echo continuing..
) else (
	echo you did not start the script as admin!
    echo touchscreen features will be restricted until you start the script as admin.
    %gta%
)
cls
echo this might work for you, but for basically everybody it SHOULD work.
echo 0. exit
echo 1. enable touchscreen
echo 2. disable touchscreen
set /p t="enter choice: "

if %t%==0 ( %gta%
) else if %touch%==1 (
    cls
    echo enabling touchscreen..
    %pscmd% "Get-PnpDevice -FriendlyName 'HID-compliant touch screen' | Enable-PnpDevice -Confirm:$true"
    echo if you got no error, then touchscreen should be enabled.
) else if %t%==2 (
    cls
    echo disabling touchscreen..
    %pscmd% "Get-PnpDevice -FriendlyName 'HID-compliant touch screen' | Disable-PnpDevice -Confirm:$true"
    echo if you got no error, then touchscreen should be disabled.
) else (
	cls
    echo invalid choice
)
%gta%
:::::
:calculator
cls
echo basic calculator:
set /p expr="enter expression: "
set /a result=%expr%
echo result: %result%
%gta%
:::::
:shutdownutil
cls
echo 0. exit
echo 1. lock
echo 2. shutdown
echo 3. restart
set /p shututil="choose a number: "
if %shututil%==0 ( %gta%
) else if %shututil%==1 ( rundll32.exe user32.dll,LockWorkStation
) else if %shututil%==2 ( shutdown -s -t 5
) else if %shututil%==3 ( shutdown -r -t 5
) else ( echo invalid choice
)
%gta%
:::::
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
if %color%==0 (
) else if %color%==1 ( color 1
) else if %color%==2 ( color 2
) else if %color%==3 ( color 3
) else if %color%==4 ( color 4
) else if %color%==5 ( color 5
) else if %color%==6 ( color 6
) else if %color%==7 ( color
) else ( echo invalid choice.
)
%gta%
:::::
:ping
cls
set /p ping="choose website to ping (e.g. google.com): "
ping %ping%
%gta%
:::::
:message
cls
:: pls dont spam the webhook
:: this is only for feedback
echo please also include your name, or something i can reach you again (e.g. discord, telegram, etc.)
set /p "msg=enter your message to me: "
%pscmd% "Invoke-RestMethod -Uri 'https://discord.com/api/webhooks/1305173085183545415/OX7dst50hLl80lvYaZeUurGvlGALvL-rx4K58qvXp3Dg8bdlS1gjhabFHmSVQLKSm71i' -Method Post -Body '{\"content\": \"%msg%\"}' -ContentType 'application/json'"
echo message sent!
%gta%
:::::
:password
cls
set /p c="how many characters do you want? (up to 128) "
set /p s="how much of those do you want to be special chars? "
%pscmd% "Add-Type -AssemblyName 'System.Web'; [System.Web.Security.Membership]::GeneratePassword(%c%,%s%)"
%gta%
:::::
:voicemessage
cls
set /p voice="enter a message to say: "
%pscmd% "Add-Type –AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('%voice%')"
%gta%
:::::
:ai
cls
if exist %programdata%\openkey.txt (
    echo existing api key found.
    set /p aikey=<%programdata%\openkey.txt
) else (
	echo no api key found.
	set /p aikey="what is your api key? "
	echo !aikey! >%programdata%\openkey.txt
)
echo reminder: this is in development, and uses curl.
echo this script only lets you send one message.
echo.
set /p aiprompt="what do you want to say to chatgpt? "
set "data={\"model\": \"gpt-3.5-turbo\", \"messages\": [{\"role\": \"user\", \"content\": \"!aiprompt!\"}]}"
curl -s -X POST "https://api.openai.com/v1/chat/completions" ^
    -H "Authorization: Bearer %aikey%" ^
    -H "Content-Type: application/json" ^
    -d "!data!"
%gta%
:::::
:art
echo                    _ _
echo   ____ ___________(_/_)
echo  / __ `/ ___/ ___/ / /
echo / /_/ (__  ) /__/ / /
echo \__,_/____/\___/_/_/
echo   ____ ______/ /_
echo  / __ `/ ___/ __/
echo / /_/ / /  / /_
echo \__,_/_/   \__/
echo.
echo this uses curl.
echo list of ascii things to use: knot, rick, batman,
echo hes, parrot, dvd, forrest, bnr, donut, clock,
echo coin, nyan, playstation, spidyswing, torus-knot,
echo batman-running, can-you-hear-me
set /p art="which one? "
curl ascii.live/%art%
:::::
:askexit
%t1%
echo click any key to continue..
%p%
set /p ae="would you like to go back to the main menu? (y/n): "
if %ae%==y ( goto menu
) else ( exit
)
endlocal


:: this is for creating downloads
:: set ps=%ssec%/%out%%tmp%\
:: set pl=%tmp%\
:: %gd%