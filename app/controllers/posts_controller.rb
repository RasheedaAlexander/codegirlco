class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: "Your post was successfully saved"
    else
      render 'new', notice: "Unable to save your post"
    end
  end

  def update
    if @post.update post_params
      redirect_to @post, notice: "Your post was successfully updated"
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to @post
  end

  private

    def post_params
      params.require(:post).permit(:title, :img, :content, :slug)
    end

  def find_post
    @post = Post.friendly.find(params[:id])
  end
end
