pushd d:\legalize\clang\code-bases\itk\build
del cmakecache.txt
cmake -G Ninja ../ITK -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=ON
copy compile_commands.json all_compile_commands.json /y
python d:\legalize\clang\bin\vtk-strip-3rd-party.py all_compile_commands.json > compile_commands.json
popd
