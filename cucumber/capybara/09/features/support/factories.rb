#---
# Excerpted from "The Cucumber Book, Second Edition",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/hwcuc2 for more book information.
#---
require 'factory_girl'

FactoryGirl.define do
  factory :user do |f|
    f.username 'testuser'
  end

  factory :message do |f|
    f.association :user
    f.content 'Test message content'
  end
end
