package selenium;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class CreateAccount {

	private static WebDriver driver;
	
	public static void main(String[] args) {
			
		driver = new ChromeDriver();
		
		String baseURL = "http://localhost:8080/ProgressTrackerWebapp/createAccount.html";

		driver.get(baseURL);
		
		WebElement username = driver.findElement(By.id("username"));
		WebElement password = driver.findElement(By.id("password"));
		WebElement email = driver.findElement(By.id("email"));
		WebElement name = driver.findElement(By.id("name"));
		WebElement surname = driver.findElement(By.id("surname"));
		WebElement sex = driver.findElement(By.id("sex"));
		WebElement age = driver.findElement(By.id("age"));
		WebElement height = driver.findElement(By.id("height"));
		WebElement weight = driver.findElement(By.id("weight"));
		WebElement somatotype = driver.findElement(By.id("somatotype"));
		WebElement lifestyle = driver.findElement(By.id("lifestyle"));
		WebElement goal = driver.findElement(By.id("goal"));
		
		
		username.sendKeys("selenium");
		password.sendKeys("qwerty123");
		email.sendKeys("asdas@gmail.com");
		name.sendKeys("name");
		surname.sendKeys("lastname");
		sex.sendKeys("Man");
		age.sendKeys("21");
		height.sendKeys("176");
		weight.sendKeys("65");
		somatotype.sendKeys("Ectomorphs");
		lifestyle.sendKeys("2");
		goal.sendKeys("lose");
		
		username.submit();
		
	}

}
