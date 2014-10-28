class GymsController < ApplicationController
    def show
      @user = User.find_by(id: session[:user_id])
      render :show
    end
 end

