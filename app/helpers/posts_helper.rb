module PostsHelper
  def post_belongs_to_user(post)
    return false unless current_user.present?

    post.blog.user_id == current_user.id
  end
end
