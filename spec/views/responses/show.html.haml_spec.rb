require 'spec_helper'

describe "responses/show.html.haml" do
  before(:each) do
    @response = assign(:response, stub_model(Response,
      :posting_id => 1,
      :caller_id => 1,
      :ip => "Ip",
      :pin => "Pin",
      :twilio_sid => "Twilio Sid"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ip/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pin/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Twilio Sid/)
  end
end
