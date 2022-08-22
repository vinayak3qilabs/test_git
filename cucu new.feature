
Feature: Test Cucumber script
	I want to test cucumber

Scenario: TestScenario1
	When I open a new browser
    Then I wait 60 seconds
	Then I go to the url "http://google.com"
 	Then I fill in with value "3qilabs"
	Then I click the search button "btnG"
	Then I should see "web and mobile application testing"
	Then I close the browser

Scenario: TestScenario2
	When I open a new browser
	Then I go to the url "http://google.com"
	Then I close the browser

Scenario: TestScenario3
	When I open a new browser
	Then I go to the url "http://google.co.in"
	Then I close the browser

Scenario: TestScenario4
	When I open a new browser
	Then I go to the url "http://yahoo.com"
	Then I close the browser

Scenario: TestScenario5
	When I open a new browser
	Then I go to the url "http://msn.com"
	Then I close the browser