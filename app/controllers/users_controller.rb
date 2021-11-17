class UsersController < ApplicationController
  
  before_action :set_user, only: [:edit, :show]

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
