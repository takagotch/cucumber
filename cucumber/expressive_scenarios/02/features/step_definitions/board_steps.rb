#---
# Excerpted from "The Cucumber Book, Second Edition",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/hwcuc2 for more book information.
#---
Given(/^a board like this:$/) do |table|
  @board = table.raw
end

Given(/^player x plays in row (\d+), column (\d+)$/) do |arg1, arg2|
  puts @board
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^the board should look like this:$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end
