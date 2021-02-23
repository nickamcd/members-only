class PostsController < ApplicationController

  before_action :authenticate_user!, except: [:index]

  def new
    @post = current_user.posts.build
  end

  def create

  end

  def index
  
  end

end
