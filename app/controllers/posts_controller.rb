class PostsController < ApplicationController
  include PostsHelper

  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]
  before_action :current_user_can_modify_post, except: [:new, :create, :show]
  before_action :set_blog, except: [:show]

  def show
    respond_to do |format|
      format.html
      format.json { render json: @post }
    end
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.blog = @blog

    respond_to do |format|
      if @post.save
        format.html do
          redirect_to blog_post_path(@blog, @post), notice: 'Post was successfully created.'
        end
        format.json { render json: @post, status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html do
          redirect_to blog_post_path(@blog, @post), notice: 'Post was successfully updated.'
        end
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to blog_path(@blog) }
      format.json { head :no_content }
    end
  end

  private

  def set_post
    @post = Post.find(params[:id]).decorate
  end

  def set_blog
    @blog = current_user.blog
  end

  def current_user_can_modify_post
    unless post_belongs_to_user @post
      raise TinyBlog::AccessDenied
    end
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
