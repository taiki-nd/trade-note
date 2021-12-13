class PostsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: %i[ show edit update destroy ]
  before_action :set_ad, only: [:create, :update]
  before_action :move_to_index, only: [:edit, :update, :destroy]

  # GET /posts or /posts.json
  def index
    @posts = Post.includes(:user).where(status_id: 2).order("created_at DESC").page(params[:page]).per(12)
  end

  # GET /posts/1 or /posts/1.json
  def show
    @comment_post = CommentPost.new
    @comment_posts = @post.comment_posts
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)
    unless @post.save
      render :new
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    unless @post.update(post_params)
      render action: :edit
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def attach
    attachment = Attachment.create! image: params[:image]
    render json: { filename: url_for(attachment.image) }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    def set_ad
      @ad_xm = Advertisement.find(1)
      @ad_titan = Advertisement.find(4)
      @ad_exness = Advertisement.find(5)
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:content, :title, :category_id, :keyword1, :keyword2, :keyword3, :description).merge(user_id: current_user.id)
    end

    def move_to_index
      unless user_signed_in? && current_user.id == @post.user_id
        redirect_to action: :show
      end
    end

end
