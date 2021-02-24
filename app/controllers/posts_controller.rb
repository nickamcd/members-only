class PostsController < ApplicationController

  before_action :authenticate_user!, except: [:index]

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to "/"
    else
      render :new
    end
  end

  def index
    @posts = Post.all.order("created_at DESC")
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :title, :body)
  end

end
