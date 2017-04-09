require 'rails_helper'

feature 'Homepage feature' do
  pending 'is temporarily disabled: not working on travis-ci'
  # scenario 'As a user I want to see "Hause" in the homepage', type: :feature, js: true do
  #   visit '/'
  #   expect(page).to have_content('Hause')
  # end

  pending 'is temporarily disabled until I can setup webkit locally'
  # scenario 'As a user I want to see the homepage using Chrome',
  #   type: :feature, js: true, driver: :webkit do
  #     visit '/'
  #     expect(page).to have_content('Hause')
  # end
end
