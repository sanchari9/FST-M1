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

public class Activity1 {
    WebDriver driver;

    @BeforeClass
    public void setUp(){
        WebDriverManager.firefoxdriver().setup();
        driver = new FirefoxDriver();
        driver.get("https://v1.training-support.net/");
    }

    @Test
    public void actions1(){
        System.out.println("Page Title is:" + driver.getTitle());
        Assert.assertEquals(driver.getTitle(),"Training Support");
        WebElement aboutButton = driver.findElement(By.id("about-link"));
        aboutButton.click();
        System.out.println("Page Title is:" + driver.getTitle());
        Assert.assertEquals(driver.getTitle(),"Training Support");
    }

    @AfterClass
    public void tearDown(){
        driver.quit();
    }

}
