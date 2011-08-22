require 'spec_helper'

describe "campers/index.html.erb" do
  before(:each) do
    assign(:campers, [
      stub_model(Camper,
        :name => "Name",
        :bio => "MyText",
        :year => 1,
        :course_id => 1,
        :twitter_id => 1,
        :twitter_token => "Twitter Token",
        :twitter_secret => "Twitter Secret",
        :file => "File",
        :invited_by => 1
      ),
      stub_model(Camper,
        :name => "Name",
        :bio => "MyText",
        :year => 1,
        :course_id => 1,
        :twitter_id => 1,
        :twitter_token => "Twitter Token",
        :twitter_secret => "Twitter Secret",
        :file => "File",
        :invited_by => 1
      )
    ])
  end

  it "renders a list of campers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Twitter Token".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Twitter Secret".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "File".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
