#include <stdio.h>
#include <stdlib.h>
void permuteaddress(Node *a,Node *b);
void permuteaddress(Node *a,Node *b)
{
Node num = *a ;
*a = *b ;
*b = num ;
}
