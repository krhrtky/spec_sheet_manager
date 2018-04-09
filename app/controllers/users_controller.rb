#
class UsersController < ApplicationController
  attr_accessor :user
  def new
    @user = User.new
  end

  def confirm
    @user = create_user(params[:name], params[:mail], params[:password])
  end

  def create
    @user = User.create(name: params[:name], mail: params[:mail], password: params[:password])

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
