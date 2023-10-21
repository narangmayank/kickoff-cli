#include <stdio.h>
#include "module.h"

void showIdentity() {
   // Print info about itself
   printfPlusPlus("Hey there, I am an instance of module.");
   printfPlusPlus("Happy Usage !!");
}

int main() {

    /* Driver code starts */

    // what you can do ? (that sit)
    showIdentity();
    
    /* Driver code ends */

    return 0;                                  
}