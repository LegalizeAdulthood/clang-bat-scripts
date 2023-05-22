pushd build\tools\clang\tools\extra\docs
rd /s/q html
popd
cmake --build build --config Release --target docs-clang-tools-html
