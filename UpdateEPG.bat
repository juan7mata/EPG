@ECHO off
:CheckOS
IF EXIST "%PROGRAMFILES(X86)%" (GOTO BIT64) ELSE (GOTO BIT32)

:BIT64
SET ProgramPath=%PROGRAMFILES(X86)%
GOTO END

:BIT32
SET ProgramPath=%PROGRAMFILES%
GOTO END

:END
"%ProgramPath%\WebGrab+Plus\bin\WebGrab+Plus.exe" "%LOCALAPPDATA%\WebGrab+Plus"

@REM comment out next line, to stop the command window from automaticly closing
@REM PAUSE

EXIT