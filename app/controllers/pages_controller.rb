class PagesController < ApplicationController
before_action :set_kitten_url, only: [:kitten, :kittens]
  def welcome
    @header = "This is the Welcome page"
  end

  def about
    @header = "This is the about page"
  end

  def contest
    @header = "Here is the contest"
  end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end
end
