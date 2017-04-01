require 'rails_helper'

RSpec.describe "guests/show", type: :view do
  before(:each) do
    @guest = assign(:guest, Guest.create!(
      :name_person_one => "Name Person One",
      :name_person_two => "Name Person Two",
      :kids => 2,
      :attends => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name Person One/)
    expect(rendered).to match(/Name Person Two/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
  end
end
