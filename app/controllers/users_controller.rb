class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def new
   @user=User.new 
  end
  def create
    user_pass = BCrypt::Password.create(params[:user][:pass])
    user = User.new(uid: params[:user][:uid], pass: user_pass)
    user.save
    redirect_to top_main_path
  end
  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to '/'
  end
end

