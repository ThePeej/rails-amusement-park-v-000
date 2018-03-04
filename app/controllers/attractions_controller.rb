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
    
  end

  def edit
    if current_user.admin
      @attraction = Attraction.find(params[:id])
      render '/attractions/edit'
    else
      redirect_to attractions_path
    end
  end

  def update

  end

  private

  def attraction_params

end
