#include <stdio.h>
#include <stdlib.h>
#include "Source_Code/maximum.c"
#include "Source_Code/output.c"
#include "Source_Code/input.c"
#include "Source_Code/som.c"
#include "Source_Code/Dichotomique.c"
int main() {
    int tab1[50] ;
    int tab2[50] ;
    int tab_res[100] ;
    int size;
    printf("--------------WELOCME-------------- \n");
    printf("This is arrays manipulating program \n");
    printf("Enter the size of your tab : ");
    scanf("%i",&size);
    int choice ;
    //system("clear");
        printf("--------------------MENU--------------------\n");
        printf("  Choose your option by entering its number");
        printf("\n 1.Enter your array \n 2.Show your array \n 3.Find the maximum value of this array \n 4.the sum of the values of the array \n 5.Search \n");
    while (1==1) {
        printf("\n Enter your choice : ");
        scanf("%d", &choice);
        switch (choice) {
            case 1 :
                input(tab1, size);    //Array-as-input
                break;
            case 2 :
                output(tab1, size);
                break;
            case 3:
                max(tab1, size);    //max of a non-sorted array
                break;
            case 4:
                printf("la somme de tout les cases est : %d \n", som(tab1,size));
                break;
            case 5:
                printf("\n What is the searched item ?..");
                int sear_item;
                scanf("%d", &sear_item);
                dichotomique(tab1, sear_item, size);
                break;
        }
    }
    return 0;
}