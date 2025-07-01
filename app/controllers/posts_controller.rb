class PostsController < ApplicationController
  before_action :authenticate_member!, only: [ :new, :create ]

  def new
    @post = Post.new
  end

  def create
    @post = current_member.posts.new
    if @post.save
      redirect_to index_path
    else
      render "new"
    end
  end

  def index
    @posts = Post.all
  end
end
