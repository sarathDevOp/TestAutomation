package TestRunner;


import cucumber.api.junit.Cucumber;
import io.cucumber.testng.CucumberOptions;
import org.junit.runner.RunWith;
import org.testng.annotations.AfterClass;

@RunWith(Cucumber.class)
@CucumberOptions(
        monochrome = true,
        features = "src/main/resources/features",
        glue={""},
        plugin= { "pretty", "html:FeaturesReport",
                "html:target/site/cucumber-pretty",
                "json:target/cucumber.json",
                "PDF :taregt/cucumber.PDF"
        },

        tags="@TESTJava21"


)

public class RunCukesTest {


    @AfterClass
    public static void afterClass() {
        //closeDriver();

    }


}