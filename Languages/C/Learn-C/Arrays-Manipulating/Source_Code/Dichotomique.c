#include <stdlib.h>
#include <stdio.h>
#include "../Headers/Dichotomique.h"
void dichotomique(int *tab ,int searched_item ,int size)
{
    int  sup ,inf;
    inf = 0;
    sup = size-1 ;
    /*typedef enum booleyan boolean;
    enum booleyan
    {
        O , I
    };
    boolean found = O ;*/
    int found = 0 ;
    int mil ;
    while ((inf <= sup ) && (found == 0 ))
    {
        mil = (sup+inf) / 2 ;
        /*printf("\n inf = %d ",inf);
        printf("| sup = %d ",sup);
        printf("| mil = %d ",mil);*/
        if ( tab[mil] == searched_item ) {
            found = 1 ;
        }else if (tab[mil] <  searched_item )
        {
            inf = mil + 1 ;
        }else {
            sup = mil - 1  ;
        }
    }
    if (found == 0){
        printf("This item '%d' is not found in this array.",searched_item);
    }
    else  {
        printf("item %d found in |%d|",searched_item,mil+1);
    };
    printf("\n ----------------------------------------------------");
}