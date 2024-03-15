git checkout main
git branch | find "legalize" | find /v "tmp-legalize" > c:\tmp\branches.txt
git pull origin
if errorlevel 1 exit /b %ERRORLEVEL%
for /f %%b in (c:\tmp\branches.txt) do call clang-rebase %%b
