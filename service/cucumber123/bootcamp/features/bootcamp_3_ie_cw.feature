Feature: Bookcamp Example 3 Cucumber and Classic Watir

  Scenario: Sign in, add and delete a new account, and sign out
    Given I load data spreadsheet "bootcamp_data.xls" for this feature
      And I run with Watir
    Then I open Internet Explorer
      And I go to the URL

    Then I enter the userid
      And I enter the password
      And I click the "Sign In" button

    Then I click the link with "title" "CRM Software"
    Then I click the link with "id" "tab_Accounts"

    Then I create a unique account name
    Then I click the "New Account" button
      And I enter the account name in the new account field

    Then I enter the value for "account_phone" in text field with id "property(Phone)"
      And I enter the value for "account_billing_street" in text field with id "property(Billing Street)"
      And I select the value for "account_type" in select list with name "property(Account Type)"
      And I select the value for "account_industry" in select list with name "property(Industry)"
      And I enter the value for "account_billing_city" in text field with id "property(Billing City)"
      And I enter the value for "account_billing_state" in text field with id "property(Billing State)"
      And I enter the value for "account_billing_zipcode" in text field with id "property(Billing Code)"
      And I enter the value for "account_billing_country" in text field with id "property(Billing Country)"

    Then I click the button with "id" "copyAddress"
    Then I click the element with text "Billing to Shipping"
      And I check that the text field with id "property(Shipping Street)" contains the value for "account_billing_street"
      And I check that the text field with id "property(Shipping City)" contains the value for "account_billing_city"
      And I check that the text field with id "property(Shipping State)" contains the value for "account_billing_state"
      And I check that the text field with id "property(Shipping Code)" contains the value for "account_billing_zipcode"
      And I check that the text field with id "property(Shipping Country)" contains the value for "account_billing_country"

    Then I click the "Save" button
      And sleep for 5 seconds

    Then I check that the span with id "value_Account Name" contains the account name
    Then I click the link with "id" "tab_Accounts"
      And sleep for 2 seconds
      And I should see the account name

    Then I click the link with the account name
      And I click the button with "name" "Delete2"
      And I click "OK" in the browser alert
      And sleep for 2 seconds
      And I should not see the account name

    Then I sign out
      And I close the browser
