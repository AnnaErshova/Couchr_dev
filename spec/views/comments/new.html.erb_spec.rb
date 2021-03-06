require 'rails_helper'

RSpec.describe "comments/new", :type => :view do
  before(:each) do
    assign(:comment, Comment.new(
      :body => "MyString",
      :author => "MyString",
      :workout => nil
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input#comment_body[name=?]", "comment[body]"

      assert_select "input#comment_author[name=?]", "comment[author]"

      assert_select "input#comment_workout_id[name=?]", "comment[workout_id]"
    end
  end
end
