require 'rails_helper'.freeze

RSpec.describe Services::TimePercentage, type: :model do
  before do
    Timecop.freeze(DateTime.parse('2016-12-11 00:00:00'))
  end

  after do
    Timecop.return
  end

  let(:subject) { described_class.new(remaining: remaining) }

  context '8 months, 3 weeks, 4 days' do
    with_weeks = TRUE
    let(:remaining) {
      Services::TimeToEvent.new DateTime.parse('2017-09-02 00:00:00'), with_weeks
    }
    it { expect(subject.months).to eq 67 }
    it { expect(subject.weeks).to eq 75 }
    it { expect(subject.days).to eq 57 }
    it { expect(subject.to_s).to eq "8 months 3 weeks 4 days"}
  end
end
