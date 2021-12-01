class CommentPostsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment_posts = @post.comment_posts.build(comment_post_params)
    if @comment_posts.save
      render :index
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comment_posts.find(params[:id])
    @comment.destroy
    render :destroy
  end

  private

  def comment_post_params
    params.require(:comment_post).permit(:comment).merge(post_id: params[:post_id], user_id: current_user.id)
  end

end
