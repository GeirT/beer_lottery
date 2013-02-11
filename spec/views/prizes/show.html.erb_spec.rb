require 'spec_helper'

describe "prizes/show" do
  before(:each) do
    @prize = assign(:prize, stub_model(Prize,
      :name => "Name",
      :description => "MyText",
      :lottery => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(//)
  end
end
