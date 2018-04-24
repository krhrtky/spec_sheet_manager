#
class UsersController < ApplicationController
  attr_accessor :user
  def new
    @user = User.new
  end

  def confirm
    @user = create_user params[:user]
  end

  def create
    @user = User.create(
      name: params[:user][:name],
      mail: params[:user][:mail],
      password: params[:user][:password]
    )

    @result_message = 'success'
  end

  private
  def create_user params
    user = User.new
    user.name = params[:name]
    user.mail = params[:mail]
    user.password = params[:password]
    user
  end
end
