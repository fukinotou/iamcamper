require 'spec_helper'

describe "courses/show.html.erb" do
  before(:each) do
    @course = assign(:course, stub_model(Course,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
