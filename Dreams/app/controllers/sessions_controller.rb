class SessionsController < ApplicationController

#create_session
#check valid?
#logout/destroy session

  before_action :require_logged_in, only: [:destroy]
  before_action :require_logged_out, only: [:new, :create]

  def new
    render :new
  end

  def create
    user = User.find_by_credentials(params[:user][:username], params[:user][:password])
    if user.nil?
      flash[:errors] = ["invalid log in!"]
      render :new
    else
      login_user!(user)
      redirect_to goals_url
    end
  end

  def destroy
    logout_user!
    redirect_to new_sessions_url
  end




end
