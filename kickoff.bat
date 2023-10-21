@echo off

Rem Create directory with same name as input
mkdir %1

Rem Creat the files from the template provided
@type template\main.c > %1\main.c
@type template\module.c > %1\%1.c
@type template\module.h > %1\%1.h

Rem Running this script to change the module string into input name in all the file's
cscript utils\replace.vbs "%1\main.c" "%1\%1.c" "%1\%1.h" "module" "%1"

Rem Run this setup 
cd %1
gcc main.c %1.c -o main.exe
main.exe

Rem Open vs code in this directory
code .