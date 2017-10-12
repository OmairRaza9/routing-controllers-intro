class PagesController < ApplicationController

  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    render :welcome
  end

  def about

  end

  def contest
    #render :contest

    flash[:notice] = "Sorry, the contest is now over"
    redirect_to "/welcome"
  end

  def welcome
    @header = "This is the header I put in!"
  end

  def kitten
  requested_size = params[:size]
  #render :kitten/:size
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets

    if params[:magic_word] == "catdog"
      flash[:notice] = "You got the secret word!"
      render :secrets
    else
      flash[:notice] = "You do not know the secret word. Back of the line"
      redirect_to "/welcome"
    end
  end
end
