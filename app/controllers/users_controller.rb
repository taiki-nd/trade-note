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
    
    # 今年
    now_year = Time.now.year
    @one_year = Record.where('extract(year from date) = ?', now_year)

    # 今月
    now_month = Time.now.month
    @one_month = Record.where('extract(month from date) = ?', now_month)

    @users_records_month = @users_records.where('extract(year from date) = ?', now_year).where('extract(month from date) = ?', now_month)
    @users_records_month_order_date = @users_records_month.order(:date)

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

      # 勝率
    @win_count_month = @users_records_month.where('price_renge > ?', 0).count
    @lose_count_month = @users_records_month.where('price_renge < ?', 0).count
    @rate_month = {"lose": @lose_count_month, "win": @win_count_month}

      # PF
    @profit_month = @users_records_month.where('price_renge > ?', 0).pluck(:price_renge).sum
    @loss_month = @users_records_month.where('price_renge < ?', 0).pluck(:price_renge).sum
    @pf_month = @profit_month / (@loss_month * -1)

      # 通貨ペア別勝率
    @users_records_pairs_month = @users_records_month.group(:pair_id).pluck(:pair_id)

      # 通貨ペア別PF


  end

  def record
    @user = User.find_by(nickname: params[:nickname])
    @records = Record.where(user_id: @user.id).includes(:user).order(date: "DESC").page(params[:page]).per(16)
  end

  def records
    @user = User.find_by(nickname: params[:nickname])
    @records = Record.where(user_id: @user.id).includes(:user).order(date: "DESC").page(params[:page]).per(50)

    # 全体
    @users_records_result_section = Record.where(user_id: @user.id).group(:result_section_id).pluck(:result_section_id)
    @result_graph = []
    @users_records_result_section.each do |result_id|
      result_section_name = ResultSection.find(result_id).name
      result_section_count = Record.where(user_id: @user.id).where(result_section_id: result_id).count
      result_data = [result_section_name, result_section_count]
      @result_graph << result_data
    end

    # 今年
    now_year = Time.now.year
    @one_year = Record.where('extract(year from date) = ?', now_year)

    # 今月
    now_month = Time.now.month
    @one_month = Record.where('extract(month from date) = ?', now_month)

    @users_records_result_section_month = Record.where(user_id: @user.id).where('extract(year from date) = ?', now_year).where('extract(month from date) = ?', now_month).group(:result_section_id).pluck(:result_section_id)
    @result_graph_month = []
    @users_records_result_section_month.each do |result_month_id|
      result_section_month_name = ResultSection.find(result_month_id).name
      result_section_month_count = Record.where(user_id: @user.id).where('extract(year from date) = ?', now_year).where('extract(month from date) = ?', now_month).where(result_section_id: result_month_id).count
      result_month_data = [result_section_month_name, result_section_month_count]
      @result_graph_month << result_month_data
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email)
  end

end
