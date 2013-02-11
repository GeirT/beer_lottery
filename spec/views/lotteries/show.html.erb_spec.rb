require 'spec_helper'

describe "lotteries/show" do
  before(:each) do
    @lottery = assign(:lottery, stub_model(Lottery,
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
