class SessionsController < ApplicationController
  def new
  
  end

  def create
      user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] ? remember(user) : forget(user)
      redirect_to user
    else
      flash.now[:danger] = 'Mauvaise combinaison e-mail & mot de passe !'
      render 'new'
    end
  end

  def destroy
    log_out
    flash[:info] = "You have been successfully logged out."
    redirect_to root_url
  end
end
