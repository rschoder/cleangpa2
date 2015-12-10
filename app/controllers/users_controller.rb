class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @gradelet = @user.grades

   end

  def signout
  render "/devise/new"
  end


end
