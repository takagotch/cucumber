#---
# Excerpted from "The Cucumber Book, Second Edition",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/hwcuc2 for more book information.
#---
Given(/^the input "([^"]*)"$/) do |input|
  @input = input
end

When(/^the calculator is run$/) do
  @output = `ruby calc.rb #{@input}`
  raise('Command failed!') unless $?.success?
end

Then(/^the output should be "([^"]*)"$/) do |expected_output|
  expect(@output).to eq expected_output
end
