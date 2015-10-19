require 'rails_helper'

RSpec.describe "races/new", :type => :view do
  before(:each) do
    assign(:race, Race.new(
      :name => "MyString",
      :latitude => 1.5,
      :longitude => 1.5,
      :length => "MyString",
      :user_id => 1
    ))
  end

  it "renders new race form" do
    render

    assert_select "form[action=?][method=?]", races_path, "post" do

      assert_select "input#race_name[name=?]", "race[name]"

      assert_select "input#race_latitude[name=?]", "race[latitude]"

      assert_select "input#race_longitude[name=?]", "race[longitude]"

      assert_select "input#race_length[name=?]", "race[length]"

      assert_select "input#race_user_id[name=?]", "race[user_id]"
    end
  end
end
