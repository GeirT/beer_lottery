require 'spec_helper'

describe "prizes/new" do
  before(:each) do
    assign(:prize, stub_model(Prize,
      :name => "MyString",
      :description => "MyText",
      :lottery => nil
    ).as_new_record)
  end

  it "renders new prize form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => prizes_path, :method => "post" do
      assert_select "input#prize_name", :name => "prize[name]"
      assert_select "textarea#prize_description", :name => "prize[description]"
      assert_select "input#prize_lottery", :name => "prize[lottery]"
    end
  end
end
