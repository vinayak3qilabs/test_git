#require 'rubygems'
#require 'watir'
#b = Watir::Browser.new(:chrome)
#sleep(3)
#b.goto("www.google.com")
#b.text_field(:name, "q").set("3qilabs")
#sleep 5
#b.button(:name, "btnG").click
#b.text.include? "3QI Labs"
#b.close
require 'rubygems'
require 'watir'
b = Watir::Browser.new
sleep(5)
b.goto("www.google.com")
b.text_field(:name, "q").set("3qilabs")
b.button(:name, "btnK").fire_event :click
b.text.include? "3QI Labs"
b.close
