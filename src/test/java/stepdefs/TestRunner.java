package stepdefs;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)

@CucumberOptions(
		
		monochrome= true,
		plugin= {"pretty","html:target/cucumber-html","json:target/cucumber.json"},
		features = "src/test/java/features",
//		tags= {"@Regression, @DataTable"}
//		tags= {"@Regression, @Sanity"},// OR Condition
//      tags= {"@Regression", "@Sanity"},// AND Condition
		tags= {"@Regression"},
		
		
		
//		tags= {"~@DataTable"},
        glue= {"stepdefs"}
		
)
public class TestRunner {
}
