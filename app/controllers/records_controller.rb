class RecordsController < ApplicationController

  before_action :authenticate_user!, except: :index

  def index
    @records = Record.includes(:user).order("created_at DESC")
  end

  def new
    @record = Record.new
  end

  private

  def record_params
    params.require(:record).permit(:date, :hour_id, :pair_id, :ashi_id, :line_main_id, :line_sub_id, :indi_main_id, :indi_sub_id, :entry_basis, :method_id, :price_renge, :result_section_id, :result_content).merge(user_id: current_user.id)
  end
  
end
