echo off
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
com.epicgames.launcher://apps/CrabTest?action=launch&silent=true
GOTO SAVE

:LEA
echo. Launching Early Access...
com.epicgames.launcher://apps/CrabEA?action=launch&silent=true

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
xcopy C:\Users\%username%\AppData\Local\FactoryGame\Saved\SaveGames "C:\Users\%username%\OneDrive\Documents\My Games\BackUp\Satisfactory" /I/D/Y/E/Q
echo To: C:\Users\%username%\OneDrive\Documents\My Games\BackUp\Satisfactory
echo.
pause