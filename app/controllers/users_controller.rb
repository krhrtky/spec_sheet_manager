#
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(name: params[:name], mail: params[:mail], password: params[:password])

    @result_message = 'success'
  end
end
