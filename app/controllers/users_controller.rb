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

    @users_records = Record.where(user_id: @user.id)
    
    # 全体
      # 資金推移
    @users_records_order_date = @users_records.order(:date)
    @sum_price = []
    sum = 0
    @users_records_order_date.each do |record|
      sum = sum + record.price_renge
      date = record.date
      data = [date, sum]
      @sum_price << data
    end

      # 勝率
    @win_count = @users_records.where('price_renge > ?', 0).count
    @lose_count = @users_records.where('price_renge < ?', 0).count
    @rate = {"lose": @lose_count, "win": @win_count}

      # PF
    @profit = @users_records.where('price_renge > ?', 0).pluck(:price_renge).sum
    @loss = @users_records.where('price_renge < ?', 0).pluck(:price_renge).sum
    @pf = @profit / (@loss * -1)

      # 通貨ペア別勝率
    @users_records_pairs = @users_records.group(:pair_id).pluck(:pair_id)

      # 通貨ペア別PF
    

    # 今日
    today = Time.now.day
    @one_day = Record.where('extract(day from date) = ?'), today

    # 今月
    now_month = Time.now.month
    @one_month = Record.where('extract(month from date) = ?', now_month)

    @users_records_month = @users_records.where('extract(month from date) = ?', now_month)

      # 資金推移
    @users_records_month_order_date = @users_records_month.order(:date)
    @sum_price_month = []
    sum_month = 0
    @users_records_month_order_date.each do |record|
      sum_month = sum_month + record.price_renge
      date_month = record.date
      data_month = [date_month, sum_month]
      @sum_price_month << data_month
    end

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
