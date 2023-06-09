#include <stdio.h>
#include <stdlib.h>
#include "../Headers/output.h"
void output(int tab1[],int size)
{
    // show the array
    printf("Here is your array \n");
    for(int cpt =0;cpt < size;cpt++)
    {
        printf("| %i ", tab1[cpt]);
    }
    printf("|");
    //Arrays-as-Output
}