class AdvertisementsController < ApplicationController

  before_action :if_not_admin

  def index
    @ads = Advertisement.all
  end

  def new
    @ad = Advertisement.new
  end

  def create
    @ad = Advertisement.create(ad_params)
    redirect_to advertisements_path
  end

  def edit
    @ad = Advertisement.find(params[:id])
  end

  def update
    @ad = Advertisement.find(params[:id])
    if @ad.update(ad_params)
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def destroy
    @ad = Advertisement.find(params[:id])
    @ad.destroy
    redirect_to advertisements_path
  end

  private

  def ad_params
    params.require(:advertisement).permit(:img_url, :af_link, :rate_id, :company_id, :content)
  end

  def if_not_admin
    unless user_signed_in? && current_user.admin?
      redirect_to root_path
    end
  end

end
