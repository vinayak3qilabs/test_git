Feature: Test Cucumber script
	I want to test cucumber

Scenario: TestScenario1
	Given I connect to the address
        Then I wait 5 seconds
	Then I go to the url "http://google.com"
        Then I wait 5 seconds
	Then I fill in with value "3qilabs"
	Then I click the search button "btnG"
        Then I wait 5 seconds
	Then I should see "3QI"