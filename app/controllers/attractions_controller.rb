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
      @attraction = Attraction.new
      render '/attractions/new'
    else
      redirect_to attractions_path
    end
  end

  def create
    raise params.inspect
  end

  def edit

  end

  def update

  end

end
