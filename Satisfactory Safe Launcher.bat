SET epicfolder="C:\Program Files\Epic Games"
echo off
cls
IF NOT EXIST %epicfolder% GOTO NOEPIC


echo                                                             ////
echo                                                           ////
echo \\\\\\\\\\\\\\  \\\   ////////////   //////\\\\\ \\\\   //// /////////////
echo \\\\\\\\\\\\\\  \\\  /////////////  ///////\\\\\\  \\\///// //////////////
echo \\\             \\\  \\\            \\\       ///   \\///        ///
echo \\\             \\\  \\\            \\\              \\/         ///
echo \\\\\\\\\\\     \\\  \\\            \\\\\\\\\\\\\    \ /         ///
echo \\\\\\\\\\\     \\\  \\\            \\\\\\\\\\\\\    ///         ///
echo \\\             \\\  \\\                      ///    ///         ///
echo \\\             \\\  \\\            ///       ///    ///         ///
echo  \\              \\   \\\\\\\\\\\\  \\\\\\\//////    //          //
echo   \               \    \\\\\\\\\\\   \\\\\\/////     /           /
echo.
echo //////////////////////////////////////////////////////////////////////////
echo ///            Welcome pioneer, please select a destination            ///
echo //////////////////////////////////////////////////////////////////////////
echo.
echo               1.   Early Access
echo               2.   Experimental
echo               3.   Backup Only
echo.
CHOICE /C 123 /M "Enter your choice:"
IF ERRORLEVEL 3 GOTO SAVE
IF ERRORLEVEL 2 GOTO LEXP
IF ERRORLEVEL 1 GOTO LEA

:LEXP
echo. Launching Experimental...
START "" "%epicfolder%\SatisfactoryExperimental\FactoryGame.exe"
PING localhost -n 15 >NUL
pause
GOTO SAVE

:LEA
echo. Launching Early Access...
START "" "%epicfolder%\SatisfactoryEarlyAccess\FactoryGame.exe"
PING localhost -n 15 >NUL
pause
:SAVE
cls
echo                                                             ////
echo                                                           ////
echo \\\\\\\\\\\\\\  \\\   ////////////   //////\\\\\ \\\\   //// /////////////
echo \\\\\\\\\\\\\\  \\\  /////////////  ///////\\\\\\  \\\///// //////////////
echo \\\             \\\  \\\            \\\       ///   \\///        ///
echo \\\             \\\  \\\            \\\              \\/         ///
echo \\\\\\\\\\\     \\\  \\\            \\\\\\\\\\\\\    \ /         ///
echo \\\\\\\\\\\     \\\  \\\            \\\\\\\\\\\\\    ///         ///
echo \\\             \\\  \\\                      ///    ///         ///
echo \\\             \\\  \\\            ///       ///    ///         ///
echo  \\              \\   \\\\\\\\\\\\  \\\\\\\//////    //          //
echo   \               \    \\\\\\\\\\\   \\\\\\/////     /           /
echo.
echo                  FICSIT DOES NOT WASTE (SAVE FILES)
echo.
echo //////////////////////////////////////////////////////////////////////////
echo ///                   BACKING UP TO ONEDRIVE LOCATION                  ///
echo //////////////////////////////////////////////////////////////////////////
echo.
xcopy "%localappdata%\FactoryGame\Saved\SaveGames" "C:\Users\%username%\OneDrive\Documents\My Games\BackUp\Satisfactory" /I/D/Y/E/Q
echo To: C:\Users\%username%\OneDrive\Documents\My Games\BackUp\Satisfactory
echo.
pause
GOTO END

:NOEPIC
echo                                                             ////
echo                                                           ////
echo \\\\\\\\\\\\\\  \\\   ////////////   //////\\\\\ \\\\   //// /////////////
echo \\\\\\\\\\\\\\  \\\  /////////////  ///////\\\\\\  \\\///// //////////////
echo \\\             \\\  \\\            \\\       ///   \\///        ///
echo \\\             \\\  \\\            \\\              \\/         ///
echo \\\\\\\\\\\     \\\  \\\            \\\\\\\\\\\\\    \ /         ///
echo \\\\\\\\\\\     \\\  \\\            \\\\\\\\\\\\\    ///         ///
echo \\\             \\\  \\\                      ///    ///         ///
echo \\\             \\\  \\\            ///       ///    ///         ///
echo  \\              \\   \\\\\\\\\\\\  \\\\\\\//////    //          //
echo   \               \    \\\\\\\\\\\   \\\\\\/////     /           /
echo.
echo                      !! ERROR : YOU NEED TO FICSIT !!
echo.
echo     1. Right click the batch file you have just run and click edit
echo     2. Update the first line with the path to your epic games folder
echo          Default: SET epicfolder="C:\Program Files\Epic Games"
echo. 
pause
:END
