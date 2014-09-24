class CommentsController < ApplicationController

  def new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:commenter, :body))
    redirect_to @post
  end

end
