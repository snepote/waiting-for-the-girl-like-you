# Application helper
module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = I18n.t('website.title')
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def couple_names
    "#{Rails.configuration.x.bride} #{I18n.t('and')} #{Rails.configuration.x.groom}"
  end

  def wedding_date
    I18n.l(Rails.configuration.x.wedding_date.to_date, format: :wedding)
  end
end
