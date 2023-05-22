@echo off
set flavor=Release
if not "X%1"=="X" set flavor=%1
@echo on
"C:\Program Files\Python310\python.exe" D:/legalize/llvm/llvm-project/build/%flavor%/bin/llvm-lit.py -sv --no-progress-bar --param build_mode=%flavor% D:/legalize/llvm/llvm-project/build/tools/clang/tools/extra/test/clang-tidy/checkers/bugprone-macro-condition.cpp
