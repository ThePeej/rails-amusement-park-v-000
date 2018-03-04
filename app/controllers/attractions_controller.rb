require 'pry'
class AttractionsController < ApplicationController

  def index
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find(params[:id])
  end

  def new
    if current_user.admin
      render '/attractions/new'
    else
      redirect_to attractions_path
    end
  end

  def create

  end

  def edit

  end

  def update

  end

end
