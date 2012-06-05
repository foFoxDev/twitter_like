class UsersController < ApplicationController
  def new
    @title = " Sign up"
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the sample app! :)"
      redirect_to @user
    else
      flash[:error] = "Ouch :(" 
      render 'new' 
    end
  end
end
