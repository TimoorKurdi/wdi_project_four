class SessionController < ApplicationController

  def new
    render :new
  end

  def create
    user = User.find_by(email: params[:email])

     if user && user.authenticate(params[:password])
      session[:user_id] = user.id

    redirect_to "/users/#{user.id}" # gotta change to the find gym button page later
     else
      @error = true
      render :new
     end
   end

   def destroy
    reset_session
    redirect_to '/'
   end

end # ends class