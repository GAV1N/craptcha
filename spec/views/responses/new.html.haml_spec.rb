require 'spec_helper'

describe "responses/new.html.haml" do
  before(:each) do
    assign(:response, stub_model(Response,
      :posting_id => 1,
      :caller_id => 1,
      :ip => "MyString",
      :pin => "MyString",
      :twilio_sid => "MyString"
    ).as_new_record)
  end

  it "renders new response form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => responses_path, :method => "post" do
      assert_select "input#response_posting_id", :name => "response[posting_id]"
      assert_select "input#response_caller_id", :name => "response[caller_id]"
      assert_select "input#response_ip", :name => "response[ip]"
      assert_select "input#response_pin", :name => "response[pin]"
      assert_select "input#response_twilio_sid", :name => "response[twilio_sid]"
    end
  end
end
