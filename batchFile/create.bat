@echo off

echo Setup creating
echo.

Rem Inside codeMore directory, make directory with same name as input and move to that directory
cd codeMore
mkdir %1 && cd %1

Rem Make main.c and copy the template code for this file
echo. > main.c
@type ..\..\codeTemplate\mainTemplate.c > main.c

Rem Make .c file with same name as input and copy the template code for this file
echo. > %1.c
@type ..\..\codeTemplate\fileTemplate.c > %1.c

Rem Make .h file with same name as input and copy the template code for this file
echo. > %1.h
@type ..\..\codeTemplate\fileTemplate.h > %1.h

Rem Running this script to change the dummy string into input name in all the file's
cscript ..\..\batchFile\replace.vbs "main.c" "%1.c" "%1.h" "dummy" "%1"

Rem Run this setup 
gcc -o main main.c %1.c && main.exe
echo. 

echo Rate my setup

Rem Open vs code in this directory
code .
