@echo on

rem set "INCLUDE=%LIBRARY_INC%;%INCLUDE%"
rem set "LIB=%LIBRARY_LIB%;%LIB%"

copy src\Makefile.inc.gnu64 src\Makefile.inc
xcopy %RECIPE_DIR%\contrib\* %PREFIX%\bin\ /s

mingw32-make "prefix=%PREFIX%\bin" F90=%fortran_compiler%
if errorlevel 1 exit 1

mingw32-make install
if errorlevel 1 exit 1