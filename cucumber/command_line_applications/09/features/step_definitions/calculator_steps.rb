#---
# Excerpted from "The Cucumber Book, Second Edition",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/hwcuc2 for more book information.
#---
Given /^the input "([^"]*)"$/ do |input|
  steps %{
    Given a file named "input.txt" with:
       """
       #{input}
       """
  }
end

When /^the calculator is run$/ do
  path = File.expand_path("#{File.dirname(__FILE__)}/../../calculator.rb")
  steps %{
    When I run `calculator input.txt`
  }
end

Then /^the output should be "([^"]*)"$/ do |output|
  steps %{
    Then it should pass with:
      """
      #{output}
      """
  }
end

When(/^the calculator is run with no input$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I enter the calculation "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
