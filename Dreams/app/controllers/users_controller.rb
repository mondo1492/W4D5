
class UsersController < ApplicationController

  before_action :require_logged_out
  def new
    # @users = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      #validation password is blank, did not pass validations
      #put in debugger
      #@users.errors.full_messages -> this tests all the validations
      redirect_to goals_url
    else
      flash[:errors] = ['asdfasdfasdfasdsd']
      render :new
    end
    # flash[:errors]
  end



  def user_params
    params.require(:user).permit(:username, :password)
  end
end
