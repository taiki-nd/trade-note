class StaticPageController < ApplicationController
  def top
    @records = Record.includes(:user).order(date: "DESC").limit(4)
  end

  def privacy
  end

  def disclaimer
  end
end
