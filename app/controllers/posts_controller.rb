class PostsController < ApplicationController
  before_action :authenticate_member!, only: [ :new, :create ]

  def new
    @post = Post.new
  end

  def create
    @post = current_member.posts.build(post_params)

    if @post.save
      redirect_to posts_path, notice: "Post was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  private
    def post_params
      params.expect(post: [ :title, :content ])
    end
end
