package Activities;

public class Activity3 {
    public static void main (String[] args){
        double ageOnEarth = 1000000000;

        //Year to Second -> Year * 365 * 24 * 60 * 60
        double yearToSeconds = (365 * 24 * 60 * 60);

        //Earth Year to Seconds conversion
        double earthYearInSeconds = 31557600;
        double mercuryEarthYearInSeconds = (0.2408467 * yearToSeconds);
        double venusEarthYearInSeconds = (0.61519726 * yearToSeconds);
        double marsEarthYearInSeconds = (1.8808158 * yearToSeconds);
        double jupitarEarthYearInSeconds = (11.862615 * yearToSeconds);
        double saturnEarthYearInSeconds = (29.447498 * yearToSeconds);
        double uranusEarthYearInSeconds = (84.016846 * yearToSeconds);
        double neptuneEarthYearInSeconds = (164.79132 * yearToSeconds);

        //age in other planets = age in earth in seconds/earth year of other planets in seconds
        System.out.println("Age on Earth in Earth-years:" + (ageOnEarth/earthYearInSeconds));
        System.out.println("Age on Mercury in Earth-years:" + (ageOnEarth/mercuryEarthYearInSeconds));
        System.out.println("Age on Venus in Earth-years:" + (ageOnEarth/venusEarthYearInSeconds));
        System.out.println("Age on Mars in Earth-years:" + (ageOnEarth/marsEarthYearInSeconds));
        System.out.println("Age on Jupitar in Earth-years:" + (ageOnEarth/jupitarEarthYearInSeconds));
        System.out.println("Age on Saturn in Earth-years:" + (ageOnEarth/saturnEarthYearInSeconds));
        System.out.println("Age on Uranus in Earth-years:" + (ageOnEarth/uranusEarthYearInSeconds));
        System.out.println("Age on Neptune in Earth-years:" + (ageOnEarth/neptuneEarthYearInSeconds));
    }
}
