class RecordsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_record, only: [:edit, :update, :show, :destroy]
  before_action :set_ad, only: [:create, :update]
  before_action :move_to_index, only: [:edit, :update, :destroy]
  before_action :set_q, only: [:index, :search]

  def index
    @records = Record.includes(:user).order(date: "DESC").page(params[:page]).per(16)
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    unless @record.save
      render :new
    end
  end

  def edit
    
  end

  def update
    @ad_xm = Advertisement.find(1)
    @ad_titan = Advertisement.find(4)
    @ad_exness = Advertisement.find(5)
    unless @record.update(record_params)
      render action: :edit
    end
  end

  def show
    @comment_record = CommentRecord.new
    @comment_records = @record.comment_records
  end

  def destroy
    @record.destroy
    redirect_to records_path
  end

  def search
    @results = @q.result.order(date: "DESC")
  end

  private

  def record_params
    params.require(:record).permit(:date, :hour_id, :pair_id, :ashi_id, :kind_id,:line_main_id, :line_sub_id, :indi_main_id, :indi_sub_id, :entry_basis, :order_id, :price_renge, :result_section_id, :result_content, :image).merge(user_id: current_user.id)
  end
  
  def set_record
    @record = Record.find(params[:id])
  end

  def set_ad
    @ad_xm = Advertisement.find(1)
    @ad_titan = Advertisement.find(4)
    @ad_exness = Advertisement.find(5)
  end

  def move_to_index
    unless user_signed_in? && current_user.id == @record.user_id
      redirect_to action: :show
    end
  end

  def set_q
    @q = Record.ransack(params[:q])
  end

end
