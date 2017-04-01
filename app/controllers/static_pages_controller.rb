# All top level static pages goes here
class StaticPagesController < ApplicationController
  include ApplicationHelper
  def home
    @time_to_wedding = TimeToWedding.new(
      event_datetime: Rails.configuration.x.wedding_date
    ).get
  end
end
