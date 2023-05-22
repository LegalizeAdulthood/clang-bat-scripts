@set config=Release
@if not "X%1"=="X" set config=%1
cmake --build build --config %config% --target clang-tidy -j 16
