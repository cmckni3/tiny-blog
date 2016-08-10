module ApplicationHelper
  def format_date_time(object)
    object.strftime('%F @ %r %Z')
  end
end
