#ifndef node_struct
#define node_struct

/* node */
typedef struct node {
    int data ;
    struct node *next ;
}Node ;
/*------*/

typedef struct list
{
    Node* head ;
}list ;

#endif