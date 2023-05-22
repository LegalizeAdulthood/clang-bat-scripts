@echo off
set file=modernize-macro-to-enum.cpp
if not "X%1"=="X" set file=%1
@call run-lit-test %file%

