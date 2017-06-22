class PostsController < ApplicationController
  def index
  end

  def create
    Post.create(params.require(:post).permit!)
    redirect_to root_url
  end
end
