require 'spec_helper'

describe "callers/new.html.haml" do
  before(:each) do
    assign(:caller, stub_model(Caller,
      :phone => "MyString"
    ).as_new_record)
  end

  it "renders new caller form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => callers_path, :method => "post" do
      assert_select "input#caller_phone", :name => "caller[phone]"
    end
  end
end
