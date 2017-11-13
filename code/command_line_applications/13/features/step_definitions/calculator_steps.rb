#---
# Excerpted from "The Cucumber Book, Second Edition",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/hwcuc2 for more book information.
#---
Given /^the input "([^"]*)"$/ do |input|
  write_file 'input.txt', input
end
When /^the calculator is run$/ do
  run 'calculator input.txt'
end
When /^the calculator is run with no input$/ do
  run 'calculator'
end
When /^I enter the calculation "([^"]*)"$/ do |calculation|
  type calculation
end
Then /^the output should be "([^"]*)"$/ do |output|
  expect(last_command_stopped).to have_output an_output_string_including(output)
end
