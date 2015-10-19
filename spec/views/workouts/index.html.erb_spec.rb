require 'rails_helper'

RSpec.describe "workouts/index", :type => :view do
  before(:each) do
    assign(:workouts, [
      Workout.create!(
        :name => "Name",
        :description => "Description",
        :user_id => 1
      ),
      Workout.create!(
        :name => "Name",
        :description => "Description",
        :user_id => 1
      )
    ])
  end

  it "renders a list of workouts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
