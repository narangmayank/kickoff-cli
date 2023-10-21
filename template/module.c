#include "module.h"

void scanfPlusPlus(int * elementAddress) {
   // Take integer from standard input
   scanf("%d",elementAddress); 
   
   // Flush the standard input buffer               
   while ((getchar()) != '\n');
}

void printfPlusPlus(char * printMessage) {
   // Print Message to  standard output
   printf(printMessage);

   // Change to new line
   printf("\n");
}