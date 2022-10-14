package stepDefinition;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class herkouapp {
    WebDriver driver;
    @Given("^user navigates to (.*) page$")
    public void homePage( String url) {
        System.setProperty("webdriver.chrome.driver", "src/lib/chromedriver.exe");
        driver = new ChromeDriver();
        driver.get(url);

    }

    @When("user clicks on the <Link>")
    public void userClicksOnTheLink() {
        driver.findElement(By.linkText("https://the-internet.herokuapp.com/add_remove_elements/")).click();
    }


}
