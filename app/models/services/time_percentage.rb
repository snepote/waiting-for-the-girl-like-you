# frozen_string_literal: true

module Services
  # Calculates remaing time to an event in percentage
  class TimePercentage
    def initialize(remaining: r)
      @remaining = remaining
    end

    def days
      p remaining.days, 7
    end

    def weeks
      p remaining.weeks, 4
    end

    def months
      p remaining.months, 12
    end

    def to_s
      "#{remaining.months} months #{remaining.weeks} weeks \
#{remaining.days} days"
    end

    private

    attr_accessor :remaining

    def p(a, b)
      (a.to_f / b.to_f * 100).round
    end
  end
end
