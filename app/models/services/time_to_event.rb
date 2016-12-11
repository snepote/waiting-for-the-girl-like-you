require 'time_diff'

module Services
  class TimeToEvent
    def initialize(event, with_weeks=FALSE)
      @diff = Time.diff(event, DateTime.now)
      @with_weeks = with_weeks
    end

    def days
      with_weeks ? diff[:day] : (diff[:day].to_i + weeks.to_i * 7)
    end

    def weeks
      diff[:week]
    end

    def months
      diff[:month]
    end

    def years
      diff[:year]
    end
    private
    attr_accessor :diff, :with_weeks
  end
end
