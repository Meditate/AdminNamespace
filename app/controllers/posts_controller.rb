class PostsController < ApplicationController
before_action :find_posts, only: [:show, :update, :edit, :destroy]
  def index
    @posts=Post.all.order('created_at DESC')
  end

  def show

  end

  private
  def find_posts
    @post=Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :image, :content)
  end
end
