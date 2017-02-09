class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def show
    @posts = @blog.posts.decorate

    respond_to do |format|
      format.html
      format.json { render json: @blog }
    end
  end

  private

  def set_blog
    @blog = Blog.find_by(slug: params[:id]).decorate
  end

  def blog_params
    params.require(:blog).permit(:title, :user_id)
  end
end
