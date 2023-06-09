//max of a non-sorted array
#include <stdio.h>
#include <stdlib.h>
#include "../Headers/maximum.h"
void max(int tab1[],int size)
{
    int cpt ;
    int maxi = tab1[0];
    for (cpt = 0; (cpt < size); cpt++) {
        if (tab1[cpt] > maxi) {
            maxi = tab1[cpt];
        }
    }
    printf("\n");
    printf("Here is the maximum of this array is : %i", maxi);
}