#include "../Headers/swap.h"
void swap(int *num1,int *num2 )
{
    int inter= *num1;
    *num1 = *num2 ;
    *num2 = inter ;
}