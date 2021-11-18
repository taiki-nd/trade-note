class UsersController < ApplicationController

  def edit
    @user = User.find_by(nickname: params[:nickname])
  end

  def update
    if current_user.update(user_params)
    else
      render :edit
    end
  end

  def show
    @user = User.find_by(nickname: params[:nickname])
    @records = Record.includes(:user).order("created_at DESC").limit(4)
  end

  def record
    @user = User.find_by(nickname: params[:nickname])
    @records = Record.where(user_id: @user.id).includes(:user).order("created_at DESC")
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email)
  end

end
