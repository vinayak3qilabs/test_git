#Given(/^I open a browser$/) do
#	require 'rubygems'
#	require 'watir-webdriver'
#	@browser = Watir::Browser.new
#end

#Then(/^I wait for (\d+) seconds$/) do |arg1|
 # sleep arg1.to_i
#end

#Then(/^I go to the url "(.*?)"$/) do |arg1|
#  @browser.goto("#{arg1}") 
#end

Then(/^I enter text "(.*?)" in the search box$/) do |arg1|
  @browser.text_field(:id,'gbqfq').set("#{arg1}")
end

Then(/^I click the search button$/) do
  @browser.button(:id,'gbqfb').click
end

Then(/^I click the link with text "(.*?)"$/) do |text|
  @browser.link(:text, "#{text}").click
end

