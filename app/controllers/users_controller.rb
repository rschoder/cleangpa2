class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @grade = Grade.find(params[:id])
   end

  def signout
  render "/devise/new"
  end


end
