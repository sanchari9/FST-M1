package Activities;

import java.util.HashSet;
import java.util.Set;

public class Activity10 {
    public static void main(String[] args) {
        Set<Integer> hs = new HashSet<>();
        hs.add(9);
        hs.add(2);
        hs.add(8);
        hs.add(3);
        hs.add(7);
        hs.add(10);

        System.out.println("Size of the HaseSet is:" + hs.size());
        System.out.println("Removing 7 from the set:" + hs.remove(7));
        if(hs.remove(45))
            System.out.println("The number is removed from the Set");
        else
            System.out.println("The number is not present in the Set");

        if (hs.contains(10))
            System.out.println("Number is present");
        else
            System.out.println("Number not present");

        System.out.println("Updated number set is:" +hs+ "\nUpdated set size is:" + hs.size());
    }
}
