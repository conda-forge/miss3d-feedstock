@echo on

rem set "INCLUDE=%LIBRARY_INC%;%INCLUDE%"
rem set "LIB=%LIBRARY_LIB%;%LIB%"

copy src\Makefile.inc.gnu64 src\Makefile.inc

nmake prefix=%PREFIX%/bin F90=%fortran_compiler%
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1