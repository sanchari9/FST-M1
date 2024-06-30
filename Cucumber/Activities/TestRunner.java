package testRunner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/java/Features",
        glue = {"stepDefinitions"},
        tags = "@Activity6",
        publish = true
//        plugin = {"html:src/reports/HTML_Report.xml",
//                "json:src/reports/JSON_Report.xml",
//                "junit:src/reports/XML_Report.xml"
//        }
)

public class TestRunner {
            //Empty
}

