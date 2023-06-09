#include <stdlib.h>
#include <stdio.h>
/*------*/
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