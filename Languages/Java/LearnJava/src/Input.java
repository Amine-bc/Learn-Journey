import java.util.Scanner;
public class Input {

    static public void  Scan()
    {
        Scanner scanner = new Scanner(System.in) ;
        String name = scanner.nextLine();
        System.out.print(name);
        int age = scanner.nextInt();
        System.out.print(age);

        // ! Pay Attention the nextInt take the int and let the <enter> in the buffer
        // Whe you do a nexline after it, it takes directly the <enter> as an input
        scanner.nextLine();
        int num = Integer.parseInt(scanner.nextLine()) ;
        double num2 = Double.parseDouble(scanner.nextLine()) ;
        System.out.println(num) ;

    }
}
