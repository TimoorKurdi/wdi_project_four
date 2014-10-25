class UsersController < ApplicationController

  def new
    render :new
  end

  def create
    new_user = User.create(name: params[:name], email: params[:email], password: params[:password], latitude: params[:latitude], longitude: params[:longitude])

    redirect_to "/login"
  end

  def login
    render :login
  end

  def show
    @user = User.find_by(id: session[:user_id])

    if @user
      render :show
    else
      redirect_to '/'
    end

  end

  def update
    @user = User.find(params[:id])

    @user.update(name: params[:name], email: params[:email], password: params[:password], latitude: params[:latitude], longitude: params[:longitude])

    redirect_to '/users'
  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy

    redirect_to '/users'
  end

end # ends class user