class PostsController < ApplicationController

  before_action :authenticate_user!

  def index
    @posts = Post.all
  end

  def new

  end

  def create
    post = Post.new(
      title: params[:title],
      text: params[:text],
      user_id: current_user.id
      )
    if post.save
      redirect_to '/posts/#{post.id}'
    else
      redirect_to '/posts/new'
    end
  end

  def show
    post = Post.find_by(id: params[:id])
  end

end
