module ApplicationHelper

  def page_title(title)
    content_for :page_title, title
  end

  def page_title_for_header
    if content_for?(:page_title)
      strip_tags "#{content_for(:page_title)} &ndash; PFL"
    else
      'PFL'
    end
  end

  def flash_type_for(flash_type)
    case flash_type.to_sym
      when :alert
        "error"
      when :notice
        "success"
      else
        flash_type.to_s
    end
  end

end
