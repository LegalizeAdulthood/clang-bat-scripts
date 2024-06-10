d:
call d:\legalize\clang\bin\vtk-restore.bat
cd \legalize\clang\code-bases\vtk\build
@rem -header-filter ".*/vtk/vtk/.*" ^
python3 d:\legalize\clang\llvm-project\clang-tools-extra\clang-tidy\tool\run-clang-tidy.py ^
-checks=-*,modernize-macro-to-enum ^
-fix ^
-format %*
