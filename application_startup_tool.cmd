:: Startup program that launches specified applications after a reboot with one double-click; gets everything ready for the day.

:: NOTE: Chrome must be set to RUN AS ADMIN; 
:: To set: Go to C:\Program Files (x86)\Google\Chrome\Application and right-click chrome.exe > properties > Compatibility tab > tick 'Run this program as an administrator' option > click OK

@echo off

set ver=1.2.0
set startin="C:\Program Files (x86)\"

cls
echo.
echo. 
echo. +--------------------------------------------------+
echo.
echo.               COMPANY NAME; SITE NAME    
echo.                                                    
echo.           Applications Quick Startup Tool           
echo.                    Version %ver%                 
echo.               Fitzsimmons; 15-NOV-2022              
echo.                                                    
echo. +--------------------------------------------------+
echo.
echo Opening applications...
echo.
echo. - MS Outlook
::timeout > nul .5
echo. - MS Edge
::timeout > nul .5
echo. - MS OneNote
::timeout > nul .5
echo. - Cisco Jabber
::timeout > nul .5
echo. - Google Chrome; as admin (for 'Chosen Site')
::timeout > nul .5
echo. - XXXXXX
::timeout > nul .5
echo. - XXXX

timeout > nul 1
::Opening OneNote
start "" /B "C:\Program Files (x86)\Microsoft Office\root\Office16\onenote.exe"
::Opening Outlook
start "" /B "C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE"
::Opening Edge
start "" /B "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
REM ::Opening program
REM start "" /B "\\ipaddress\dir\dir\widgety-thing.exe"
REM ::Opening Chrome as admin; see note at top
REM start "" /B "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" https://loc.domain.com  
REM ::Opening XXXX
REM start "" /B "\\something\somewheres\app.exe"

timeout > nul 10


::Show apps running; proc IDs, RAM, etc.
echo.
echo The following applications have been started:
echo.
:: /i is case-insensitive
tasklist | find /i "outlook.exe"
tasklist | find /i "msedge.exe"
tasklist | find /i "onenote.exe"
tasklist | find /i "jabber.exe"
tasklist | find /i "chrome.exe"
tasklist | find /i "widgety-thing.exe"
::XXXXXXXX not running locally

pause