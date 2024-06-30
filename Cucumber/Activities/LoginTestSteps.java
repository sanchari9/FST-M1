package stepDefinitions;

import io.cucumber.java.BeforeAll;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class LoginTestSteps extends BaseClass{

//    @BeforeAll
//    public static void setUp(){
//        WebDriverManager.firefoxdriver().setup();
//        driver = new FirefoxDriver();
//        wait = new WebDriverWait(driver, Duration.ofSeconds(20));
//    }

    @Given("User is on Login Page")
    public void openBrowser(){
        driver.get("https://v1.training-support.net/selenium/login-form");
        String loginPageTitle = driver.getTitle();
        Assertions.assertEquals("Login Form", loginPageTitle);
    }

    @When("User enters {string} and {string}")
    public void enteringLoginDetails(String username, String password){
        WebElement userName = driver.findElement(By.id("username"));
        userName.sendKeys(username);
        WebElement passWord = driver.findElement(By.id("password"));
        passWord.sendKeys(password);
        WebElement loginButton = driver.findElement(By.xpath("//button[@onclick='signIn()']"));
        wait.until(ExpectedConditions.elementToBeClickable(loginButton));
        loginButton.click();
    }

    @Then("Read the page title and confirmation message")
    public void readingMessage(){
        String confirmMessage = driver.findElement(By.id("action-confirmation")).getText();
        if(confirmMessage.contains("admin")) {
            Assertions.assertEquals(confirmMessage, "Welcome Back, admin");
        } else {
            Assertions.assertEquals(confirmMessage, "Invalid Credentials");
        }

    }

}
