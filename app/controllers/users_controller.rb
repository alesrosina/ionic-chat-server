class UsersController < ApplicationController

  def create
    User.new user_params


  end

  def show

  end

  private

  def user_params
    params.requre(:user).permit(:phone)
  end
end
