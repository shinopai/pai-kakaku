module ApplicationHelper
  BASE_TITLE = "【価格.com】".freeze
  def full_title(page_title)
    if page_title.blank?
      BASE_TITLE
    else
      "#{BASE_TITLE} - #{page_title}"
    end
  end
end
