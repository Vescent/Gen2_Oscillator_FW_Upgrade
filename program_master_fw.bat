@echo off
set /p port=COM Port? 
set file=90-00028-upgrade-1-1.hex
set /p unused=Press ENTER when you are ready to program...

avrdude -p atxmega128a4u -c avr109 -b 115200 -P COM%port% -U flash:w:%file% -e

pause
