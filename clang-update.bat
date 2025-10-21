call clang-rebase-all 
if errorlevel 1 goto :eof
git checkout main
cd llvm
cmake --workflow --preset tidy
