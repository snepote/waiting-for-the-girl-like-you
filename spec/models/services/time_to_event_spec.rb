require 'rails_helper'

RSpec.describe Services::TimeToEvent, :type => :model do
  subject{described_class.new DateTime.parse('2017-09-02 00:00:00')} # 5 days
  before do
    Timecop.freeze(DateTime.parse('2016-12-04 00:00:00'))
  end

  after do
    Timecop.return
  end

  describe '#days' do
    it { expect(subject.days).to eq 2 }
  end

  describe '#months' do
    it { expect(subject.months).to eq 9 }
  end

  describe '#years' do
    it { expect(subject.years).to eq 0 }
  end
end
