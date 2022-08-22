Then /^I go to Zoho login URL$/ do
  @browser.goto("https://accounts.zoho.com/login?serviceurl=https://www.zoho.com/&hide_signup=true&css=https://www.zoho.com/css/login.css")
end

Then /^I enter "(.*?)" in login id$/ do |userid|
  step "I enter \"#{userid}\" in text field with id \"lid\""
end

Then /^I enter the userid$/ do
  step "I enter \"#{@login['userid']}\" in text field with id \"lid\""
end

Then /^I enter the password$/ do
  step "I enter \"#{@login['password']}\" in text field with name \"pwd\""
end

And /^I enter "(.*?)" in password$/ do |password|
  step "I enter \"#{password}\" in text field with name \"pwd\""
end

Then /^I create a unique account name$/ do
  @account_name = "Acct #{$timestamp}"
end

And /^I enter the account name in the new account field$/ do
  sleep(2)
  step "I enter \"#{@account_name}\" in text field with name \"Account Name\""
end

Then /^I check that account name contains the account name$/ do
  step "I check that the span with id \"value_Account Name\" contains \"#{@account_name}\""
end

And /^I should see the account name$/ do
  step "I should see \"#{@account_name}\""
end

And /^I should not see the account name$/ do
  step "I should not see \"#{@account_name}\""
end

Then /^I click the link with the account name$/ do
  step "I click the link with \"text\" \"#{@account_name}\""
end

Then /^I sign out$/ do
  step "I click the div with \"id\" \"linkid\""
  step "I click the button with \"value\" \"Sign Out\""
  #@browser.image(:class, 'sort_desc').click # Doesn't drop list in IE
  #@browser.button(:value, 'Sign Out').click
end

Then /^I check that the span with "?(.+?)"? "(.*?)" contains the account name$/ do |how, what|
  what = Regexp.new(Regexp.escape(what)) unless how =~ /index|text/i or what.is_a?(Regexp)
  #step "I wait until span with #{how} \"#{what}\" is ready"
  @browser.span(how.to_sym, what).text == @account_name
end
