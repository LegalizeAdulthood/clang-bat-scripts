d:
call d:\legalize\llvm\bin\vtk-restore.bat
cd \legalize\llvm\code-bases\vtk\build
@rem -header-filter ".*/vtk/vtk/.*" ^
python3 d:\legalize\llvm\llvm-project\clang-tools-extra\clang-tidy\tool\run-clang-tidy.py ^
-checks=-*,modernize-macro-to-enum ^
-fix ^
-format %*
