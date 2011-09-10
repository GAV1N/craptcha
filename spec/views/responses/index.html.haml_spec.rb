require 'spec_helper'

describe "responses/index.html.haml" do
  before(:each) do
    assign(:responses, [
      stub_model(Response,
        :posting_id => 1,
        :caller_id => 1,
        :ip => "Ip",
        :pin => "Pin",
        :twilio_sid => "Twilio Sid"
      ),
      stub_model(Response,
        :posting_id => 1,
        :caller_id => 1,
        :ip => "Ip",
        :pin => "Pin",
        :twilio_sid => "Twilio Sid"
      )
    ])
  end

  it "renders a list of responses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ip".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pin".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Twilio Sid".to_s, :count => 2
  end
end
