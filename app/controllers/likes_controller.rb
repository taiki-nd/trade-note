class LikesController < ApplicationController

  def create
    @like = Like.new

    respond_to do |format|
      if @like.save
        format.html { redirect_to :back, notice: 'NiceTrade!' }
        format.json { render json: {status: 'success', like: @like, counts: Like.where(post_id: @like.post_id).count, liked: true} }
      else
        format.html { render :new }
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end
  end

end
