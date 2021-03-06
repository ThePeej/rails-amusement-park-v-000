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
    @attraction = Attraction.new(attraction_params)
    if @attraction.save
      redirect_to attraction_path(@attraction)
    else
      render 'new'
    end
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
    @attraction = Attraction.find(params[:id])
    if @attraction.update(attraction_params)
      redirect_to attraction_path(@attraction)
    else
      render 'edit'
    end
  end

  private

  def attraction_params
    params.require("attraction").permit(:name, :min_height, :happiness_rating, :nausea_rating, :tickets)
  end

end
