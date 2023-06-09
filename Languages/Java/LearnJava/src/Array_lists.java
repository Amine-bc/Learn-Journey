import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;

public class Array_lists {

    // This Data structure is not very efficient
    // it is implemented as an array in the memory

    private ArrayList<Integer> numbers = new ArrayList<>();

    private void initarraylist()
    {
        int i =0 ;
        for (i=0; i< 10; i++)
        {
            numbers.add((int)(Math.random()*10));
        }
    }
    public void Array_lists_(){
        initarraylist();
        System.out.println(numbers.toString());
        this.getarraylist();
        System.out.println(numbers.remove(3));
        System.out.println(numbers.set(4,6));

        numbers.sort(Comparator.naturalOrder());

        System.out.println(numbers);
        numbers.clear();
        System.out.println(numbers);




    }

    private void getarraylist(){
        int i =0 ;
        for ( i=0; i< numbers.size();i++){
            System.out.println(numbers.get(i));
        }
    }

}
