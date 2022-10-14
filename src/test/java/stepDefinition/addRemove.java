package stepDefinition;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class addRemove {
    WebDriver driver;
@Given("^user navigates to (.*) page$")
    public void addRemove(String URL){
    System.setProperty("webdriver.chrome.driver","src/lib/chromedriver.exe");
    driver= new ChromeDriver();
    driver.get(URL);
    }

    @When("^user clicks on the (.*)^")
    public void userClicksOnTheAddButton() {
        driver.findElement(By.xpath("//button[contains(text(),'Add Element')]")).click();
    }
    @Then("user can view <button/2>")
    public void delete_button() {
}

}
