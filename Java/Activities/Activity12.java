package Activities;

public class Activity12 {
    public static void main(String[] args) {

        Addable ad1 = (int num1, int num2) -> (num1 + num2);
        System.out.println("Addition of two numbers without body:" + ad1.add(2,5));

        Addable ad2 = (int num1, int num2) -> {
            return num1 + num2;
        };
        System.out.println("Addition of two numbers with body:" + ad2.add(9,10));
    }
}

