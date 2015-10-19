require 'rails_helper'

RSpec.describe "races/show", :type => :view do
  before(:each) do
    @race = assign(:race, Race.create!(
      :name => "Name",
      :latitude => 1.5,
      :longitude => 1.5,
      :length => "Length",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Length/)
    expect(rendered).to match(/1/)
  end
end
