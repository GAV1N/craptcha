require 'spec_helper'

describe "callers/show.html.haml" do
  before(:each) do
    @caller = assign(:caller, stub_model(Caller,
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Phone/)
  end
end
