#---
# Excerpted from "The Cucumber Book, Second Edition",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/hwcuc2 for more book information.
#---
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username

      t.timestamps null: false
    end
  end
end
