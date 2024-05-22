package Activities;

public class Car {
    String color;
    String transmission;
    int make;
    int tyres;
    int doors;

    public Car (String color, String transmission, int make){
        this.color = color;
        this.transmission = transmission;
        this.make = make;
        this.tyres = 4;
        this.doors = 4;
    }

    public void displayCharacteristics(){
        System.out.println("Color of the car:" + this.color);
        System.out.println("Transmission of the car:" + this.transmission);
        System.out.println("Make of the car:" + this.make);
        System.out.println("Number of tyres of the car:" + this.tyres);
        System.out.println("Number of doors of the car:" + this.doors);
    }

    public void accelarate() {
        System.out.println("Car is moving forward.");
    }

    public void brake() {
        System.out.println("Car has stopped.");
    }
}
