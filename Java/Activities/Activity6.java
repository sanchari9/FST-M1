package Activities;

public class Activity6 {
    public static void main(String[] args) throws InterruptedException {
        Plane plane = new Plane(10);
        plane.onboard("Ajay");
        plane.onboard("Priya");
        plane.onboard("Sneha");
        plane.onboard("Roni");
        plane.onboard("Tushar");
        plane.onboard("Puja");
        plane.onboard("Atul");
        plane.onboard("Goerge");
        plane.onboard("Alex");
        plane.onboard("Neil");

        System.out.println("Take-off time is:" + plane.takeOff());
        System.out.println("Passenger List is:" + plane.getPassesngers());
        Thread.sleep(5000);
        plane.land();
        System.out.println("Last landing time was:" + plane.getLastTimeLanded());
    }
}
