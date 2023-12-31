class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end
  def edit
    @post = Post.find(params[:id])
  end
  def update
    @post = Post.find(params[:id])
    post_params = params.require(:post).permit(:name, :content)
    @post.update(post_params)
    redirect_to post_path(@post.id)
  end
end
