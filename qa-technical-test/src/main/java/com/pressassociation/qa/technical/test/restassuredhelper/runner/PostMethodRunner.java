package com.pressassociation.qa.technical.test.restassuredhelper.runner;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
		features = {"src/main/java/com/pressassociation/qa/technical/test/restassuredhelper/featurefile/PostMethod.feature"},
		//glue = {"com.pressassociation.qa.technical.test.restassuredhelper.stepdfn"},
		monochrome = false, // monochrome variable when TRUE displays the output in readable format 
		dryRun = false)		// dry run when TRUE used to generate the Steps definitions
public class PostMethodRunner 
{
	

}
