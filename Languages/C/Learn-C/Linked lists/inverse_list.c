#include <stdio.h>
#include <stdlib.h>
#include "node_struct.h"
//inverse LLC using recurrence 
void inv_list(Node* llc) ;
void inv_list(Node* llc) 
{
   if ((llc->next)->next != NULL)
   {
       inv_list(llc->next);
   }else 
   {
      permuteaddress(llc->next,(llc->next)->next);
   }
}