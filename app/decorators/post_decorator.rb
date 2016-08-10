class PostDecorator < Draper::Decorator
  delegate_all

  def created_at_in_user_timezone
    return h.format_date_time object.created_at unless h.current_user

    h.format_date_time object.created_at.in_time_zone(h.current_user.time_zone)
  end

  def updated_at_in_user_timezone
    return unless object.modified?
    return h.format_date_time object.updated_at unless h.current_user

    h.format_date_time object.updated_at.in_time_zone(h.current_user.time_zone)
  end

  def content_html
    Redcarpet::Markdown
      .new(Redcarpet::Render::HTML).render(object.content)
      .html_safe
  end
end
