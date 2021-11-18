class StaticPageController < ApplicationController
  def top
    @records = Record.includes(:user).order("created_at DESC").limit(4)
  end

  def privacy
  end

  def disclaimer
  end
end
