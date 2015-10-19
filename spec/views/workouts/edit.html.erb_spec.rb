require 'rails_helper'

RSpec.describe "workouts/edit", :type => :view do
  before(:each) do
    @workout = assign(:workout, Workout.create!(
      :name => "MyString",
      :description => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit workout form" do
    render

    assert_select "form[action=?][method=?]", workout_path(@workout), "post" do

      assert_select "input#workout_name[name=?]", "workout[name]"

      assert_select "input#workout_description[name=?]", "workout[description]"

      assert_select "input#workout_user_id[name=?]", "workout[user_id]"
    end
  end
end
