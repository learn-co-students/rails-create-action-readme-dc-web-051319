class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.title = "My post title"
    @post.description = "Some lil description thang"
    @post.save
    redirect_to post_path(@post)
  end
end
