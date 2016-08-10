module ApplicationHelper
  def format_date_time(object)
    object.strftime('%F @ %r %Z')
  end

  def title(page_title)
    content_for(:title) { page_title }
  end
end
