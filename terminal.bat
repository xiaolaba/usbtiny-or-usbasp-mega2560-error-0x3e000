
@echo off
set path=

set mcu=atmega2560
set ac=C:\avr8-gnu-toolchain-win32_x86

path %ac%\bin;%ac%\utils\bin;%path%;

avr-gcc.exe -dumpversion

:::: avrdude terminal only
avrdude -c usbtiny -p %mcu% -t

pause
:end