require 'rails_helper'

RSpec.describe "guests/index", type: :view do
  before(:each) do
    assign(:guests, [
      Guest.create!(
        :name_person_one => "Name Person One",
        :name_person_two => "Name Person Two",
        :kids => 2,
        :attends => false
      ),
      Guest.create!(
        :name_person_one => "Name Person One",
        :name_person_two => "Name Person Two",
        :kids => 2,
        :attends => false
      )
    ])
  end

  it "renders a list of guests" do
    render
    assert_select "tr>td", :text => "Name Person One".to_s, :count => 2
    assert_select "tr>td", :text => "Name Person Two".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
