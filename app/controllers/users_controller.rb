class UsersController < ApplicationController
  def home
  end

  def secret_page

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
      @title = "Sign up"
      render 'new'
    end
  end

  def show
  end

  def edit
    
  end

end
