#include <stdio.h>
#include <stdlib.h>
#include "node_struct.h"
//#include "create_list.c"
//#include "Print_node.c"
//#include "Delete_node.c"
//#include "add_node.c"
#include "LLC_lib.c"
int main()
{
    Node* head = NULL ;
    int choice ;
    printf("This is the LLC lib \n \n <------WELCOME------> \nChoose your option by entering its number\n 1.Create a unidirectional list.\n 2.Add node after head\n 3.Add node before tail \n 4.Delete node after head \n 5.Delete node before tail \n 6.Print the List \n 7.Inverse list");
    printf(" ");
    while (1==1) {
        printf("\n Enter your choice : ");
        scanf("%d", &choice);
        switch (choice) {
            case 1 :
                head = create_list(); //Create unidirectional linked list
                break;
            case 2 :
                add_node_begin(&head);
                break;
            case 3:
                add_node_end(head);
                break;
            case 4:
                Delete_node_begin(&head);
                break;
            case 5:
                Delete_node_end(head);
                break;
            case 6 :
                print_node(head);
                break;
            case 7 :
                inv_list(head);
                break;   
        }
    }
    return 0;
}