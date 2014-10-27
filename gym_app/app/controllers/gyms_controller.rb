class GymsController < ApplicationController

    def show
      @user = User.find_by(id: session[:user_id])
      render :show
    end

  # def create
  #  @gyms = Gym.create(type: params[:type], price: params[:price])
  # end

end # ends class