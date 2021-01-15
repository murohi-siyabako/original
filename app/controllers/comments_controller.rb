class CommentsController < ApplicationController
  def index
    @comments = Comment.all.order(id: "DESC")
  end

  def create
    @comment = Comment.new(comment_params)
  end

  private

  def comment_params
    params.require(:comment).parmit(:text).merge(user_id: current_user.id)
  end
end
