class PagesController < ApplicationController

  def welcome
    @header = "This is the Welcome page"
  end

  def about
    @header = "This is the about page"
  end

  def contest
    @header = "Here is the contest"
  end

end
