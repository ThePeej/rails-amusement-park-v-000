class StaticController < ApplicationController

  def index
  end

  def signup
    @user = User.new
  end

  def signin
    @user = User.new
  end

  def login
    @user = User.find(params[:user][:name])
    if @user && @user.password == params[:user][:password]
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to '/'
    end
  end


end
