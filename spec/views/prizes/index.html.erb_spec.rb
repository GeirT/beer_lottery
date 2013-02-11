require 'spec_helper'

describe "prizes/index" do
  before(:each) do
    assign(:prizes, [
      stub_model(Prize,
        :name => "Name",
        :description => "MyText",
        :lottery => nil
      ),
      stub_model(Prize,
        :name => "Name",
        :description => "MyText",
        :lottery => nil
      )
    ])
  end

  it "renders a list of prizes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
