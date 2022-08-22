Feature: Open google.com and search for something

  Scenario: Open google and enter 3qilabs

    Given I open a browser
    Then I go to "www.google.com"

    And I enter "3qilabs" in the search box
    And I hit the search button

    Then I wait for 5 seconds
    Then I wait for 5 seconds
    And I should see "Web and Mobile Application Testing | 3Qi Labs" but proceed if not present
      And I should see "3qilabs" but proceed if not present
    And I should see "Palak" but proceed if not present

    Then I go to "www.bing.com"
    Then I wait for 2 seconds
    Then I go to "www.msn.com"
    Then I wait for 2 seconds
    And I close the browser