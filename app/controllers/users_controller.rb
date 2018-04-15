#
class UsersController < ApplicationController
  attr_accessor :user
  def new
    @user = User.new
  end

  def confirm
    @user = create_user(params[:user][:name], params[:user][:mail], params[:user][:password])
  end

  def create
    @user = User.create(name: params[:user][:name], mail: params[:user][:mail], password: params[:user][:password])

    @result_message = 'success'
  end

  private
  def create_user name, mail, password
    user = User.new
    user.name = name
    user.mail = mail
    user.password = password
    user
  end
end
