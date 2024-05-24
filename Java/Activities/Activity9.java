package Activities;

import java.util.ArrayList;
import java.util.List;

public class Activity9 {
    public static void main(String[] args) {
        List<String> myList = new ArrayList<>();
        myList.add("Green");
        myList.add("White");
        myList.add("Orange");
        myList.add(2, "Yellow");
        myList.add(4, "Red");


        for(String List: myList){
            System.out.println(List);
        }

        System.out.println("3rd element from the List is:" + myList.get(2));

        if (myList.contains("Black"))
            System.out.println("true");
        else
            System.out.println("false");

        System.out.println("Number of elements in the List is:" + myList.size());
        System.out.println("The element which is getting removed from the list is:" + myList.remove(4));
        System.out.println("After removal, number of elements in the List is:" + myList.size());

    }
}
