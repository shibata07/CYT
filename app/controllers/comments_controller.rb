class CommentsController < ApplicationController

  before_action :authenticate_user!

  def create
  	@training = Training.find(params[:training_id])
    @comment = @training.comments.build(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    render :index
  end

  def destroy
  	@comment = Comment.find(params[:id])
    if @comment.destroy
      render :index
    end

  end

  private
  	def comment_params
  		params.require(:comment).permit(:content, :training_id, :user_id)
  	end
end
