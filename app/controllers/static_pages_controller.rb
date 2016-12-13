# All top level static pages goes here
class StaticPagesController < ApplicationController
  def home
    @time_to_wedding = TimeToWedding.new(
      event_datetime: DateTime.parse('2017-09-02 00:00:00')
    ).get
  end

  def parallax
  end

  def about
  end
end
