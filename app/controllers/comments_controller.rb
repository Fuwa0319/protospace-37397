class CommentsController < ApplicationController
  
  def create
    comment = Comment.create(comment_params)
    if comment.valid?
      redirect_to prototype_path(comment.prototype_id)
    else
      render :show
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end

end