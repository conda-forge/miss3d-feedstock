@echo on

rem set "INCLUDE=%LIBRARY_INC%;%INCLUDE%"
rem set "LIB=%LIBRARY_LIB%;%LIB%"

copy src\Makefile.inc.gnu64 src\Makefile.inc

ninja prefix=%PREFIX%/bin F90=%FC%
if errorlevel 1 exit 1

ninja install
if errorlevel 1 exit 1