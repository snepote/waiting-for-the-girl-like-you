require 'time_diff'

module Services
  class TimeToEvent
    def initialize(event=DateTime.new)
      @event = event
      @now = DateTime.now
      @diff = Time.diff(@event, @now)
    end

    def days
      @diff[:day]
    end

    def months
      @diff[:month]
    end

    def years
      @diff[:year]
    end
  end
end
