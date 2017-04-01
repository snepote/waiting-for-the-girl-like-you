require 'rails_helper'

feature 'Homepage' do
  pending 'temporarily disabled: not working on travis-ci'
  scenario 'As a user I want to see "Hause" in the homepage', type: :feature, js: true do
    visit '/'
    expect(page).to have_content('Hause')
  end
end
