package Activities;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.Assert;
import org.testng.SkipException;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

public class Activity2 {
    WebDriver driver;

    @BeforeClass
    public void setUp(){
        WebDriverManager.firefoxdriver().setup();
        driver = new FirefoxDriver();
        driver.get("https://v1.training-support.net/selenium/target-practice");
    }

    @Test
    public void actionA(){
        String pageTitle = driver.getTitle();
        System.out.println("Page Title is:" + pageTitle);
        Assert.assertEquals(pageTitle,"Target Practice");
    }

    @Test
    public void actionB(){
        WebElement blackButton = driver.findElement(By.xpath("//button[contains(@class,'black')]"));
        Assert.assertTrue(blackButton.isDisplayed());
        Assert.assertEquals(blackButton.getText(),"black");
    }

    @Test(enabled = false)
    public void actionC(){
        System.out.println("The third method will be skipped, but will not be shown as skipped");
    }

    @Test
    public void actionD() throws SkipException{
        throw new SkipException("The fourth method will be skipped and it will be shown as skipped");
    }

    @AfterClass
    public void tearDown(){
        driver.quit();
    }

}
