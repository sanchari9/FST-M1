package stepDefinitions;


import io.cucumber.java.AfterAll;
import org.openqa.selenium.Alert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

public class BaseClass {

    //create a new instance of Firefox driver
    static WebDriver driver;
    static WebDriverWait wait;
    static Alert alert;

}
