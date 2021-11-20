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

    @users_records = Record.where(user_id: @user.id).order(:date)

    # 全体
      # 金額推移
    @sum_price = []
    sum = 0
    @users_records.each do |record|
      sum = sum + record.price_renge
      date = record.date
      data = [date, sum]
      @sum_price << data
    end
      # 勝率
    @win_count = @users_records.where('price_renge > ?', 0).count
    @lose_count = @users_records.where('price_renge < ?', 0).count
    @rate = {"lose": @lose_count, "win": @win_count}
    
    # 今日
    today = Time.now.day
    @one_day = Record.where('extract(day from date) = ?'), today

    # 今月
    now_month = Time.now.month
    @one_month = Record.where('extract(month from date) = ?', now_month)

    # 今年
    now_year = Time.now.year
    @one_year = Record.where('extract(year from date) = ?', now_year)
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
