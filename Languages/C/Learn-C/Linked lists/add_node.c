//this function create dynamically a node after the end of  a list
#include <stdio.h>
#include <stdlib.h>
#include "node_struct.h"
void add_node(Node* head) ;
void add_node(Node* head)
{
    printf("     <------------------------------------------------>\n       CREATING NEW NODE & ATTRIBUTING IT TO OUR LIST\n     <------------------------------------------------>\n");
    Node* current_ptr = head;
    while (current_ptr->next != NULL)
    {
        current_ptr = current_ptr->next;
    }
    Node* new_node = malloc(sizeof(Node));
    current_ptr->next = new_node ;
    printf("\nEnter the data contained in this node: ");
    int val ;
    scanf("%d",&val);
    new_node->data = val ;
   /* if (head == NULL )
    {
        head = (Node *)malloc(sizeof(Node));
    }*/
}