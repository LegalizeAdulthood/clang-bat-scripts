git checkout %1
git restore .
git rebase main
if errorlevel 1 (pause && git rebase --continue)
