import java.awt.*;
import java.util.Scanner;

public class Conditional_switch {

    static void condition() {

        System.out.println("Enter a positif number");

        Scanner scanner = new Scanner(System.in);

        int choice = scanner.nextInt();
        if (choice > 0){
            System.out.println("Moujeb");
        }else{
            System.out.println("Saleb wla zero");
    }
}

    static public void switcher() {
        System.out.println("enter a name Amine Aymen Ilyes");
        Scanner scanner = new Scanner(System.in) ;
        String name = scanner.nextLine()  ;
        switch(name) {
            case "Amine":
                System.out.println("Bouchoucha");
                break ;
            case "Aymen":
                System.out.println("Mougari");
            case "Arabet":
                System.out.println("Arabet");
            default:
                System.out.println("I don't know him!");
        }
    }
}
