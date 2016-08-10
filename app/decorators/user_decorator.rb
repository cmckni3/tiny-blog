class UserDecorator < Draper::Decorator
  delegate_all

  def full_name
    name = [object.first_name, object.last_name].compact.join ' '
    if name.length.zero?
      object.blog.slug
    else
      name
    end
  end
end
