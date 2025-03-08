@echo off
title Program active.
echo Program is active. To stop, close this window
echo.

:loop
powershell -command "$wsh = New-Object -ComObject WScript.Shell; $wsh.SendKeys('{SCROLLLOCK}'); Start-Sleep -Milliseconds 100; $wsh.SendKeys('{SCROLLLOCK}')"
timeout /t 120 /nobreak > nul
goto loop