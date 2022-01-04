class StaticPageController < ApplicationController
  def top
    @records = Record.includes(:user).order(date: "DESC").order(hour_id: "DESC").order("created_at DESC").limit(4)
    @posts = Post.includes(:user).where(status_id: 2).order("created_at DESC").limit(4)
  end

  def landingpage
  end

  def privacy
  end

  def disclaimer
  end
end
