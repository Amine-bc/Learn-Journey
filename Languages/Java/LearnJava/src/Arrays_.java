import java.lang.reflect.Array;
import java.util.Arrays;

public class Arrays_ {

    public static void Arrays_manip(){

        String str ="afpeoiuwrpojfclkmksdohtijhrewoiuthre";
        char vowels[] = new char[5];
        char rand[] = {'x','y','z'};
        char[] ch = str.toCharArray() ;
        vowels[0] = 'e';
        vowels[1] = 'i';
        vowels[2] = 'a';
        vowels[3] = 'u';
        vowels[4] = 'o';

        System.out.println(Arrays.toString(vowels).toUpperCase());
        Arrays.sort(vowels,1,4);
        System.out.println(Arrays.toString(vowels).toUpperCase());
        Arrays.sort(vowels);
        System.out.println(Arrays.toString(vowels).toUpperCase());
        System.out.println(Arrays.toString(rand).toUpperCase());
        System.out.println(vowels.length);


        System.out.println("Search");
        Arrays.sort(ch);
        int foundindex = Arrays.binarySearch(ch, 'f');
        System.out.println(String.valueOf(foundindex));

        Arrays.fill(ch,3,ch.length-1,'a');
        System.out.println(Arrays.toString(ch));

        int numbers[] ={1,6,33,67,89 };
        int copy_numbers[] = numbers.clone();
        Arrays.fill(numbers,0);
        System.out.println(Arrays.toString(copy_numbers));
        System.out.println(Arrays.toString(numbers));

    }

}

