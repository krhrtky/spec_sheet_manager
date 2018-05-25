#
class UsersController < ApplicationController
  attr_accessor :user
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    render 'new' if @user.invalid?
    @result_message = 'success'
  end

  private
  # 通常のハッシュでパラメータを受け取れないように制御
  def user_params
    params.require(:user).permit(:name, :mail, :password, :password_confirmation)
  end

end
