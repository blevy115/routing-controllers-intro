class PagesController < ApplicationController
before_action :set_kitten_url, only: [:kitten, :kittens]
  def welcome
    @header = "This is the Welcome page"
  end

  def about
    @header = "This is the about page"
  end

  def contest
    flash[:notice] = "Sorry the contest is over"
    redirect_to "/welcome"
  end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size] || 200
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
    if params[:magic_word] == 'november'
    else
      flash[:notice] = "You do not have permission to see this page!"
      redirect_to "/kittens"
    end
  end
end
