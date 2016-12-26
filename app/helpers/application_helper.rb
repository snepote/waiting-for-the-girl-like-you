# Application helper
module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = t 'website.title'
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def couple_names
    Rails.configuration.x.couple_names
  end

  def wedding_date
    Rails.configuration.x.wedding_date.strftime('%A, %d.%B.%G')
  end
end
