class TimeToWedding
  def initialize(event_datetime: e)
    @event_datetime = event_datetime
  end

  def get
    months = time_to_event.months
    weeks = time_to_event.weeks
    days = time_to_event.days
    p_m = time_percentage.months
    p_w = time_percentage.weeks
    p_d = time_percentage.days
    {
      months: {percent: p_m, value: months, name: 'months'},
      weeks: {percent: p_w, value: weeks, name: 'weeks'},
      days: {percent: p_d, value: days, name: 'days'},
    }
  end

  private
  attr_reader :event_datetime

  def time_to_event
    Services::TimeToEvent.new event_datetime, with_weeks
  end

  def time_percentage
    Services::TimePercentage.new remaining: time_to_event
  end

  def with_weeks
    TRUE
  end

end
