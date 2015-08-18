class UsersController < ApplicationController
  def index
    if User.first
      @users = User.all
    else
      @users = User.save_from_api
    end
    render :index
  end

  def show
    @user = User.find(params[:id])
    render :show
  end
end
