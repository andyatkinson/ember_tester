class Api::V1::PostsController < ApplicationController
  respond_to :json

  def index
    respond_with Post.all
  end

  def show 
    respond_with Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
