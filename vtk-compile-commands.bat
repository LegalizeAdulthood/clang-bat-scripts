pushd d:\legalize\clang\code-bases\vtk\build
del cmakecache.txt
cmake -G Ninja ../vtk -DVTK_BUILD_EXAMPLES:BOOL=ON -DVTK_BUILD_TESTING:BOOL=ON -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=ON
copy compile_commands.json all_compile_commands.json /y
python d:\legalize\clang\bin\vtk-strip-3rd-party.py all_compile_commands.json > compile_commands.json
popd
