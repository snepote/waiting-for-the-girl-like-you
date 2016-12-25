# frozen_string_literal: true
# Calculates time to event and returns a collection for a countdown
class TimeToWedding
  def initialize(event_datetime: e)
    @event_datetime = event_datetime
  end

  def get
    t_value = time_to_event
    t_per = time_percentage
    hash = {}
    %w[months weeks days].each do |time_unit|
      value = eval("t_value.#{time_unit}")
      unless value.to_i.zero?
        hash[:"#{time_unit}"] = {
          percent: eval("t_per.#{time_unit}"),
          value: value,
          name: (value == 1) ? ("#{time_unit}".singularize) : ("#{time_unit}")
        }
      end
    end
    hash
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
