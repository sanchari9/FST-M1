package Activities;

import java.util.*;

public class Activity13 {
    public static void main(String[] args) {

        Scanner scan = new Scanner(System.in);
        List<Integer> list = new ArrayList<>();
        Random indexGen = new Random();
        System.out.println("Enter number into array:");
        Integer numbers = scan.nextInt();

        while (scan.hasNextInt()) {
            list.add(scan.nextInt());
        }
        Integer num[] = list.toArray(new Integer[0]);
        int index = indexGen.nextInt(num.length);
        System.out.println("Index value generated: " + index);
        System.out.println("Value in arary at generated index: " + num[index]);

        scan.close();
    }
}