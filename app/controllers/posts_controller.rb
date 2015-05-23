class PostsController < ApplicationController
before_action :find_posts, only: [:show, :update, :edit, :destroy, :upvote, :downvote]
  def index
    @posts=Post.all.order('created_at DESC')
  end

  def show
    @comments=Comment.where(post_id: @post)
  end

  def upvote
    @post.upvote_by current_user
    redirect_to :back
  end

  def downvote
    @post.downvote_by current_user
    redirect_to :back
  end

  private
  def find_posts
    @post=Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :image, :content)
  end
end
