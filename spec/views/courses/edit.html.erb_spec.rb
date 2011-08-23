require 'spec_helper'

describe "courses/edit.html.erb" do
  before(:each) do
    @course = assign(:course, stub_model(Course,
      :name => "MyString"
    ))
  end

  it "renders the edit course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => courses_path(@course), :method => "post" do
      assert_select "input#course_name", :name => "course[name]"
    end
  end
end
