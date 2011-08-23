require 'spec_helper'

describe "courses/index.html.erb" do
  before(:each) do
    assign(:courses, [
      stub_model(Course,
        :name => "Name"
      ),
      stub_model(Course,
        :name => "Name"
      )
    ])
  end

  it "renders a list of courses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
