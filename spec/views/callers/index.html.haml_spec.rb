require 'spec_helper'

describe "callers/index.html.haml" do
  before(:each) do
    assign(:callers, [
      stub_model(Caller,
        :phone => "Phone"
      ),
      stub_model(Caller,
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of callers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
