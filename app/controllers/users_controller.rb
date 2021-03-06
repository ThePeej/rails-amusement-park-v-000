class UsersController < ApplicationController

  def show
    if logged_in?
      @user = User.find(params[:id])
      @message = params[:message] if params[:message]
      @message ||= false
    else
      redirect_to '/'
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def destroy
    session.destroy
    redirect_to '/'
  end



  private

  def user_params
    params.require("user").permit(:name, :password, :height, :happiness, :nausea, :tickets, :admin)
  end
end
