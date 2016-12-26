require 'rails_helper'.freeze

RSpec.describe TimeToWedding, type: :model do
  before do
    Timecop.freeze(DateTime.parse('2016-12-11 00:00:00'))
  end

  after do
    Timecop.return
  end

  let(:subject) { described_class.new(event_datetime: event_datetime) }

  describe '#get' do
    context 'with months, weeks and days' do
      collection = {
        months: { percent: 67, value: 8, name: 'months' },
        weeks: { percent: 75, value: 3, name: 'weeks' },
        days: { percent: 57, value: 4, name: 'days' },
      }
      let(:event_datetime) { DateTime.parse '2017-09-02 00:00:00' }
      it { expect(subject.get).to eql collection }
    end

    context 'with just one month and no weeks or days' do
      collection = {
        months: { percent: 8, value: 1, name: 'month' },
      }
      let(:event_datetime) { DateTime.parse '2016-11-11 00:00:00' }
      it { expect(subject.get).to eql collection }
    end
  end
end
