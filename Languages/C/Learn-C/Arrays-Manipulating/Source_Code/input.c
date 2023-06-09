
//Have to fix it
#include <stdlib.h>
#include <stdio.h>
#include "../Headers/input.h"
int input(int *pointtab1, int size) {
    for (int cpt = 0; cpt < size; cpt++) {
        printf("Entrer la valeur de case numero %i  :", cpt + 1);
        scanf("%i", &pointtab1[cpt]);
    }
    return 0;
}
//input(&tab1,size) ;
//Array-as-input