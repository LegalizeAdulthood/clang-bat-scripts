@set build=D:/legalize/llvm/llvm-project/build
"C:\Program Files\Python310\python.exe" %build%/Release/bin/llvm-lit.py -sv --no-progress-bar --param build_mode=Release %build%/tools/clang/tools/extra/test/clang-tidy/checkers/%1
