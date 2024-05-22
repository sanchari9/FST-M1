package Activities;
import java.util.Arrays;

public class Activity4 {
    //Function of Insertion Sort
    public static void insertionsort(int[] array) {
            int size = array.length;
            for (int i = 1; i < size; i++) {
                int key = array[i];
                int j = i - 1;
                while (j >= 0 && key < array[j]) {
                    array[j + 1] = array[j];
                    --j;
                }
                array[j + 1] = key;
            }
    }

    //Main Method
    public static void main(String args[]) {
        int[] data = { 6, 15, -1, 2, 3, 10 };
        System.out.println("Array before Insertion Sort: " + Arrays.toString(data));
        insertionsort(data);
        System.out.println("Sorted Array in Ascending Order: " +  Arrays.toString(data));
    }
}
