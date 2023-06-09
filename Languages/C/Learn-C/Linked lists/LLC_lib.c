#include <stdio.h>
#include <stdlib.h>
#include "node_struct.h"
#include "permute.c"
/*DELETE_NODE*/
int Delete_node_begin(Node **head);
int Delete_node_end (Node *head);
int Delete_node_end (Node *head)
{
    Node *cpt = head;
    while ((cpt->next)->next != NULL)
    {
        cpt = cpt->next;
    }
    free(cpt->next);
    cpt->next = NULL ;
    return 0;
}
int Delete_node_begin(Node **head)
{
    //int inter_pt ;
    *head = (*head)->next ;
    //free(head);
    //head = inter_pt ;
}
/*Create_unidirectional_list*/
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
/*Add_Node*/
int add_node_end(Node *head);
int add_node_begin(Node **head);
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
    int input ;
    printf("Enter the value contained by the created node");
    scanf("%i",&input);
    new_ptr->data = input ;
}
/*PRINT_Node*/
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
    //Tail
}

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
