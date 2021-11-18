class RecordsController < ApplicationController

  before_action :authenticate_user!, except: :index

  def index
    @records = Record.includes(:user).order("created_at DESC")
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    if @record.save
      redirect_to records_path
    else
      render :new
    end
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])
    if @record.update(record_params)
      redirect_to action: :show
    else
      render action: :edit
    end
  end

  def show
    @record = Record.find(params[:id])
  end

  private

  def record_params
    params.require(:record).permit(:date, :hour_id, :pair_id, :ashi_id, :kind_id,:line_main_id, :line_sub_id, :indi_main_id, :indi_sub_id, :entry_basis, :order_id, :price_renge, :result_section_id, :result_content, :image).merge(user_id: current_user.id)
  end

end
