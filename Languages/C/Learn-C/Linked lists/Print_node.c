#include <stdio.h>
#include <stdlib.h>
#include "node_struct.h"
void print_node();
void print_node(Node* head)
{
    Node* inter_pt ;
    inter_pt = head ;
    printf("     <--------------MY LINKED LIST--------------->\n\n     HEAD = %p\n     |\n     |\n     V\n     o-->",head);
    while(inter_pt != NULL)
    {
        printf("[ %i | %p ]--->",inter_pt->data,inter_pt->next);
        inter_pt = inter_pt->next;
    }
    printf("%p\n\n    <------------------------------------------->",inter_pt);
    //QUEUE
}