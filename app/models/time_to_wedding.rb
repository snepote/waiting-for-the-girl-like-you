class TimeToWedding
  def initialize(event_datetime: e)
    @event_datetime = event_datetime
  end

  def get
    t_value = time_to_event
    t_per = time_percentage
    {
      months: { percent: t_per.months, value: t_value.months, name: 'months' },
      weeks: { percent: t_per.weeks, value: t_value.weeks, name: 'weeks' },
      days: { percent: t_per.days, value: t_value.days, name: 'days' },
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
