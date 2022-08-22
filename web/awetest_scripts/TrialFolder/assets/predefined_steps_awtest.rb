Then /^I fill in with value "(.*?)"$/ do |value|   
  @browser.text_field(:name, "q").set value
end
Then /^I click the search button "(.*?)"$/ do |element_text|
	sleep 1
  @browser.button(:name, element_text).click
end

Given /^I connect to the webdriver browser$/ do
	require 'watir-webdriver'
	@browser = Watir::Browser.new(:remote, :url=>'http://192.168.1.107:3001/wd/hub/')
	#browser = Watir::Browser.new(:remote, :url=>'http://localhost:8080/wd/hub/')
end