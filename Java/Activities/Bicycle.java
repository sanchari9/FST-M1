package Activities;

class Bicycle implements BicycleParts, BicycleOperations{
    public int gears;
    public int currentSpeed;
    public Bicycle (int gears, int currentSpeed){
        this.gears = gears;
        this.currentSpeed = currentSpeed;
    }

    public void applyBrake(int decrement){
        currentSpeed -= decrement;
        System.out.println("Speed after applying break:" +currentSpeed);
    }

    public void speedUp(int increment){
        currentSpeed += increment;
        System.out.println("Speed after increasing:" +currentSpeed);
    }

    public String bicycleDesc(){
        return("No of gears are:" + gears + "\n" + "Speed of bicycle is:" + speed);
    }

}
