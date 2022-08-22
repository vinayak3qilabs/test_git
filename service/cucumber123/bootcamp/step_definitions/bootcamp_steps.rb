
# NOTE: This step definition is a candidate for predefined steps
Before do |scenario|
  $world = self
  $ts_format = "%m/%d/%y %I:%M:%S %p"
  $begin_time = Time.now
  puts "Begin: #{$begin_time.strftime($ts_format)}"
  $feature_spec = scenario.feature.file
  $feature_name = File.basename($feature_spec, '.feature')
  $feature_path = File.dirname($feature_spec)
  puts "Spec: #{$feature_spec}"
  puts "Feature: #{$feature_name}"
  puts "Path: #{$feature_path}"
end

And /^I click the "(.+?)" button$/ do |value|
  step "I click the button with \"value\" \"#{value}\""
end

# NOTE: This step definition is a candidate for predefined steps
Then /^I click the element with "?(.+?)"? "(.+?)"$/ do |how, what|
  what = Regexp.new(Regexp.escape(what)) unless how =~ /index|text/i or what.is_a?(Regexp)
  @browser.element(how.to_sym, what).click
end

# NOTE: This step definition is a candidate for predefined steps
Given /^I load data spreadsheet "(.+?)" for this feature$/ do |name|
  step "I load data spreadsheet \"#{name}\" for \"#{$feature_name}\""
end

# NOTE: This step definition is a candidate for predefined steps
And /^sleep for "?(\d+?)"? seconds?$/ do |seconds|
  step "I wait #{seconds} seconds"
end

