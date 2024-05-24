package Activities;

import java.util.HashMap;
import java.util.Map;

public class Activity11 {
    public static void main(String[] args) {
        Map<Integer, String> colours = new HashMap<>();
        colours.put(1, "Red");
        colours.put(0, "Pink");
        colours.put(2, "Green");
        colours.put(4, "Violet");
        colours.put(5, "Blue");

        System.out.println("Keys:" + colours.keySet());
        System.out.println("Values:" + colours.values());

        colours.remove(1, "Red");

        System.out.println("Updated Keys after removal:" + colours.keySet());
        System.out.println("Updated Values after removal:" + colours.values());

        if (colours.containsValue("Green"))
            System.out.println("Colour is present");
        else
            System.out.println("Colour is not present");

        System.out.println("Updated size of the map is" + " " + colours.size());
    }
}