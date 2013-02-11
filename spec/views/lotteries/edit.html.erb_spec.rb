require 'spec_helper'

describe "lotteries/edit" do
  before(:each) do
    @lottery = assign(:lottery, stub_model(Lottery,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit lottery form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lotteries_path(@lottery), :method => "post" do
      assert_select "input#lottery_title", :name => "lottery[title]"
      assert_select "textarea#lottery_description", :name => "lottery[description]"
    end
  end
end
