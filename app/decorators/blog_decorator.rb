class BlogDecorator < Draper::Decorator
  delegate_all

  def author_information
    object.user.decorate.full_name
  end
end
