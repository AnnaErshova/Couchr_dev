require 'rails_helper'

RSpec.describe "workouts/show", :type => :view do
  before(:each) do
    @workout = assign(:workout, Workout.create!(
      :name => "Name",
      :description => "Description",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/1/)
  end
end
