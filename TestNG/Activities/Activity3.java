package Activities;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import java.time.Duration;

public class Activity3 {
    WebDriver driver;
    WebDriverWait wait;

    @BeforeClass
    public void setUp(){
        WebDriverManager.firefoxdriver().setup();
        driver = new FirefoxDriver();
        wait = new WebDriverWait(driver, Duration.ofSeconds(10));
        driver.get("https://v1.training-support.net/selenium/login-form");
    }

    @Test
    public void loginActions(){
        String pageTitle = driver.getTitle();
        System.out.println("Page Title is:" + pageTitle);
        Assert.assertEquals(pageTitle,"Login Form");

        WebElement username = driver.findElement(By.id("username"));
        username.sendKeys("admin");

        WebElement password = driver.findElement(By.id("password"));
        password.sendKeys("password");

        WebElement loginButton = driver.findElement(By.xpath("//button[@onclick='signIn()']"));
        wait.until(ExpectedConditions.visibilityOf(loginButton));
        loginButton.click();

        WebElement confirmMessage = driver.findElement(By.id("action-confirmation"));
        System.out.println("Confirmation Message is:" + confirmMessage.getText());
        Assert.assertEquals(confirmMessage.getText(),"Welcome Back, admin");

    }

    @AfterClass
    public void tearDown(){
        driver.quit();
    }

}
