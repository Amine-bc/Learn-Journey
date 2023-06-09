#include <stdio.h>
#include <stdlib.h>
#include "node_struct.h"
int add_node_end(Node *head);
int add_node_begin(Node **head);
Node* create_list();
Node* create_list()
{
    int size ;
    int val ;
    Node *head = NULL;
    printf("Enter the number of nodes in your list:");
    scanf("%d",&size);
    head = (Node *) malloc(sizeof(Node)) ;
    head->next = NULL ;
    printf("enter the data of the node number%i: ",1);
    scanf("%d",&val);
    head->data = val ;
    Node *new_node = head ;
    //Node *last_node ;
    for (int i = 1 ; i < size; i++) {
        printf("enter the data of the node number%i: ",i+1);
        scanf("%d",&val);
        new_node->next= (Node *) malloc(sizeof(Node));
        new_node = new_node->next ;
        new_node->data = val;
    }
    //new_node->next = NULL ;
    return head ;
}
int add_node_begin(Node **head)
{
   Node* new_ptr = malloc(sizeof(Node));
    new_ptr->next = *head ;
    *head = new_ptr ;
    printf("Enter the value saved in your node");
    scanf("%i",&(new_ptr->data));
    return 0 ;
}
int add_node_end(Node *head)
{
    Node *cpt = head;
    while (cpt->next != NULL)
    {
        cpt = cpt->next;
    }
    Node* new_ptr = malloc(sizeof(Node));
    cpt->next = new_ptr ;
    new_ptr->next = NULL ;
new_ptr->data = 22222 ;
}