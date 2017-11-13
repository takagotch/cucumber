#---
# Excerpted from "The Cucumber Book, Second Edition",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/hwcuc2 for more book information.
#---
class SearchController < ApplicationController
  def show
    @messages = Message.like(params[:query])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @messages }
    end
  end
end
