set enable_sphinx=""
if not "%SPHINX%"=="" set "enable_sphinx=-DLLVM_ENABLE_SPHINX_BOOL=ON -DSPHINX_EXECUTABLE:FILEPATH=%SPHINX%"
cmake -G "Ninja Multi-Config" ^
-DLLVM_ENABLE_PROJECTS=clang;clang-tools-extra ^
-DLLVM_TARGETS_TO_BUILD=X86 ^
-DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=ON ^
%enable_sphinx% ../llvm %*
