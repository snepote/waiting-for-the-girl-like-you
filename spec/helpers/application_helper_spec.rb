require 'rails_helper'.freeze

RSpec.describe ApplicationHelper do
  subject { Object.new.extend(ApplicationHelper) }
  let(:base_title) { 'Waiting for a girl like you' }
  it 'returns a sample title with the website base title' do
    title = "sample title | #{base_title}"
    expect(subject.full_title('sample title')).to eq title
  end

  it 'returns the website base title only' do
    expect(subject.full_title).to eq base_title
  end
end
