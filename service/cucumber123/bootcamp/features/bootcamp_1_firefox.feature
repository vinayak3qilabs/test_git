Feature: Bookcamp Example 1 Cucumber and Watir-webdriver

  Scenario: Sign in, add and delete a new account, and sign out
    Given I open Firefox
    Then I go to Zoho login URL
      And sleep for 2 seconds

    Then I enter "joeklienwatir@gmail.com" in login id
      And I enter "watir001" in password
      And I click the "Sign In" button
      And sleep for 2 seconds

    Then I click the link with "title" "CRM Software"
      And sleep for 4 seconds
    Then I click the link with "id" "tab_Accounts"
      And sleep for 2 seconds

    Then I create a unique account name
    Then I click the "New Account" button
      And sleep for 2 seconds
      And I enter the account name in the new account field
      And I click the button with "value" "Save"
      And sleep for 2 seconds

    Then I check that the span with id "value_Account Name" contains the account name
      And sleep for 2 seconds
    Then I click the link with "id" "tab_Accounts"
      And sleep for 2 seconds
      And I should see the account name
      And sleep for 2 seconds

    Then I click the link with the account name
      And sleep for 4 seconds
      And I click the button with "name" "Delete2"
      And sleep for 2 seconds
      And I click "OK" in the browser alert
      And sleep for 2 seconds
      And I should not see the account name

    Then I sign out
      And I close the browser
