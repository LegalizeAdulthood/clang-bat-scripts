git checkout %1
git restore .
git rebase main
if errorlevel 1 goto :again
exit /b 0

:again
pause
git rebase --continue
if errorlevel 1 goto :again
exit /b 0
