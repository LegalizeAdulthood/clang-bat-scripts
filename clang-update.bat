call clang-rebase-all 
if errorlevel 1 goto :eof
git checkout main
cmake --build build --config Release --target clang-tidy %*
cmake --build build --config Debug --target clang-tidy %*
