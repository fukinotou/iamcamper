require 'spec_helper'

describe "campers/show.html.erb" do
  before(:each) do
    @camper = assign(:camper, stub_model(Camper,
      :name => "Name",
      :bio => "MyText",
      :year => 1,
      :course_id => 1,
      :twitter_id => 1,
      :twitter_token => "Twitter Token",
      :twitter_secret => "Twitter Secret",
      :file => "File",
      :invited_by => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Twitter Token/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Twitter Secret/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/File/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
