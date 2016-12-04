class StaticPagesController < ApplicationController
  def home
    @time_to_wedding = {
      month: {percent: 10, value: 10, name: => 'months'}
    }
      # ['percent' => 10, 'value' => 10, 'name' => 'months']
    # ]
    # Services::TimeToEvent(DateTime.parse('2017-09-02')
  end

  def parallax
  end

  def about
  end

end
