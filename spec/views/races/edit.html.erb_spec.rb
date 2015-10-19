require 'rails_helper'

RSpec.describe "races/edit", :type => :view do
  before(:each) do
    @race = assign(:race, Race.create!(
      :name => "MyString",
      :latitude => 1.5,
      :longitude => 1.5,
      :length => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit race form" do
    render

    assert_select "form[action=?][method=?]", race_path(@race), "post" do

      assert_select "input#race_name[name=?]", "race[name]"

      assert_select "input#race_latitude[name=?]", "race[latitude]"

      assert_select "input#race_longitude[name=?]", "race[longitude]"

      assert_select "input#race_length[name=?]", "race[length]"

      assert_select "input#race_user_id[name=?]", "race[user_id]"
    end
  end
end
