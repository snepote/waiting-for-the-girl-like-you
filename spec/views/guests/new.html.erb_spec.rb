require 'rails_helper'

RSpec.describe "guests/new", type: :view do
  before(:each) do
    assign(:guest, Guest.new(
      :name_person_one => "MyString",
      :name_person_two => "MyString",
      :kids => 1,
      :attends => false
    ))
  end

  it "renders new guest form" do
    render

    assert_select "form[action=?][method=?]", guests_path, "post" do

      assert_select "input#guest_name_person_one[name=?]", "guest[name_person_one]"

      assert_select "input#guest_name_person_two[name=?]", "guest[name_person_two]"

      assert_select "input#guest_kids[name=?]", "guest[kids]"

      assert_select "input#guest_attends[name=?]", "guest[attends]"
    end
  end
end
