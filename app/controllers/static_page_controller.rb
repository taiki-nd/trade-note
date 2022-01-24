class StaticPageController < ApplicationController

  before_action :set_records, only: [:top, :landingpage]

  def top
    @posts = Post.includes(:user).where(status_id: 2).order("created_at DESC").limit(4)
  end

  def landingpage
  end

  def privacy
  end

  def disclaimer
  end

  private

  def set_records
    @records = Record.includes(:user).order(date: "DESC").order(hour_id: "DESC").order("created_at DESC").limit(4)
  end

end
