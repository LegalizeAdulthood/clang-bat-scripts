call build-tidy Release
if errorlevel 1 exit /b 1
call run-lit %*
