require 'rails_helper'

RSpec.describe "workouts/new", :type => :view do
  before(:each) do
    assign(:workout, Workout.new(
      :name => "MyString",
      :description => "MyString",
      :user_id => 1
    ))
  end

  it "renders new workout form" do
    render

    assert_select "form[action=?][method=?]", workouts_path, "post" do

      assert_select "input#workout_name[name=?]", "workout[name]"

      assert_select "input#workout_description[name=?]", "workout[description]"

      assert_select "input#workout_user_id[name=?]", "workout[user_id]"
    end
  end
end
