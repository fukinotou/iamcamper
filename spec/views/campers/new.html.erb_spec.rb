require 'spec_helper'

describe "campers/new.html.erb" do
  before(:each) do
    assign(:camper, stub_model(Camper,
      :name => "MyString",
      :bio => "MyText",
      :year => 1,
      :course_id => 1,
      :twitter_id => 1,
      :twitter_token => "MyString",
      :twitter_secret => "MyString",
      :file => "MyString",
      :invited_by => 1
    ).as_new_record)
  end

  it "renders new camper form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => campers_path, :method => "post" do
      assert_select "input#camper_name", :name => "camper[name]"
      assert_select "textarea#camper_bio", :name => "camper[bio]"
      assert_select "input#camper_year", :name => "camper[year]"
      assert_select "input#camper_course_id", :name => "camper[course_id]"
      assert_select "input#camper_twitter_id", :name => "camper[twitter_id]"
      assert_select "input#camper_twitter_token", :name => "camper[twitter_token]"
      assert_select "input#camper_twitter_secret", :name => "camper[twitter_secret]"
      assert_select "input#camper_file", :name => "camper[file]"
      assert_select "input#camper_invited_by", :name => "camper[invited_by]"
    end
  end
end
