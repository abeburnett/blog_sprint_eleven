class PostsController < ApplicationController

  def new
  end

  def create
    @post = Post.new(params[:post].permit(:title, :text))
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def update
    @post = Post.find(params[:id])
    @post.update(params[:post].permit(:title, :text))
    redirect_to @post
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end


end
