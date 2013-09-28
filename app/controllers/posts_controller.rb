class PostsController < ApplicationController
  def new
  end
  
  def create
    @post = Post.new(post_params)
    
    @post.save
    redirect_to @post
  end
  
  # security enforcement
  private
  def post_params
    params.require(:post).permit(:title, :text)
  end
end
