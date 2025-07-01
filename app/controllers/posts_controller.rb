class PostsController < ApplicationController
  before_action :authenticate_member!, only: [ :new, :create ]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.author_id = current_member.id

    if @post.save
      redirect_to posts_path, notice: "Post was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @posts = Post.all
  end

  private
    def post_params
      params.expect(post: [ :title, :content, :author_id ])
    end
end
