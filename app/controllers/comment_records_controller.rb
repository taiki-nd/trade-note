class CommentRecordsController < ApplicationController

  def create
    @record = Record.find(params[:record_id])
    @comment_records = @record.comment_records.build(comment_record_params)
    if @comment_records.save
      render :index
    end
  end

  def destroy
    @record = Record.find(params[:record_id])
    @comment = @record.comment_records.find(params[:id])
    @comment.destroy
    render :destroy
  end

  private

  def comment_record_params
    params.require(:comment_record).permit(:comment).merge(record_id: params[:record_id], user_id: current_user.id)
  end

end
