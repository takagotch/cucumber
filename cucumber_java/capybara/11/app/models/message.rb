#---
# Excerpted from "The Cucumber for Java Book",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/srjcuc for more book information.
#---
class Message < ActiveRecord::Base
  belongs_to :user

  def self.like(content)
    content.nil? ? [] : where(['content LIKE ?', "%#{content}%"]).reverse
  end
  attr_accessible :content, :user_id
end
