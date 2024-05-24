package Activities;

public class MountainBike extends Bicycle{
    int seatHeight;

    public MountainBike(int gears, int currentSpeed, int seatHeight){
        //seatHeight = seatHeight;
        super(gears, currentSpeed);
    }

    public void setHeight(int newValue) {
        seatHeight = newValue;
    }

   public String bicycleDesc(){
        return(super.bicycleDesc() + "\n" + "Seat hieght is:" +seatHeight);
    }

}
