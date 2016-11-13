require 'rails_helper'

class TimeToEvent
  attr_accessor :name
end

RSpec.describe TimeToEvent, :type => :model do
  subject { described_class.new }
  before do
    Timecop.freeze('2016-01-01 00:00:00')
  end

  after do
    Timecop.return
  end  

  it "is valid with valid attributes" do
    subject.name = 'Anything'
    expect(subject.name).to eq 'Anything'
  end
end
