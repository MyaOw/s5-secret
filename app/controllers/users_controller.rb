class UsersController < ApplicationController
  def home
  end

  def secret_page
    unless is_logged_in?
    redirect_to login_path, :flash => { :danger => "Petit malin ! Il faut d'abord te connecter !" }
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(email: params[:user][:email], password: params[:user][:password])
    if @user.save
      log_in @user
      redirect_to @user, :flash => { :success => "Tu es bien connecté !" }
    else
      render 'new'
    end
  end

  def show
  end

  def edit
    
  end

end
