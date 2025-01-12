@echo off
Title flopana's yt downloader
:start

echo.
echo ####################################################################################
echo # flopana's yt downloader                                                          #
echo # Version: 1.2.2                                                                   #
echo # Be sure to check: https://gitlab.aptinstall.de/flopana/Simple-YouTube-Downloader #
echo ####################################################################################
echo.
echo.
echo 1. Download video and convert it to mp3.
echo 2. Download video.
echo 3. Close.
echo.

set /p input=Option:

IF %input% EQU 1 goto option_1

IF %input% EQU 2 goto option_2

IF %input% EQU 3 exit

goto start

:option_1
set /p link=Youtube Link:
youtube-dl -i -x --audio-format mp3 --audio-quality 0 "%link%" -o "audio/%%(title)s.%%(ext)s"
echo.
echo You can enter a new youtube link below:
goto option_1

:option_2
set /p link=Youtube Link:
youtube-dl -i --recode-video mp4 "%link%" -o "video/%%(title)s.%%(ext)s"
echo.
echo You can enter a new youtube link below:
goto option_2

pause > nul
