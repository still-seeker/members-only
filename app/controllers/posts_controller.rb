class PostsController < ApplicationController
  before_action :authenticate_member!, only: [ :new, :create ]

  def new
    @post = current_member.posts.new
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
  end
end
