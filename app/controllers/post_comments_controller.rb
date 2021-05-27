class PostCommentsController < ApplicationController
  def create
    reflection = Reflection.find(params[:reflection_id])
    comment = current_user.post_comments.new(post_comment_params)
    comment.reflection_id = reflection.id
    comment.save
    redirect_to reflection_path(reflection)
  end

  def destroy
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
end
