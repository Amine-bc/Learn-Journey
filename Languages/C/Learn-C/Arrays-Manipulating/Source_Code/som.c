#include <stdio.h>
#include <stdlib.h>
#include "../Headers/som.h"
int som(int tab1[],int size)
{
    /*int somme = tab1[0];
    for(int cpt = 1;cpt <size ;cpt ++)
    {
        somme += tab1[cpt];
    }
    return somme;*/
    /*Recursive solution*/
    if (size == 1) return tab1[0] ;
    else return som(tab1,size-1)+tab1[size-1];
}