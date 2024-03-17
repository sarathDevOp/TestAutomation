package stepDefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import java.time.Duration;

public class loginsteps {
        WebDriver driver;
    @Given("The user able to Lauch the DemoCart Application")
    public void lauchURL() {
        driver = new ChromeDriver();
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));
        // Maximize the browser
        driver.manage().window().maximize();
        // open the URL
        driver.get("https://opensource-demo.orangehrmlive.com/web/index.php/auth/login");


    }
    @When("the user enter the username And password")
    public void UsernamePassword() {
        // Ente the input value

        driver.findElement(By.xpath("//input[@name='username']")).sendKeys("Admin");
        // enter the password value
        driver.findElement(By.xpath("//input[@name='password']")).sendKeys("admin123");

    }
    @When("the user click on Login Button")
    public void loginBtn() {
        // login btn code
        driver.findElement(By.xpath("//button[@type='submit']")).click();

    }
    @Then("User navigated to dashboard successfully")
    public void dashboard() {

        System.out.println( driver.getCurrentUrl());
        System.out.println(driver.getTitle());
        System.out.println(driver.getCurrentUrl());
        // validate title of the application
        System.out.println(driver.getTitle());
    }
    @Then("The user logout from applciation")
    public void logout() {
        driver.close();

    }

    @Given("The user able to Lauch{int} the DemoCart Application")
    public void logintest1(int arg0) {
        driver = new ChromeDriver();
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));
        // Maximize the browser
        driver.manage().window().maximize();
        // open the URL
        driver.get("https://opensource-demo.orangehrmlive.com/web/index.php/auth/login");

    }
}
