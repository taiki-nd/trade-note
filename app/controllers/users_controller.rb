class UsersController < ApplicationController

  def edit
    @user = User.find(params[:id])
  end

  def update
    if current_user.update(user_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def show
    @user = User.find_by(nickname: params[:nickname])
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email)
  end

end
