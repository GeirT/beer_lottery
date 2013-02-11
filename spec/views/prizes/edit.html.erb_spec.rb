require 'spec_helper'

describe "prizes/edit" do
  before(:each) do
    @prize = assign(:prize, stub_model(Prize,
      :name => "MyString",
      :description => "MyText",
      :lottery => nil
    ))
  end

  it "renders the edit prize form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => prizes_path(@prize), :method => "post" do
      assert_select "input#prize_name", :name => "prize[name]"
      assert_select "textarea#prize_description", :name => "prize[description]"
      assert_select "input#prize_lottery", :name => "prize[lottery]"
    end
  end
end
