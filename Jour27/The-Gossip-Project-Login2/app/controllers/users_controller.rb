class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  def new
    @user = User.new
  end

  def create  
    @user = User.create(user_params)
    if @user.save
    redirect_to gossips_path
    else
    render :new
    end

  end

  def edit
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :email, :password, :age, :description)
  end

end