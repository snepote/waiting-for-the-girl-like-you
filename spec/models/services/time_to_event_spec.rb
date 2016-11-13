require 'rails_helper'

class TimeToEvent

  def initialize( event=DateTime.new )
    @event = event
    @now = DateTime.now
  end

  def days
    (@event.mjd - @now.mjd).to_i
  end
end

RSpec.describe TimeToEvent, :type => :model do
  subject { described_class.new DateTime.parse('2016-01-06 00:00:00') } # 5 days
  before do
    Timecop.freeze(DateTime.parse('2016-01-01 00:00:00'))
  end

  after do
    Timecop.return
  end

  it "is valid with valid attributes" do
    expect(subject.days).to eq 5
  end
end
