package Activities;

public class Activity2 {
    public static void main (String[] args) {
        int[] arrayList = {10, 77, 10, 54, -11, 10};
        int searchNumber = 10;
        int sum = 0;
        for (int i : arrayList) {
            if (i == searchNumber) {
                sum += searchNumber;
            }
            if (sum > 30)
                break;
        }
        if (sum == 30)
            System.out.println("True");
        else
            System.out.println("False");
    }
}
