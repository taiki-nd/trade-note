class RecordsController < ApplicationController

  before_action :authenticate_user!, except: :index
  before_action :set_record, only: [:edit, :update, :show, :destroy]

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
    
  end

  def update
    
    if @record.update(record_params)
      redirect_to action: :show
    else
      render action: :edit
    end
  end

  def show
    
  end

  def destroy
    @record.destroy
    redirect_to records_path
  end

  private

  def record_params
    params.require(:record).permit(:date, :hour_id, :pair_id, :ashi_id, :kind_id,:line_main_id, :line_sub_id, :indi_main_id, :indi_sub_id, :entry_basis, :order_id, :price_renge, :result_section_id, :result_content, :image).merge(user_id: current_user.id)
  end
  
  def set_record
    @record = Record.find(params[:id])
  end

end
