set enable_phinx=""
if not "%SPHINX%"=="" set "enable_sphinx=-DLLVM_ENABLE_SPHINX_BOOL=ON -DSPHINX_EXECUTABLE:FILEPATH=%SPHINX%"
cmake -G "Visual Studio 17 2022" ^
-A x64 -Thost=x64 ^
-DLLVM_ENABLE_PROJECTS=clang;clang-tools-extra ^
-DLLVM_TARGETS_TO_BUILD=X86 ^
%enable_sphinx% ../llvm %*
