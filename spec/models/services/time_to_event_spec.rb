require 'rails_helper'

RSpec.describe Services::TimeToEvent, :type => :model do
  let!(:timecop) { Timecop.freeze frozen_now }
  let!(:subject) { described_class.new event_datetime }

  after do
    Timecop.return
  end

  context '1 year 2 months and 6 days' do
    let(:frozen_now) { DateTime.parse '2015-10-01 00:00:00' }
    let(:event_datetime) { DateTime.parse '2016-12-06 00:00:00' }
    it { expect(subject.years).to eq 1 }
    it { expect(subject.months).to eq 2 }
    it { expect(subject.days).to eq 6 }
  end

  context 'in a leap year' do
    let(:frozen_now) { DateTime.parse '2016-02-28 00:00:00' }
    let(:event_datetime) { DateTime.parse '2016-03-01 00:00:00' }
    it { expect(subject.days).to eq 2 }
  end

  context 'in a regular year' do
    let(:frozen_now) { DateTime.parse '2015-02-28 00:00:00' }
    let(:event_datetime) { DateTime.parse '2015-03-01 00:00:00' }
    it { expect(subject.days).to eq 1 }
  end

  context 'in an arbitrary date' do
    let(:frozen_now)     { DateTime.parse '2016-12-01 00:00:00' }
    let(:event_datetime) { DateTime.parse '2016-12-10 00:00:00' }
    it { expect(subject.days).to eq 9 }
    it { expect(subject.weeks).to eq 1 }
  end
end
